"""
用户消息查询系统 - Flask后端
提供用户搜索和消息查询API，支持按时间范围筛选、对话分组展示
"""
from flask import Flask, jsonify, request, send_file
import psycopg2
import psycopg2.extras
from datetime import datetime, timedelta
import os
import sys
import json
import time
import requests

app = Flask(__name__)

# Coze API 配置
COZE_API_ENDPOINT = os.getenv('COZE_API_ENDPOINT', 'https://api.coze.cn/v3/chat')
COZE_TOKEN = os.getenv('COZE_TOKEN', 'pat_s48QEakmtUKzi9C54JfycMcSTeke1lcwrUAzvhI4Igb3W3ikMvnDoWg9TYDJyLQ4')
COZE_BOT_ID = os.getenv('COZE_BOT_ID', '7588778847907119144')

print(f"Coze API配置: URL={COZE_API_ENDPOINT}, Bot ID={COZE_BOT_ID}", file=sys.stderr)

# PostgreSQL连接配置（阿里云生产环境）
DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'database': os.getenv('DB_NAME', 'wechat_db'),
    'user': os.getenv('DB_USER', 'postgres'),
    'password': os.getenv('DB_PASSWORD', 'doit123'),
    'port': os.getenv('DB_PORT', '5432')
}

def get_db_connection():
    """获取PostgreSQL数据库连接"""
    return psycopg2.connect(**DB_CONFIG)

@app.route('/api/search-users', methods=['GET'])
def search_users():
    """
    搜索用户API
    查询参数:
      - name: 用户姓名（必填，支持模糊匹配）
      - role: 角色过滤 ('parent', 'teacher', 可选)
    返回格式:
      {
        "status": "success",
        "count": 2,
        "users": [
          {
            "original_id": "wmqDzZEw...",
            "display_name": "张三",
            "user_role": "parent",
            "id_prefix": "wmqDzZEw"
          }
        ]
      }
    """
    name = request.args.get('name', '').strip()
    role = request.args.get('role', '').strip()

    if not name:
        return jsonify({'status': 'error', 'message': '请输入用户姓名'}), 400

    if len(name) < 1:
        return jsonify({'status': 'error', 'message': '请输入至少1个字符'}), 400

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 构建SQL查询
        query = """
SELECT
    original_id,
    display_name,
    user_role,
    SUBSTRING(original_id, 1, 8) as id_prefix,
    student_name,
    student_english_name,
    student_class_room_id
FROM wecom_id_mappings
WHERE id_type = 'user_id'
  AND display_name IS NOT NULL
  AND (display_name ILIKE %s OR student_name ILIKE %s)
"""
        params = [f'%{name}%', f'%{name}%']

        # 如果指定了角色，添加角色过滤
        if role in ['parent', 'teacher']:
            query += " AND user_role = %s"
            params.append(role)

        query += " ORDER BY display_name, original_id LIMIT 50"

        cur.execute(query, params)
        results = cur.fetchall()

        cur.close()
        conn.close()

        return jsonify({
            'status': 'success',
            'count': len(results),
            'users': [dict(row) for row in results]
        })

    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/api/user-messages', methods=['GET'])
