#!/usr/bin/env python3
"""
群消息查看系统 - Flask 后端
按段/阶/班级分类显示班级群，其他群单独分类
"""
from datetime import datetime, timedelta
import json
import os
import sys

import psycopg2
import psycopg2.extras
from flask import Flask, jsonify, request, send_file

app = Flask(__name__)

DB_CONFIG = {
    "host": os.getenv("DB_HOST", "localhost"),
    "database": os.getenv("DB_NAME", "wechat_db"),
    "user": os.getenv("DB_USER", "postgres"),
    "password": os.getenv("DB_PASSWORD", ""),
    "port": os.getenv("DB_PORT", "5432"),
}


def get_db_connection():
    database_url = os.getenv("DATABASE_URL")
    if database_url:
        return psycopg2.connect(database_url)
    return psycopg2.connect(**DB_CONFIG)


@app.route("/", methods=["GET"])
def index():
    """返回前端页面"""
    return send_file("room_messages.html")


@app.route("/api/room-tree", methods=["GET"])
def get_room_tree():
    """
    获取群分类树形结构
    返回: 班级群（按段-阶-班级层级）+ 其他群
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 1. 获取班级群（有层级关联的群）
        cur.execute("""
            SELECT
                sec.id AS section_id,
                sec.name AS section_name,
                sec.sort_order AS section_order,
                json_agg(
                    json_build_object(
                        'level_id', l.id,
                        'level_name', l.name,
                        'level_order', l.sort_order,
                        'classes', (
                            SELECT COALESCE(json_agg(
                                json_build_object(
                                    'class_id', c.id,
                                    'class_name', c.name,
                                    'room_id', c.room_id,
                                    'room_name', COALESCE(NULLIF(rm.business_name, ''), NULLIF(rm.wecom_nickname, ''), c.name)
                                ) ORDER BY c.name
                            ), '[]'::json)
                            FROM v2.classes c
                            LEFT JOIN v2.wecom_id_mappings rm
                                ON rm.original_id = c.room_id AND rm.id_type = 'room_id'
                            WHERE c.level_id = l.id
                              AND c.is_active = TRUE
                              AND c.room_id IS NOT NULL
                              AND c.room_id <> ''
                        )
                    ) ORDER BY l.sort_order
                ) AS levels
            FROM v2.sections sec
            INNER JOIN v2.levels l ON l.section_id = sec.id
            WHERE sec.is_active = TRUE
            GROUP BY sec.id, sec.name, sec.sort_order
            ORDER BY sec.sort_order
        """)

        class_rooms = [dict(row) for row in cur.fetchall()]

        # 2. 获取非班级群（其他群）
        cur.execute("""
            SELECT
                rm.original_id AS room_id,
                COALESCE(NULLIF(rm.business_name, ''), NULLIF(rm.wecom_nickname, ''), rm.original_id) AS room_name,
                rm.notes
            FROM v2.wecom_id_mappings rm
            WHERE rm.id_type = 'room_id'
              AND rm.original_id NOT IN (
                  SELECT room_id FROM v2.classes
                  WHERE room_id IS NOT NULL AND room_id <> ''
              )
            ORDER BY rm.business_name, rm.original_id
        """)

        other_rooms = [dict(row) for row in cur.fetchall()]

        cur.close()
        conn.close()

        return jsonify({
            "status": "success",
            "tree": {
                "class_rooms": class_rooms,
                "other_rooms": other_rooms
            }
        })
    except Exception as e:
        print(f"Error in get_room_tree: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/room-stats", methods=["GET"])
def get_room_stats():
    """
    获取统计概览
    返回: 总群数、班级群数、其他群数、今日消息数等
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        cur.execute("""
            WITH class_room_ids AS (
                SELECT room_id FROM v2.classes
                WHERE room_id IS NOT NULL AND room_id <> ''
            ),
            all_rooms AS (
                SELECT original_id AS room_id FROM v2.wecom_id_mappings
                WHERE id_type = 'room_id'
            )
            SELECT
                (SELECT COUNT(*) FROM all_rooms) AS total_rooms,
                (SELECT COUNT(*) FROM class_room_ids) AS class_rooms_count,
                (SELECT COUNT(*) FROM all_rooms WHERE room_id NOT IN (SELECT room_id FROM class_room_ids)) AS other_rooms_count,
                (SELECT COUNT(*) FROM v2.wecom_chat_logs WHERE roomid IS NOT NULL AND roomid <> '' AND msgtime >= CURRENT_DATE) AS today_messages,
                (SELECT COUNT(*) FROM v2.wecom_chat_logs WHERE roomid IS NOT NULL AND roomid <> '' AND msgtime >= NOW() - INTERVAL '7 days') AS week_messages,
                (SELECT COUNT(DISTINCT roomid) FROM v2.wecom_chat_logs WHERE roomid IS NOT NULL AND roomid <> '' AND msgtime >= CURRENT_DATE) AS active_rooms_today
        """)

        stats = dict(cur.fetchone())

        # 转换None为0
        for key in stats:
            if stats[key] is None:
                stats[key] = 0

        cur.close()
        conn.close()

        return jsonify({"status": "success", "stats": stats})
    except Exception as e:
        print(f"Error in get_room_stats: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/room-messages", methods=["GET"])
