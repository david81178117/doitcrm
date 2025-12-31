"""
企业微信ID映射管理系统 (升级版)
连接PostgreSQL数据库，管理from_user_id、room_id、tolist的映射关系
新增：通过企业微信API自动获取客户昵称
"""
from flask import Flask, jsonify, request, send_file
import psycopg2
import psycopg2.extras
import json
import os
import requests
import time

app = Flask(__name__)

# PostgreSQL连接配置（阿里云生产环境）
DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'database': os.getenv('DB_NAME', 'wechat_db'),
    'user': os.getenv('DB_USER', 'postgres'),
    'password': os.getenv('DB_PASSWORD', 'doit123'),
    'port': os.getenv('DB_PORT', '5432')
}

# 企业微信API配置
WECOM_CONFIG = {
    'corp_id': os.getenv('WECOM_CORP_ID', 'ww3036e4989a99bb2d'),
    'secret': os.getenv('WECOM_SECRET', 'S8UqG5CSPKWQEi7SmJTvPmLKGvRfuWDPQZOzQwdbajU'),
}

# 缓存access_token
_access_token_cache = {
    'token': None,
    'expires_at': 0
}

def get_db_connection():
    """获取PostgreSQL数据库连接"""
    conn = psycopg2.connect(**DB_CONFIG)
    return conn

# ============ 企业微信API相关函数 ============

def get_access_token():
    """获取企业微信access_token（带缓存）"""
    global _access_token_cache

    # 检查缓存是否有效（提前5分钟刷新）
    if _access_token_cache['token'] and time.time() < _access_token_cache['expires_at'] - 300:
        return _access_token_cache['token']

    # 重新获取token
    url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken"
    params = {
        'corpid': WECOM_CONFIG['corp_id'],
        'corpsecret': WECOM_CONFIG['secret']
    }

    try:
        response = requests.get(url, params=params, timeout=10)
        result = response.json()

        if result.get('errcode') == 0:
            _access_token_cache['token'] = result['access_token']
            _access_token_cache['expires_at'] = time.time() + result.get('expires_in', 7200)
            print(f"[WeComAPI] 获取access_token成功")
            return _access_token_cache['token']
        else:
            print(f"[WeComAPI] 获取access_token失败: {result}")
            return None
    except Exception as e:
        print(f"[WeComAPI] 获取access_token异常: {e}")
        return None

def get_external_contact_detail(external_userid):
    """
    获取外部联系人详情
    文档: https://developer.work.weixin.qq.com/document/path/92114
    """
    access_token = get_access_token()
    if not access_token:
        print(f"[WeComAPI] 无法获取access_token")
        return None

    url = "https://qyapi.weixin.qq.com/cgi-bin/externalcontact/get"
    params = {
        'access_token': access_token,
        'external_userid': external_userid
    }

    try:
        print(f"[WeComAPI] 正在获取外部联系人: {external_userid[:20]}...")
        response = requests.get(url, params=params, timeout=10)
        result = response.json()

        if result.get('errcode') == 0:
            print(f"[WeComAPI] 成功获取外部联系人: {result.get('external_contact', {}).get('name', 'N/A')}")
            return result.get('external_contact')
        else:
            print(f"[WeComAPI] 获取外部联系人详情失败: errcode={result.get('errcode')}, errmsg={result.get('errmsg')}")
            return None
    except Exception as e:
        print(f"[WeComAPI] 获取外部联系人详情异常: {e}")
        return None

def get_user_detail(userid):
    """
    获取企业成员详情
    文档: https://developer.work.weixin.qq.com/document/path/90196
    """
    access_token = get_access_token()
    if not access_token:
        return None

    url = "https://qyapi.weixin.qq.com/cgi-bin/user/get"
    params = {
        'access_token': access_token,
        'userid': userid
    }

    try:
        response = requests.get(url, params=params, timeout=10)
        result = response.json()

        if result.get('errcode') == 0:
            return result
        else:
            print(f"[WeComAPI] 获取成员详情失败: {result}")
            return None
    except Exception as e:
        print(f"[WeComAPI] 获取成员详情异常: {e}")
        return None