def get_user_messages():
    """
    获取用户消息API（按对话分组）
    查询参数:
      - user_id: 企业微信ID（必填）
      - start_time: 开始时间 ISO格式（可选，默认30天前）
      - end_time: 结束时间 ISO格式（可选，默认当前时间）
    返回格式:
      {
        "status": "success",
        "user_id": "wmqDzZEw...",
        "start_time": "2025-11-27T15:30:00",
        "end_time": "2025-12-27T15:30:00",
        "conversation_count": 5,
        "conversations": [
          {
            "conversation_key": "wrqDzZEw...",
            "conversation_type": "group",
            "conversation_name": "锦鲤99班",
            "message_count": 25,
            "first_message_time": "2025-12-01T09:00:00",
            "last_message_time": "2025-12-27T18:30:15",
            "messages": [...]
          }
        ]
      }
    """
    user_id = request.args.get('user_id', '').strip()

    if not user_id:
        return jsonify({'status': 'error', 'message': '缺少user_id参数'}), 400

    # 解析时间参数
    try:
        end_time = request.args.get('end_time')
        if end_time:
            end_dt = datetime.fromisoformat(end_time.replace('Z', '+00:00'))
        else:
            end_dt = datetime.now()

        start_time = request.args.get('start_time')
        if start_time:
            start_dt = datetime.fromisoformat(start_time.replace('Z', '+00:00'))
        else:
            start_dt = end_dt - timedelta(days=30)

        # 限制查询范围不超过90天
        if (end_dt - start_dt).days > 90:
            return jsonify({
                'status': 'error',
                'message': '查询时间范围不能超过90天'
            }), 400

    except ValueError as e:
        return jsonify({'status': 'error', 'message': f'时间格式错误: {str(e)}'}), 400

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 执行复杂的4步CTE查询（支持私聊双向消息）
        query = """
            WITH user_messages AS (
                -- 步骤1: 获取用户在时间范围内的所有消息
                SELECT
                    msgid,
                    msgtime,
                    msgtype,
                    from_user_id,
                    roomid,
                    tolist,
                    content_payload,
                    raw_data
                FROM wecom_chat_logs
                WHERE (
                    -- 群聊：只查询用户发送的消息
                    (roomid IS NOT NULL AND roomid <> '' AND from_user_id = %s)
                    OR
                    -- 私聊：查询双向消息（发送 + 接收）
                    (
                        (roomid IS NULL OR roomid = '')
                        AND (
                            from_user_id = %s OR tolist[1] = %s
                        )
                    )
                )
                AND msgtime >= %s
                AND msgtime <= %s
            ),
            grouped_messages AS (
                -- 步骤2: 按对话分组（群聊用roomid，私聊用tolist[1]）
                SELECT
                    msgid,
                    msgtime AT TIME ZONE 'Asia/Shanghai' as msgtime_local,
                    msgtype,
                    from_user_id,
                    CASE
                        WHEN roomid IS NOT NULL AND roomid <> ''
                        THEN roomid
                        ELSE 'private:' || COALESCE(
                            CASE
                                WHEN from_user_id = %s THEN tolist[1]
                                ELSE from_user_id
                            END,
                            'unknown'
                        )
                    END as conversation_key,
                    CASE
                        WHEN roomid IS NOT NULL AND roomid <> ''
                        THEN 'group'
                        ELSE 'private'
                    END as conversation_type,
                    CASE
                        WHEN from_user_id = %s THEN 'sent'
                        ELSE 'received'
                    END as message_direction,
                    content_payload
                FROM user_messages
            ),
            conversations AS (
                -- 步骤3: 聚合对话统计信息并映射名称
                SELECT DISTINCT
                    gm.conversation_key,
                    gm.conversation_type,
                    CASE
                        WHEN gm.conversation_type = 'group'
                        THEN COALESCE(rm.display_name, gm.conversation_key)
                        ELSE COALESCE(
                            um.display_name,
                            SUBSTRING(gm.conversation_key FROM 9)
                        )
                    END as conversation_name,
                    COUNT(*) OVER (PARTITION BY gm.conversation_key) as message_count,
                    MIN(gm.msgtime_local) OVER (PARTITION BY gm.conversation_key) as first_message_time,
                    MAX(gm.msgtime_local) OVER (PARTITION BY gm.conversation_key) as last_message_time
                FROM grouped_messages gm
                LEFT JOIN wecom_id_mappings rm
                    ON gm.conversation_key = rm.original_id
                    AND rm.id_type = 'room_id'
                LEFT JOIN wecom_id_mappings um
                    ON SUBSTRING(gm.conversation_key FROM 9) = um.original_id
                    AND um.id_type = 'user_id'
            )
            -- 步骤4: 聚合消息列表
            SELECT
                c.conversation_key,
                c.conversation_type,
                c.conversation_name,
                c.message_count,
                c.first_message_time,
                c.last_message_time,
                json_agg(
                    json_build_object(
                        'msgid', gm.msgid,
                        'msgtime', gm.msgtime_local,
                        'msgtype', gm.msgtype,
                        'from_user_id', gm.from_user_id,
                        'direction', gm.message_direction,
                        'content', COALESCE(
                            gm.content_payload->>'content',
                            CASE
                                WHEN gm.msgtype = 'image' THEN '[图片]'
                                WHEN gm.msgtype = 'video' THEN '[视频]'
                                WHEN gm.msgtype = 'voice' THEN '[语音]'
                                WHEN gm.msgtype = 'file' THEN '[文件]'
                                WHEN gm.msgtype = 'weapp' THEN '[小程序]'
                                WHEN gm.msgtype = 'revoke' THEN '[撤回消息]'
                                ELSE '[' || gm.msgtype || ']'
                            END
                        )
                    ) ORDER BY gm.msgtime_local DESC
                ) as messages
            FROM conversations c
            INNER JOIN grouped_messages gm
                ON c.conversation_key = gm.conversation_key
            GROUP BY
                c.conversation_key,
                c.conversation_type,
                c.conversation_name,
                c.message_count,
                c.first_message_time,
                c.last_message_time
            ORDER BY c.last_message_time DESC
        """

        cur.execute(query, (
            user_id,      # 群聊发送者过滤
            user_id,      # 私聊发送者过滤
            user_id,      # 私聊接收者过滤
            start_dt,     # 开始时间
            end_dt,       # 结束时间
            user_id,      # conversation_key计算
            user_id       # message_direction计算
        ))
        results = cur.fetchall()

        cur.close()
        conn.close()

        # 转换为JSON格式
        conversations = []
        for row in results:
            conversations.append({
                'conversation_key': row['conversation_key'],
                'conversation_type': row['conversation_type'],
                'conversation_name': row['conversation_name'],
                'message_count': row['message_count'],
                'first_message_time': row['first_message_time'].isoformat() if row['first_message_time'] else None,
                'last_message_time': row['last_message_time'].isoformat() if row['last_message_time'] else None,
                'messages': row['messages']
            })

        return jsonify({
            'status': 'success',
            'user_id': user_id,
            'start_time': start_dt.isoformat(),
            'end_time': end_dt.isoformat(),
            'conversation_count': len(conversations),
            'conversations': conversations
        })

    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/')