def get_room_messages():
    """
    获取指定群的消息列表
    参数:
      - room_id: 群ID (必需)
      - start_time: 开始时间 (可选，默认30天前)
      - end_time: 结束时间 (可选，默认当前)
      - page: 页码 (可选，默认1)
      - page_size: 每页条数 (可选，默认50)
      - only_unmapped: 仅查看未映射家长消息 (可选，默认false)
    """
    room_id = request.args.get("room_id")
    if not room_id:
        return jsonify({"status": "error", "message": "缺少room_id参数"}), 400

    # 时间范围处理
    end_time = request.args.get("end_time")
    start_time = request.args.get("start_time")

    if end_time:
        try:
            end_dt = datetime.fromisoformat(end_time.replace('Z', '+00:00'))
        except ValueError:
            end_dt = datetime.now()
    else:
        end_dt = datetime.now()

    if start_time:
        try:
            start_dt = datetime.fromisoformat(start_time.replace('Z', '+00:00'))
        except ValueError:
            start_dt = end_dt - timedelta(days=30)
    else:
        start_dt = end_dt - timedelta(days=30)

    # 分页处理
    page = int(request.args.get("page", 1))
    page_size = int(request.args.get("page_size", 50))
    offset = (page - 1) * page_size
    only_unmapped = (request.args.get("only_unmapped") or "").lower() == "true"

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        base_where = """
            WHERE wcl.roomid = %s
              AND wcl.msgtime >= %s
              AND wcl.msgtime <= %s
        """
        params = [room_id, start_dt, end_dt]

        if only_unmapped:
            base_where += """
              AND wcl.from_user_id LIKE 'wmqDzZEw%%'
              AND COALESCE(NULLIF(um.business_name, ''), '') = ''
            """

        # 获取总数
        cur.execute(f"""
            SELECT COUNT(*) AS total
            FROM v2.wecom_chat_logs wcl
            LEFT JOIN v2.wecom_id_mappings um
                ON um.original_id = wcl.from_user_id AND um.id_type = 'user_id'
            {base_where}
        """, params)
        total_count = cur.fetchone()['total']

        # 获取消息列表
        cur.execute(f"""
            SELECT
                wcl.msgid,
                wcl.msgtime AT TIME ZONE 'Asia/Shanghai' AS msgtime,
                wcl.msgtype,
                wcl.from_user_id,
                COALESCE(NULLIF(um.business_name, ''), NULLIF(um.wecom_nickname, ''), wcl.from_user_id) AS sender_name,
                um.user_role AS sender_role,
                um.business_name AS sender_business_name,
                wcl.content_payload
            FROM v2.wecom_chat_logs wcl
            LEFT JOIN v2.wecom_id_mappings um
                ON um.original_id = wcl.from_user_id AND um.id_type = 'user_id'
            {base_where}
            ORDER BY wcl.msgtime DESC
            LIMIT %s OFFSET %s
        """, params + [page_size, offset])

        messages = []
        for row in cur.fetchall():
            msg = dict(row)
            msg['is_unmapped_parent'] = (
                msg.get('from_user_id', '').startswith('wmqDzZEw')
                and not (msg.get('sender_business_name') or '').strip()
            )
            # 处理日期格式
            if msg['msgtime']:
                msg['msgtime'] = msg['msgtime'].isoformat()
            # 提取消息内容
            if msg['content_payload']:
                payload = msg['content_payload']
                if isinstance(payload, str):
                    try:
                        payload = json.loads(payload)
                    except:
                        pass
                if isinstance(payload, dict):
                    msg['content'] = payload.get('content', payload.get('text', str(payload)))
                else:
                    msg['content'] = str(payload)
            else:
                msg['content'] = ''
            messages.append(msg)

        cur.close()
        conn.close()

        return jsonify({
            "status": "success",
            "room_id": room_id,
            "total_count": total_count,
            "page": page,
            "page_size": page_size,
            "total_pages": (total_count + page_size - 1) // page_size,
            "messages": messages
        })
    except Exception as e:
        print(f"Error in get_room_messages: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/room-detail/<room_id>", methods=["GET"])