def get_group_chat_detail(chat_id):
    """
    获取客户群详情
    文档: https://developer.work.weixin.qq.com/document/path/92122
    """
    access_token = get_access_token()
    if not access_token:
        return None

    url = "https://qyapi.weixin.qq.com/cgi-bin/externalcontact/groupchat/get"
    params = {
        'access_token': access_token
    }
    data = {
        'chat_id': chat_id,
        'need_name': 1
    }

    try:
        response = requests.post(url, params=params, json=data, timeout=10)
        result = response.json()

        if result.get('errcode') == 0:
            return result.get('group_chat')
        else:
            print(f"[WeComAPI] 获取群详情失败: {result}")
            return None
    except Exception as e:
        print(f"[WeComAPI] 获取群详情异常: {e}")
        return None

# ============ 新增企业微信API接口 ============

@app.route('/api/test-wecom-connection', methods=['GET'])
def test_wecom_connection():
    """测试企业微信API连接"""
    try:
        token = get_access_token()
        if token:
            return jsonify({
                'status': 'success',
                'message': '企业微信API连接成功',
                'token_preview': token[:20] + '...'
            })
        else:
            return jsonify({
                'status': 'error',
                'message': '获取access_token失败，请检查corpid和secret配置'
            })
    except Exception as e:
        return jsonify({
            'status': 'error',
            'message': str(e)
        }), 500

@app.route('/api/fetch-wecom-name/<id_type>/<path:original_id>', methods=['GET'])
def fetch_wecom_name(id_type, original_id):
    """
    从企业微信API获取单个ID的名称
    - 外部联系人(wm/wo开头): 调用获取客户详情接口
    - 内部成员: 调用获取成员接口
    - 群聊(wr开头): 调用获取群详情接口
    """
    try:
        name = None
        source = None
        extra_info = {}

        if id_type == 'user_id':
            # 判断是外部联系人还是内部成员
            if original_id.startswith('wm') or original_id.startswith('wo'):
                # 外部联系人
                contact = get_external_contact_detail(original_id)
                if contact:
                    name = contact.get('name')
                    source = 'external_contact'
                    extra_info = {
                        'type': contact.get('type'),  # 1=微信用户, 2=企业微信用户
                        'corp_name': contact.get('corp_name', ''),
                        'position': contact.get('position', ''),
                    }
            else:
                # 内部成员
                user = get_user_detail(original_id)
                if user:
                    name = user.get('name')
                    source = 'internal_user'
                    extra_info = {
                        'department': user.get('department', []),
                        'position': user.get('position', ''),
                    }

        elif id_type == 'room_id':
            # 群聊
            if original_id.startswith('wr'):
                group = get_group_chat_detail(original_id)
                if group:
                    name = group.get('name') or f"群聊({group.get('member_count', 0)}人)"
                    source = 'group_chat'
                    extra_info = {
                        'member_count': group.get('member_count', 0),
                        'owner': group.get('owner', ''),
                    }

        if name:
            return jsonify({
                'status': 'success',
                'name': name,
                'source': source,
                'extra_info': extra_info
            })
        else:
            return jsonify({
                'status': 'not_found',
                'message': '未能从企业微信获取到名称'
            })

    except Exception as e:
        return jsonify({
            'status': 'error',
            'message': str(e)
        }), 500