def index():
    """提供HTML界面"""
    return send_file('user_messages.html')

@app.after_request
def after_request(response):
    """添加CORS头"""
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type')
    response.headers.add('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE')
    return response

@app.route('/api/update-student-info', methods=['POST'])
def update_student_info():
    """
    更新家长关联的学员信息
    请求体:
      {
        "user_id": "wmqDzZEw...",
        "student_name": "张小明",
        "student_english_name": "Tom",
        "student_class_room_id": "wrqDzZEw..."
      }
    """
    try:
        data = request.json
        user_id = data.get('user_id', '').strip()
        student_name = data.get('student_name', '').strip()
        student_english_name = data.get('student_english_name', '').strip()
        student_class_room_id = data.get('student_class_room_id', '').strip()

        if not user_id:
            return jsonify({'status': 'error', 'message': '缺少user_id参数'}), 400

        conn = get_db_connection()
        cur = conn.cursor()

        # 更新学员信息
        update_query = """
        UPDATE wecom_id_mappings
        SET student_name = %s,
            student_english_name = %s,
            student_class_room_id = %s,
            updated_at = NOW()
        WHERE id_type = 'user_id'
          AND original_id = %s
        """

        cur.execute(update_query, (
            student_name if student_name else None,
            student_english_name if student_english_name else None,
            student_class_room_id if student_class_room_id else None,
            user_id
        ))

        conn.commit()
        cur.close()
        conn.close()

        return jsonify({
            'status': 'success',
            'message': '学员信息更新成功'
        })

    except Exception as e:
        return jsonify({
            'status': 'error',
            'message': f'服务器错误: {str(e)}'
        }), 500