def get_room_detail(room_id):
    """
    获取单个群的详细信息和统计
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 获取群基本信息
        cur.execute("""
            SELECT
                rm.original_id AS room_id,
                COALESCE(NULLIF(rm.business_name, ''), NULLIF(rm.wecom_nickname, ''), rm.original_id) AS room_name,
                rm.notes,
                c.id AS class_id,
                c.name AS class_name,
                l.name AS level_name,
                sec.name AS section_name
            FROM v2.wecom_id_mappings rm
            LEFT JOIN v2.classes c ON c.room_id = rm.original_id
            LEFT JOIN v2.levels l ON l.id = c.level_id
            LEFT JOIN v2.sections sec ON sec.id = l.section_id
            WHERE rm.id_type = 'room_id' AND rm.original_id = %s
        """, (room_id,))

        room_info = cur.fetchone()
        if not room_info:
            # 群不在映射表中，但可能有消息
            room_info = {
                'room_id': room_id,
                'room_name': room_id,
                'notes': None,
                'class_id': None,
                'class_name': None,
                'level_name': None,
                'section_name': None
            }
        else:
            room_info = dict(room_info)

        # 获取统计信息
        cur.execute("""
            SELECT
                COUNT(*) AS total_messages,
                COUNT(DISTINCT from_user_id) AS active_members,
                MAX(msgtime) AS last_message_time,
                MIN(msgtime) AS first_message_time,
                COUNT(CASE WHEN msgtime >= NOW() - INTERVAL '7 days' THEN 1 END) AS messages_7days,
                COUNT(CASE WHEN msgtime >= NOW() - INTERVAL '30 days' THEN 1 END) AS messages_30days,
                COUNT(CASE WHEN msgtime >= CURRENT_DATE THEN 1 END) AS messages_today
            FROM v2.wecom_chat_logs
            WHERE roomid = %s
        """, (room_id,))

        stats = dict(cur.fetchone())

        # 处理日期格式
        for key in ['last_message_time', 'first_message_time']:
            if stats[key]:
                stats[key] = stats[key].isoformat()

        # 转换None为0
        for key in ['total_messages', 'active_members', 'messages_7days', 'messages_30days', 'messages_today']:
            if stats[key] is None:
                stats[key] = 0

        room_info['stats'] = stats

        # 获取活跃成员列表
        cur.execute("""
            SELECT
                wcl.from_user_id,
                COALESCE(NULLIF(um.business_name, ''), NULLIF(um.wecom_nickname, ''), wcl.from_user_id) AS member_name,
                um.user_role,
                COUNT(*) AS message_count,
                MAX(wcl.msgtime) AS last_active
            FROM v2.wecom_chat_logs wcl
            LEFT JOIN v2.wecom_id_mappings um
                ON um.original_id = wcl.from_user_id AND um.id_type = 'user_id'
            WHERE wcl.roomid = %s
            GROUP BY wcl.from_user_id, member_name, um.user_role
            ORDER BY message_count DESC
            LIMIT 20
        """, (room_id,))

        members = []
        for row in cur.fetchall():
            member = dict(row)
            if member['last_active']:
                member['last_active'] = member['last_active'].isoformat()
            members.append(member)

        room_info['members'] = members

        cur.close()
        conn.close()

        return jsonify({"status": "success", "data": room_info})
    except Exception as e:
        print(f"Error in get_room_detail: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


if __name__ == "__main__":
    port = int(os.getenv("PORT", 5012))
    print(f"启动群消息查看服务，端口: {port}", file=sys.stderr)
    app.run(host="0.0.0.0", port=port, debug=True)
