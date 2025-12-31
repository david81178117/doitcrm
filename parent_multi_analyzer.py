#!/usr/bin/env python3
"""
多角度家长分析系统 - Flask Web应用
支持多维度筛选、多用户聊天记录聚合、Coze API智能总结
"""
from flask import Flask, jsonify, request, send_file
import psycopg2
import psycopg2.extras
from datetime import datetime, timedelta
import os
import sys
import json
import time
from typing import List, Dict, Optional
import requests

app = Flask(__name__)

# 数据库连接配置
DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'database': os.getenv('DB_NAME', 'wechat_db'),
    'user': os.getenv('DB_USER', 'postgres'),
    'password': os.getenv('DB_PASSWORD', 'doit123'),
    'port': os.getenv('DB_PORT', '5432')
}

# Coze API 配置
COZE_API_ENDPOINT = os.getenv('COZE_API_ENDPOINT', 'https://api.coze.cn/v3/chat')
COZE_TOKEN = os.getenv('COZE_TOKEN', 'pat_s48QEakmtUKzi9C54JfycMcSTeke1lcwrUAzvhI4Igb3W3ikMvnDoWg9TYDJyLQ4')
COZE_BOT_ID = os.getenv('COZE_BOT_ID', '7588778847907119144')


def get_db_connection():
    """获取PostgreSQL数据库连接"""
    return psycopg2.connect(**DB_CONFIG)