@app.route('/api/batch-fetch-wecom-names', methods=['POST'])
def batch_fetch_wecom_names():
    """
    批量从企业微信API获取名称并更新数据库
    请求体: { "id_type": "user_id", "limit": 50, "only_unmapped": true }
    """
    try:
        data = request.json or {}
        id_type = data.get('id_type', 'user_id')
        limit = min(data.get('limit', 50), 100)  # 最多100个
        only_unmapped = data.get('only_unmapped', True)

        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 获取需要处理的ID列表
        if only_unmapped:
            cur.execute("""
                SELECT original_id FROM wecom_id_mappings
                WHERE id_type = %s AND (display_name IS NULL OR display_name = '')
                LIMIT %s
            """, (id_type, limit))
        else:
            cur.execute("""
                SELECT original_id FROM wecom_id_mappings
                WHERE id_type = %s
                LIMIT %s
            """, (id_type, limit))

        rows = cur.fetchall()

        success_count = 0
        fail_count = 0
        results = []

        for row in rows:
            original_id = row['original_id']
            name = None

            # 根据ID类型调用不同的API
            if id_type == 'user_id':
                if original_id.startswith('wm') or original_id.startswith('wo'):
                    contact = get_external_contact_detail(original_id)
                    if contact:
                        name = contact.get('name')
                else:
                    user = get_user_detail(original_id)
                    if user:
                        name = user.get('name')
            elif id_type == 'room_id':
                if original_id.startswith('wr'):
                    group = get_group_chat_detail(original_id)
                    if group:
                        name = group.get('name') or f"群聊({group.get('member_count', 0)}人)"

            if name:
                # 更新数据库
                cur.execute("""
                    UPDATE wecom_id_mappings
                    SET display_name = %s, is_mapped = true, updated_at = NOW()
                    WHERE id_type = %s AND original_id = %s
                """, (name, id_type, original_id))
                success_count += 1
                results.append({'id': original_id, 'name': name, 'status': 'success'})
            else:
                fail_count += 1
                results.append({'id': original_id, 'name': None, 'status': 'not_found'})

            # 避免API调用过快
            time.sleep(0.1)

        conn.commit()
        cur.close()
        conn.close()

        return jsonify({
            'status': 'success',
            'total': len(rows),
            'success_count': success_count,
            'fail_count': fail_count,
            'results': results
        })

    except Exception as e:
        return jsonify({
            'status': 'error',
            'message': str(e)
        }), 500

# ============ 原有接口保持不变 ============