@app.route('/api/summarize-messages', methods=['POST'])
def summarize_messages():
    """
    AI智能总结用户消息（使用Coze API）
    """
    if not COZE_TOKEN or not COZE_BOT_ID:
        return jsonify({
            'status': 'error',
            'message': 'Coze API未配置，请检查COZE_TOKEN和COZE_BOT_ID'
        }), 500

    try:
        data = request.json
        user_id = data.get('user_id', '').strip()
        user_name = data.get('user_name', '未知用户')
        start_time_str = data.get('start_time', '')
        end_time_str = data.get('end_time', '')

        if not user_id:
            return jsonify({'status': 'error', 'message': '缺少user_id参数'}), 400

        # 解析时间参数
        try:
            if end_time_str:
                end_dt = datetime.fromisoformat(end_time_str.replace('Z', '+00:00'))
            else:
                end_dt = datetime.now()

            if start_time_str:
                start_dt = datetime.fromisoformat(start_time_str.replace('Z', '+00:00'))
            else:
                start_dt = end_dt - timedelta(days=30)
        except ValueError as e:
            return jsonify({'status': 'error', 'message': f'时间格式错误: {str(e)}'}), 400

        # 获取用户消息（复用现有查询逻辑）
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        query = """
            WITH user_messages AS (
                SELECT
                    msgid, msgtime, msgtype, from_user_id, roomid, tolist, content_payload
                FROM wecom_chat_logs
                WHERE (
                    (roomid IS NOT NULL AND roomid <> '' AND from_user_id = %s)
                    OR ((roomid IS NULL OR roomid = '') AND (from_user_id = %s OR tolist[1] = %s))
                )
                AND msgtime >= %s AND msgtime <= %s
            ),
            grouped_messages AS (
                SELECT
                    msgtime AT TIME ZONE 'Asia/Shanghai' as msgtime_local,
                    msgtype, from_user_id,
                    CASE
                        WHEN roomid IS NOT NULL AND roomid <> '' THEN roomid
                        ELSE 'private:' || COALESCE(
                            CASE WHEN from_user_id = %s THEN tolist[1] ELSE from_user_id END,
                            'unknown'
                        )
                    END as conversation_key,
                    CASE
                        WHEN roomid IS NOT NULL AND roomid <> '' THEN 'group'
                        ELSE 'private'
                    END as conversation_type,
                    CASE WHEN from_user_id = %s THEN 'sent' ELSE 'received' END as message_direction,
                    content_payload
                FROM user_messages
            ),
            conversations AS (
                SELECT DISTINCT
                    gm.conversation_key, gm.conversation_type,
                    CASE
                        WHEN gm.conversation_type = 'group'
                        THEN COALESCE(rm.display_name, gm.conversation_key)
                        ELSE COALESCE(um.display_name, SUBSTRING(gm.conversation_key FROM 9))
                    END as conversation_name
                FROM grouped_messages gm
                LEFT JOIN wecom_id_mappings rm ON gm.conversation_key = rm.original_id AND rm.id_type = 'room_id'
                LEFT JOIN wecom_id_mappings um ON SUBSTRING(gm.conversation_key FROM 9) = um.original_id AND um.id_type = 'user_id'
            )
            SELECT
                c.conversation_key, c.conversation_type, c.conversation_name,
                COUNT(*) as message_count,
                json_agg(
                    json_build_object(
                        'msgtime', gm.msgtime_local,
                        'msgtype', gm.msgtype,
                        'direction', gm.message_direction,
                        'content', COALESCE(
                            gm.content_payload->>'content',
                            CASE
                                WHEN gm.msgtype = 'image' THEN '[图片]'
                                WHEN gm.msgtype = 'video' THEN '[视频]'
                                WHEN gm.msgtype = 'voice' THEN '[语音]'
                                WHEN gm.msgtype = 'file' THEN '[文件]'
                                ELSE '[' || gm.msgtype || ']'
                            END
                        )
                    ) ORDER BY gm.msgtime_local
                ) as messages
            FROM conversations c
            INNER JOIN grouped_messages gm ON c.conversation_key = gm.conversation_key
            GROUP BY c.conversation_key, c.conversation_type, c.conversation_name
            ORDER BY MAX(gm.msgtime_local) DESC
        """

        cur.execute(query, (user_id, user_id, user_id, start_dt, end_dt, user_id, user_id))
        conversations = cur.fetchall()
        cur.close()
        conn.close()

        if not conversations:
            return jsonify({'status': 'error', 'message': '该时间范围内没有消息数据'}), 400

        # 格式化消息为AI格式
        formatted_messages = _format_messages_for_coze(conversations, user_name, start_dt, end_dt)

        # 调用 Coze API
        try:
            summary_text = _call_coze_api(formatted_messages, user_id)
        except Exception as e:
            return jsonify({'status': 'error', 'message': f'AI API调用失败: {str(e)}'}), 500

        total_messages = sum(conv['message_count'] for conv in conversations)

        return jsonify({
            'status': 'success',
            'summary': summary_text,
            'message_count': total_messages,
            'conversation_count': len(conversations)
        })

    except Exception as e:
        return jsonify({'status': 'error', 'message': f'服务器错误: {str(e)}'}), 500