@app.route('/api/filter-options', methods=['GET'])
def get_filter_options():
    """
    获取所有筛选维度的可选项

    返回:
      {
        "status": "success",
        "options": {
          "sections": ["一段", "二段", "三段"],
          "levels": ["L1", "L2", "L3", "L4", "L5", "L6", "L7"],
          "classes": [{"id": "wrq...", "name": "一年级1班"}, ...],
          "teachers": [{"id": "wmq...", "name": "张老师"}, ...],
          "students": ["张小明", "李小红", ...]
        }
      }
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 查询所有筛选选项
        options = {}

        # 段（一段、二段、三段）
        cur.execute("""
            SELECT DISTINCT student_section
            FROM wecom_id_mappings
            WHERE student_section IS NOT NULL
            ORDER BY student_section
        """)
        options['sections'] = [row['student_section'] for row in cur.fetchall()]

        # 阶（L1-L7）
        cur.execute("""
            SELECT DISTINCT student_level
            FROM wecom_id_mappings
            WHERE student_level IS NOT NULL
            ORDER BY student_level
        """)
        options['levels'] = [row['student_level'] for row in cur.fetchall()]

        # 班级
        cur.execute("""
            SELECT DISTINCT wim.student_class_room_id as id, rm.display_name as name
            FROM wecom_id_mappings wim
            LEFT JOIN wecom_id_mappings rm
                ON wim.student_class_room_id = rm.original_id
                AND rm.id_type = 'room_id'
            WHERE wim.student_class_room_id IS NOT NULL
            ORDER BY name
        """)
        options['classes'] = [dict(row) for row in cur.fetchall()]

        # 老师
        cur.execute("""
            SELECT original_id as id, display_name as name
            FROM wecom_id_mappings
            WHERE user_role = 'teacher'
            ORDER BY display_name
        """)
        options['teachers'] = [dict(row) for row in cur.fetchall()]

        # 学员
        cur.execute("""
            SELECT DISTINCT student_name
            FROM wecom_id_mappings
            WHERE student_name IS NOT NULL
            ORDER BY student_name
        """)
        options['students'] = [row['student_name'] for row in cur.fetchall()]

        cur.close()
        conn.close()

        return jsonify({
            'status': 'success',
            'options': options
        })

    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500


@app.route('/api/filter-users', methods=['POST'])
def filter_users():
    """
    根据多维度条件筛选用户

    请求体:
      {
        "filters": {
          "section": "一段",        // 可选
          "level": "L1",            // 可选
          "class_id": "wrq...",     // 可选
          "teacher_id": "wmq...",   // 可选
          "student_name": "张小明",  // 可选
          "role": "parent"          // 可选: parent, teacher
        }
      }

    返回:
      {
        "status": "success",
        "count": 15,
        "users": [...]
      }
    """
    try:
        data = request.json
        filters = data.get('filters', {})

        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 构建动态SQL查询
        query = """
            SELECT
                wechat_id,
                display_name,
                user_role,
                student_name,
                student_english_name,
                student_class_room_id,
                student_level,
                student_section,
                text_message_count
            FROM v_user_filter_info
            WHERE 1=1
        """
        params = []

        # 应用筛选条件
        if filters.get('section'):
            query += " AND student_section = %s"
            params.append(filters['section'])

        if filters.get('level'):
            query += " AND student_level = %s"
            params.append(filters['level'])

        if filters.get('class_id'):
            query += " AND student_class_room_id = %s"
            params.append(filters['class_id'])

        if filters.get('student_name'):
            query += " AND student_name = %s"
            params.append(filters['student_name'])

        if filters.get('role'):
            query += " AND user_role = %s"
            params.append(filters['role'])

        # 老师筛选特殊处理
        if filters.get('teacher_id'):
            # 这里可以根据实际需求调整（是否通过班级关联）
            query += " AND wechat_id = %s"
            params.append(filters['teacher_id'])

        # 只返回有消息的用户
        query += " AND text_message_count > 0"

        # 按消息数降序排列
        query += " ORDER BY text_message_count DESC LIMIT 500"

        cur.execute(query, params)
        users = [dict(row) for row in cur.fetchall()]

        cur.close()
        conn.close()

        return jsonify({
            'status': 'success',
            'count': len(users),
            'users': users
        })

    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500


@app.route('/api/aggregate-messages', methods=['POST'])
def aggregate_messages():
    """
    聚合多个用户的聊天记录

    请求体:
      {
        "user_ids": ["wmqDzZEw...", "wmqDzZEw..."],
        "start_time": "2025-11-01T00:00:00",
        "end_time": "2025-12-31T23:59:59",
        "max_messages_per_user": 100  // 可选，默认100
      }

    返回:
      {
        "status": "success",
        "total_users": 5,
        "total_messages": 1234,
        "aggregated_text": "用户1:\n消息1\n..."
      }
    """
    try:
        data = request.json
        user_ids = data.get('user_ids', [])
        start_time_str = data.get('start_time')
        end_time_str = data.get('end_time')
        max_messages_per_user = data.get('max_messages_per_user', 100)

        if not user_ids:
            return jsonify({'status': 'error', 'message': '缺少user_ids参数'}), 400

        # 解析时间参数
        try:
            if end_time_str:
                end_dt = datetime.fromisoformat(end_time_str.replace('Z', '+00:00'))
            else:
                end_dt = datetime.now()

            if start_time_str:
                start_dt = datetime.fromisoformat(start_time_str.replace('Z', '+00:00'))
            else:
                start_dt = end_dt - timedelta(days=90)
        except ValueError as e:
            return jsonify({'status': 'error', 'message': f'时间格式错误: {str(e)}'}), 400

        # 聚合消息
        aggregated_data = aggregate_multi_user_messages(
            user_ids, start_dt, end_dt, max_messages_per_user
        )

        return jsonify({
            'status': 'success',
            'total_users': aggregated_data['total_users'],
            'total_messages': aggregated_data['total_messages'],
            'aggregated_text': aggregated_data['text']
        })

    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500


@app.route('/api/multi-user-analysis', methods=['POST'])
def multi_user_analysis():
    """
    调用 Coze API 对多用户聊天记录进行分析

    请求体:
      {
        "user_ids": ["wmqDzZEw...", "wmqDzZEw..."],
        "start_time": "2025-11-01T00:00:00",
        "end_time": "2025-12-31T23:59:59"
      }

    返回:
      {
        "status": "success",
        "analysis": "Coze API 返回的分析结果",
        "duration_ms": 15000,
        "user_count": 5,
        "message_count": 1234
      }
    """
    try:
        data = request.json
        user_ids = data.get('user_ids', [])
        start_time_str = data.get('start_time')
        end_time_str = data.get('end_time')

        if not user_ids:
            return jsonify({'status': 'error', 'message': '缺少user_ids参数'}), 400

        # 解析时间参数
        try:
            if end_time_str:
                end_dt = datetime.fromisoformat(end_time_str.replace('Z', '+00:00'))
            else:
                end_dt = datetime.now()

            if start_time_str:
                start_dt = datetime.fromisoformat(start_time_str.replace('Z', '+00:00'))
            else:
                start_dt = end_dt - timedelta(days=90)
        except ValueError as e:
            return jsonify({'status': 'error', 'message': f'时间格式错误: {str(e)}'}), 400

        # 1. 聚合消息
        aggregated_data = aggregate_multi_user_messages(user_ids, start_dt, end_dt, max_messages_per_user=100)

        if aggregated_data['total_messages'] == 0:
            return jsonify({'status': 'error', 'message': '该时间范围内没有消息数据'}), 400

        # 2. 调用 Coze API
        start_time = time.time()
        analysis_result = call_coze_api_simple(aggregated_data['text'], aggregated_data['total_users'])
        duration_ms = int((time.time() - start_time) * 1000)

        return jsonify({
            'status': 'success',
            'analysis': analysis_result,
            'duration_ms': duration_ms,
            'user_count': aggregated_data['total_users'],
            'message_count': aggregated_data['total_messages']
        })

    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500


# ============ 核心功能函数 ============

def aggregate_multi_user_messages(
    user_ids: List[str],
    start_time: datetime,
    end_time: datetime,
    max_messages_per_user: int = 100
) -> Dict:
    """
    聚合多个用户的聊天记录为文本

    排序规则：
    - 用户之间按消息总数降序排列（消息多的排前面）
    - 每个用户内部消息按时间倒序排列（最新的在上面）
    """
    conn = get_db_connection()
    cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

    user_message_data = []
    total_messages = 0

    for user_id in user_ids:
        # 提取用户信息
        cur.execute("""
            SELECT wechat_id, display_name, user_role, student_name
            FROM v_user_filter_info
            WHERE wechat_id = %s
        """, (user_id,))
        user_info = cur.fetchone()

        if not user_info:
            continue

        # 提取文本消息（参考 user_messages.py 的逻辑）
        # 群聊：只查询用户发送的消息
        # 私聊：查询双向消息（发送 + 接收）
        query = """
            SELECT
                msgtime AT TIME ZONE 'Asia/Shanghai' as msgtime_local,
                msgtype,
                from_user_id,
                roomid,
                tolist,
                content_payload,
                CASE
                    WHEN from_user_id = %s THEN 'sent'
                    ELSE 'received'
                END as message_direction
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
            AND msgtype = 'text'
            AND msgtime >= %s
            AND msgtime <= %s
            ORDER BY msgtime DESC
            LIMIT %s
        """
        cur.execute(query, (user_id, user_id, user_id, user_id, start_time, end_time, max_messages_per_user))
        messages = cur.fetchall()

        user_message_data.append({
            'user_id': user_id,
            'user_info': dict(user_info),
            'messages': [dict(m) for m in messages],
            'message_count': len(messages)
        })
        total_messages += len(messages)

    cur.close()
    conn.close()

    # 按消息总数降序排序
    user_message_data.sort(key=lambda x: x['message_count'], reverse=True)

    # 格式化输出
    aggregated = []
    for data in user_message_data:
        user_info = data['user_info']
        messages = data['messages']

        aggregated.append(f"\n{'='*80}")
        aggregated.append(f"用户: {user_info['display_name'] or user_info['wechat_id'][:16]} ({user_info['wechat_id'][:16]}...)")
        student_info = f"学员: {user_info['student_name']}" if user_info.get('student_name') else "学员: 未关联"
        aggregated.append(f"{student_info} | 消息总数: {data['message_count']}条")
        aggregated.append('='*80)

        # 消息按时间倒序
        for msg in messages:
            # 根据 message_direction 判断发送方向
            direction = "我" if msg['message_direction'] == 'sent' else "对方"
            time_str = msg['msgtime_local'].strftime('%m-%d %H:%M:%S')
            content = (msg['content_payload'].get('content', '') if msg['content_payload'] else '')[:100]
            aggregated.append(f"{time_str}  {direction}  {content}")

        aggregated.append("")  # 用户之间空一行

    return {
        'text': '\n'.join(aggregated),
        'total_users': len(user_message_data),
        'total_messages': total_messages
    }


def call_coze_api_simple(aggregated_messages: str, user_count: int) -> str:
    """
    调用 Coze API 进行多用户分析（简化版）

    重要原则：用户已在 Coze Bot 配置中定义了角色和提示词，
    代码只负责传递聊天记录数据。
    """
    headers = {
        "Authorization": f"Bearer {COZE_TOKEN}",
        "Content-Type": "application/json"
    }

    # 简单的用户消息，Coze Bot 会根据其配置的提示词进行分析
    payload = {
        "bot_id": COZE_BOT_ID,
        "user_id": f"multi_user_analysis_{int(time.time())}",
        "stream": True,
        "auto_save_history": True,
        "additional_messages": [
            {
                "role": "user",
                "content": aggregated_messages,  # 直接传递聊天记录
                "content_type": "text"
            }
        ]
    }

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
    print(f"[Coze API] 调用完成，耗时 {duration_ms} ms", file=sys.stderr)

    return full_text


@app.route('/')
def index():
    """提供HTML界面"""
    return send_file('parent_multi_analyzer.html')


@app.after_request
def after_request(response):
    """添加CORS头"""
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type')
    response.headers.add('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE')
    return response


if __name__ == '__main__':
    print("=" * 60)
    print("多角度家长分析系统")
    print("=" * 60)
    print(f"  数据库: {DB_CONFIG['database']}")
    print(f"  用户: {DB_CONFIG['user']}")
    print(f"  Coze Bot ID: {COZE_BOT_ID}")
    print("=" * 60)
    print("访问地址: http://localhost:5006")
    print("=" * 60)
    app.run(debug=True, port=5006, host='0.0.0.0')