@app.route('/api/init-mapping-table', methods=['POST'])
def init_mapping_table():
    """初始化映射表（如果不存在）"""
    try:
        conn = get_db_connection()
        cur = conn.cursor()

        # 创建映射表
        cur.execute("""
            CREATE TABLE IF NOT EXISTS wecom_id_mappings (
                id SERIAL PRIMARY KEY,
                id_type TEXT NOT NULL,  -- 'room_id', 'user_id'
                original_id TEXT NOT NULL,
                display_name TEXT,
                user_role TEXT,  -- 'parent', 'teacher', NULL (for rooms)
                notes TEXT,
                created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                UNIQUE(id_type, original_id)
            );
        """)

        # 创建索引
        cur.execute("""
            CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_lookup
            ON wecom_id_mappings(id_type, original_id);
        """)

        conn.commit()
        cur.close()
        conn.close()

        return jsonify({'status': 'success', 'message': '映射表初始化成功'})
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/api/extract-all-ids', methods=['POST'])
def extract_all_ids():
    """从wecom_chat_logs提取所有需要映射的ID"""
    try:
        conn = get_db_connection()
        cur = conn.cursor()

        # 提取所有唯一的room_id
        cur.execute("""
            INSERT INTO wecom_id_mappings (id_type, original_id)
            SELECT DISTINCT 'room_id', roomid
            FROM wecom_chat_logs
            WHERE roomid IS NOT NULL AND roomid != ''
            ON CONFLICT (id_type, original_id) DO NOTHING;
        """)

        # 提取所有唯一的from_user_id
        cur.execute("""
            INSERT INTO wecom_id_mappings (id_type, original_id)
            SELECT DISTINCT 'user_id', from_user_id
            FROM wecom_chat_logs
            WHERE from_user_id IS NOT NULL AND from_user_id != ''
            ON CONFLICT (id_type, original_id) DO NOTHING;
        """)

        # 提取tolist中的用户ID（一对一聊天场景）
        cur.execute("""
            INSERT INTO wecom_id_mappings (id_type, original_id)
            SELECT DISTINCT 'user_id',
                   jsonb_array_elements_text(raw_data->'tolist')
            FROM wecom_chat_logs
            WHERE (roomid IS NULL OR roomid = '')
              AND raw_data ? 'tolist'
              AND jsonb_array_length(raw_data->'tolist') > 0
            ON CONFLICT (id_type, original_id) DO NOTHING;
        """)

        conn.commit()

        # 统计结果
        cur.execute("SELECT COUNT(*) FROM wecom_id_mappings WHERE id_type = 'room_id'")
        room_count = cur.fetchone()[0]

        cur.execute("SELECT COUNT(*) FROM wecom_id_mappings WHERE id_type = 'user_id'")
        user_count = cur.fetchone()[0]

        cur.close()
        conn.close()

        return jsonify({
            'status': 'success',
            'room_count': room_count,
            'user_count': user_count,
            'message': f'提取完成：{room_count}个群组，{user_count}个用户'
        })
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/api/mappings/<id_type>', methods=['GET'])
def get_mappings(id_type):
    """获取指定类型的所有映射"""
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        cur.execute("""
            SELECT
                id,
                id_type,
                original_id,
                display_name,
                user_role,
                notes,
                student_name,
                student_english_name,
                student_class_room_id,
                created_at,
                updated_at
            FROM wecom_id_mappings
            WHERE id_type = %s
            ORDER BY
                CASE WHEN display_name IS NULL THEN 1 ELSE 0 END,
                display_name,
                original_id
        """, (id_type,))

        results = cur.fetchall()
        cur.close()
        conn.close()

        # 转换为字典列表
        mappings = []
        for row in results:
            mappings.append({
                'id': row['id'],
                'id_type': row['id_type'],
                'original_id': row['original_id'],
                'display_name': row['display_name'] or '',
                'user_role': row['user_role'] or '',
                'notes': row['notes'] or '',
                'student_name': row['student_name'] or '',
                'student_english_name': row['student_english_name'] or '',
                'student_class_room_id': row['student_class_room_id'] or '',
                'is_mapped': bool(row['display_name']),
                'created_at': row['created_at'].isoformat() if row['created_at'] else None,
                'updated_at': row['updated_at'].isoformat() if row['updated_at'] else None
            })

        return jsonify(mappings)
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/api/mappings/<id_type>/<original_id>', methods=['PUT'])
def update_mapping(id_type, original_id):
    """更新映射"""
    try:
        data = request.json
        display_name = data.get('display_name', '')
        user_role = data.get('user_role', None)
        notes = data.get('notes', '')
        student_name = data.get('student_name', None)
        student_english_name = data.get('student_english_name', None)
        student_class_room_id = data.get('student_class_room_id', None)

        conn = get_db_connection()
        cur = conn.cursor()

        cur.execute("""
            UPDATE wecom_id_mappings
            SET display_name = %s,
                user_role = %s,
                notes = %s,
                student_name = %s,
                student_english_name = %s,
                student_class_room_id = %s,
                updated_at = NOW()
            WHERE id_type = %s AND original_id = %s
        """, (display_name, user_role, notes, student_name, student_english_name,
              student_class_room_id, id_type, original_id))

        conn.commit()
        cur.close()
        conn.close()

        return jsonify({'status': 'success', 'message': '保存成功'})
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/api/stats', methods=['GET'])
def get_stats():
    """获取映射统计信息"""
    try:
        conn = get_db_connection()
        cur = conn.cursor()

        # 群组统计
        cur.execute("""
            SELECT
                COUNT(*) as total,
                COUNT(display_name) as mapped,
                COUNT(*) - COUNT(display_name) as unmapped
            FROM wecom_id_mappings
            WHERE id_type = 'room_id'
        """)
        room_stats = cur.fetchone()

        # 用户统计
        cur.execute("""
            SELECT
                COUNT(*) as total,
                COUNT(display_name) as mapped,
                COUNT(*) - COUNT(display_name) as unmapped,
                COUNT(CASE WHEN user_role = 'parent' THEN 1 END) as parents,
                COUNT(CASE WHEN user_role = 'teacher' THEN 1 END) as teachers
            FROM wecom_id_mappings
            WHERE id_type = 'user_id'
        """)
        user_stats = cur.fetchone()

        cur.close()
        conn.close()

        return jsonify({
            'rooms': {
                'total': room_stats[0],
                'mapped': room_stats[1],
                'unmapped': room_stats[2]
            },
            'users': {
                'total': user_stats[0],
                'mapped': user_stats[1],
                'unmapped': user_stats[2],
                'parents': user_stats[3],
                'teachers': user_stats[4]
            }
        })
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/api/export-sql', methods=['GET'])
def export_sql():
    """导出SQL插入语句，用于将映射数据插入到teachers/parents表"""
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 获取所有已映射的用户
        cur.execute("""
            SELECT original_id, display_name, user_role
            FROM wecom_id_mappings
            WHERE id_type = 'user_id'
              AND display_name IS NOT NULL
              AND user_role IS NOT NULL
            ORDER BY user_role, display_name
        """)
        users = cur.fetchall()

        cur.close()
        conn.close()

        sql_statements = []
        sql_statements.append("-- 自动生成的映射数据SQL\n")
        sql_statements.append("-- 生成时间: NOW()\n\n")

        # 生成教师插入语句
        teachers = [u for u in users if u['user_role'] == 'teacher']
        if teachers:
            sql_statements.append("-- 插入教师数据\n")
            for teacher in teachers:
                sql_statements.append(
                    f"INSERT INTO teachers (name, wechat_id, is_active) "
                    f"VALUES ('{teacher['display_name']}', '{teacher['original_id']}', TRUE) "
                    f"ON CONFLICT (wechat_id) DO UPDATE SET name = EXCLUDED.name;\n"
                )
            sql_statements.append("\n")

        # 生成家长插入语句
        parents = [u for u in users if u['user_role'] == 'parent']
        if parents:
            sql_statements.append("-- 插入家长数据\n")
            for parent in parents:
                sql_statements.append(
                    f"INSERT INTO parents (name, wechat_id) "
                    f"VALUES ('{parent['display_name']}', '{parent['original_id']}') "
                    f"ON CONFLICT (wechat_id) DO UPDATE SET name = EXCLUDED.name;\n"
                )

        return jsonify({
            'status': 'success',
            'sql': ''.join(sql_statements),
            'teacher_count': len(teachers),
            'parent_count': len(parents)
        })
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/api/user-groups/<user_id>', methods=['GET'])
def get_user_groups(user_id):
    """
    获取用户参与的所有群聊列表（用于班级Room ID选择）
    """
    if not user_id:
        return jsonify({'status': 'error', 'message': '缺少user_id参数'}), 400

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        query = """
        SELECT
            wcl.roomid,
            COALESCE(wim.display_name, wcl.roomid) AS room_name,
            COUNT(*) AS message_count,
            MAX(wcl.msgtime) AT TIME ZONE 'Asia/Shanghai' AS last_message_time
        FROM wecom_chat_logs wcl
        LEFT JOIN wecom_id_mappings wim
            ON wcl.roomid = wim.original_id
            AND wim.id_type = 'room_id'
        WHERE wcl.from_user_id = %s
            AND wcl.roomid IS NOT NULL
            AND wcl.roomid <> ''
        GROUP BY wcl.roomid, wim.display_name
        ORDER BY last_message_time DESC
        LIMIT 100
        """

        cur.execute(query, (user_id,))
        results = cur.fetchall()

        cur.close()
        conn.close()

        groups = []
        for row in results:
            groups.append({
                'room_id': row['room_id'],
                'room_name': row['room_name'],
                'message_count': row['message_count'],
                'last_message_time': row['last_message_time'].isoformat() if row['last_message_time'] else None
            })

        return jsonify({
            'status': 'success',
            'user_id': user_id,
            'group_count': len(groups),
            'groups': groups
        })

    except Exception as e:
        return jsonify({
            'status': 'error',
            'message': f'服务器错误: {str(e)}'
        }), 500

@app.after_request
def after_request(response):
    """添加CORS头"""
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type')
    response.headers.add('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE')
    return response

@app.route('/')
def index():
    """提供HTML界面"""
    return send_file('wecom_id_mapper.html')

if __name__ == '__main__':
    print("=" * 60)
    print("企业微信ID映射管理系统 (升级版)")
    print("=" * 60)
    print("数据库配置:")
    print(f"  Database: {DB_CONFIG['database']}")
    print(f"  User: {DB_CONFIG['user']}")
    print("企业微信配置:")
    print(f"  CorpID: {WECOM_CONFIG['corp_id']}")
    print(f"  Secret: {'*' * 20}... (已配置)")
    print("=" * 60)
    print("新增功能:")
    print("  ✅ 自动从企业微信获取客户/成员昵称")
    print("  ✅ 批量获取名称")
    print("  ✅ 测试API连接")
    print("=" * 60)
    print("启动步骤:")
    print("  1. 访问 http://localhost:5004")
    print("  2. 点击'测试API连接'确认配置正确")
    print("  3. 点击'批量获取昵称'自动填充名称")
    print("=" * 60)
    app.run(debug=True, port=5004, host='0.0.0.0')