def _format_messages_for_coze(conversations, user_name, start_dt, end_dt):
    """
    格式化消息为Coze可理解的文本（简化版）

    重要原则：Coze Bot 已在平台配置了角色和提示词，
    代码只负责传递聊天记录数据，不构建复杂 Prompt
    """
    lines = []

    # 只添加基本的时间和用户信息
    lines.append(f"{user_name} ({start_dt.strftime('%Y-%m-%d')} ~ {end_dt.strftime('%Y-%m-%d')})")
    lines.append("")

    for conv in conversations:
        conv_type_text = "群聊" if conv['conversation_type'] == 'group' else "私聊"
        lines.append(f"【{conv_type_text}: {conv['conversation_name']}】({conv['message_count']}条消息)")
        lines.append("")

        messages = conv['messages'][:100] if len(conv['messages']) > 100 else conv['messages']

        for msg in messages:
            direction_symbol = "我" if msg['direction'] == 'sent' else "对方"
            time_str = msg['msgtime'].strftime('%m-%d %H:%M') if isinstance(msg['msgtime'], datetime) else str(msg['msgtime'])[:16]
            content = msg['content'][:200] if msg['content'] else ''
            lines.append(f"  {time_str}  {direction_symbol}  {content}")

        if len(conv['messages']) > 100:
            lines.append(f"  ... (省略{len(conv['messages']) - 100}条消息)")
        lines.append("")

    return "\n".join(lines)

def _call_coze_api(formatted_messages, user_id):
    """调用 Coze API 进行总结（参考 parent_analyzer.py）"""
    try:
        headers = {
            "Authorization": f"Bearer {COZE_TOKEN}",
            "Content-Type": "application/json"
        }

        # 构建 Coze API 请求体
        payload = {
            "bot_id": COZE_BOT_ID,
            "user_id": f"user_messages_{user_id}_{int(time.time())}",
            "stream": True,
            "auto_save_history": True,
            "additional_messages": [
                {
                    "role": "user",
                    "content": formatted_messages,
                    "content_type": "text"
                }
            ]
        }

        print(f"[COZE] 发送请求到: {COZE_API_ENDPOINT}", file=sys.stderr)
        print(f"[COZE] Bot ID: {COZE_BOT_ID}", file=sys.stderr)

        start_time = time.time()

        response = requests.post(
            COZE_API_ENDPOINT,
            headers=headers,
            json=payload,
            timeout=120,
            stream=True
        )
        response.raise_for_status()

        # 处理流式返回（Coze API event-stream 格式）
        full_text = ""
        current_event = None

        for line in response.iter_lines():
            if not line:
                continue

            line_str = line.decode('utf-8')

            # 处理 event 行
            if line_str.startswith('event:'):
                current_event = line_str[6:].strip()
                continue

            # 处理 data 行
            if line_str.startswith('data:'):
                data_str = line_str[5:].strip()
                if data_str == '"[DONE]"' or data_str == '[DONE]':
                    break

                try:
                    data = json.loads(data_str)

                    # 提取 answer 类型的内容
                    if data.get('type') == 'answer':
                        content = data.get('content', '')

                        # delta 事件：增量内容
                        if current_event == 'conversation.message.delta':
                            full_text += content

                        # completed 事件：完整内容（使用这个作为最终结果）
                        elif current_event == 'conversation.message.completed':
                            full_text = content

                except json.JSONDecodeError:
                    continue

        duration_ms = int((time.time() - start_time) * 1000)
        print(f"[COZE] API 调用完成，耗时 {duration_ms} ms", file=sys.stderr)
        print(f"[COZE] 成功获取总结，长度: {len(full_text)}", file=sys.stderr)

        if not full_text:
            raise Exception("Coze API 返回了空的总结")

        return full_text

    except requests.Timeout as e:
        raise Exception(f"Coze API请求超时: {str(e)}")
    except requests.RequestException as e:
        raise Exception(f"Coze API网络错误: {str(e)}")
    except Exception as e:
        raise Exception(f"Coze API错误: {str(e)}")

if __name__ == '__main__':
    print("=" * 60)
    print("用户消息查询系统")
    print("=" * 60)
    print(f"  数据库: {DB_CONFIG['database']}")
    print(f"  用户: {DB_CONFIG['user']}")
    print("  连接方式: Unix Socket (Peer Authentication)")
    print("=" * 60)
    print("访问地址: http://localhost:5005")
    print("=" * 60)
    app.run(debug=True, port=5005, host='0.0.0.0')
