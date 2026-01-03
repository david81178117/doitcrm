#!/usr/bin/env python3
"""
用户消息查询系统 v2 - Flask 后端
整合查询入口：同一输入支持用户姓名、学员姓名、用户ID检索。
保留页面布局与智能总结逻辑（Coze）。
"""
from datetime import datetime, timedelta
import json
import os
import sys
import time

import psycopg2
import psycopg2.extras
import requests
from flask import Flask, jsonify, request, send_file

app = Flask(__name__)

# Coze API 配置
COZE_API_ENDPOINT = os.getenv("COZE_API_ENDPOINT", "https://api.coze.cn/v3/chat")
COZE_TOKEN = os.getenv("COZE_TOKEN", "pat_s48QEakmtUKzi9C54JfycMcSTeke1lcwrUAzvhI4Igb3W3ikMvnDoWg9TYDJyLQ4")
COZE_BOT_ID = os.getenv("COZE_BOT_ID", "7588778847907119144")
COZE_TEACHER_BOT_ID = os.getenv("COZE_TEACHER_BOT_ID", "7590225611420352553")

print(f"Coze API配置: URL={COZE_API_ENDPOINT}, Bot ID={COZE_BOT_ID}", file=sys.stderr)

DB_CONFIG = {
    "host": os.getenv("DB_HOST", "localhost"),
    "database": os.getenv("DB_NAME", "wechat_db_legacy"),
    "user": os.getenv("DB_USER", "postgres"),
    "password": os.getenv("DB_PASSWORD", ""),
    "port": os.getenv("DB_PORT", "5432"),
}


def get_db_connection():
    database_url = os.getenv("DATABASE_URL")
    if database_url:
        return psycopg2.connect(database_url)
    return psycopg2.connect(**DB_CONFIG)


def _parse_time_range(start_time, end_time, default_days=30):
    if end_time:
        end_dt = datetime.fromisoformat(end_time.replace("Z", "+00:00"))
    else:
        end_dt = datetime.now()

    if start_time:
        start_dt = datetime.fromisoformat(start_time.replace("Z", "+00:00"))
    else:
        start_dt = end_dt - timedelta(days=default_days)

    return start_dt, end_dt


@app.route("/api/search-users", methods=["GET"])
def search_users():
    """
    统一搜索入口:
      - keyword: 用户姓名 / 学员姓名 / 用户ID（必填）
      - role: 角色过滤 ('parent' | 'teacher')
    """
    keyword = request.args.get("keyword") or request.args.get("name") or ""
    keyword = keyword.strip()
    role = request.args.get("role", "").strip()

    if not keyword:
        return jsonify({"status": "error", "message": "请输入关键词"}), 400

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        query = """
SELECT
    m.original_id,
    COALESCE(NULLIF(m.business_name, ''), NULLIF(m.wecom_nickname, ''), m.original_id) AS display_name,
    m.user_role,
    SUBSTRING(m.original_id, 1, 8) AS id_prefix,
    s.name AS student_name,
    s.english_name AS student_english_name,
    s.class_room_id AS student_class_room_id
FROM v2.wecom_id_mappings m
LEFT JOIN v2.wecom_user_student_rel rel
  ON rel.wecom_id = m.id AND rel.is_primary = TRUE
LEFT JOIN v2.students s
  ON s.id = rel.student_id
WHERE m.id_type = 'user_id'
"""

        params = []
        if role == "teacher":
            query += " AND m.user_role IN ('teacher', 'head_teacher')"
        else:
            query += " AND m.user_role = 'parent'"

        query += """
  AND (
        m.original_id ILIKE %s
        OR m.business_name ILIKE %s
        OR m.wecom_nickname ILIKE %s
        OR s.name ILIKE %s
        OR s.english_name ILIKE %s
  )
ORDER BY display_name, m.original_id
LIMIT 50
"""

        like = f"%{keyword}%"
        if role == "teacher":
            params.extend([like, like, like, "%__no_student__", "%__no_student__"])
        else:
            params.extend([like, like, like, like, like])

        cur.execute(query, params)
        results = cur.fetchall()

        cur.close()
        conn.close()

        return jsonify({"status": "success", "count": len(results), "users": [dict(row) for row in results]})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/filter-options", methods=["GET"])
def get_filter_options():
    """
    返回筛选下拉可选项（段/阶/班级/老师/班主任/学员）。
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        options = {}

        cur.execute(
            """
            SELECT id, name
            FROM v2.sections
            ORDER BY sort_order, name
            """
        )
        options["sections"] = [dict(row) for row in cur.fetchall()]

        cur.execute(
            """
            SELECT id, name, section_id
            FROM v2.levels
            ORDER BY sort_order, name
            """
        )
        options["levels"] = [dict(row) for row in cur.fetchall()]

        cur.execute(
            """
            SELECT
                c.id,
                c.name,
                c.room_id,
                c.level_id,
                l.section_id
            FROM v2.classes c
            JOIN v2.levels l ON l.id = c.level_id
            ORDER BY c.name
            """
        )
        options["classes"] = [dict(row) for row in cur.fetchall()]

        cur.execute(
            """
            SELECT original_id AS id,
                   COALESCE(NULLIF(business_name, ''), NULLIF(wecom_nickname, ''), original_id) AS name
            FROM v2.wecom_id_mappings
            WHERE id_type = 'user_id' AND user_role = 'teacher'
            ORDER BY name
            """
        )
        options["teachers"] = [dict(row) for row in cur.fetchall()]

        cur.execute(
            """
            SELECT original_id AS id,
                   COALESCE(NULLIF(business_name, ''), NULLIF(wecom_nickname, ''), original_id) AS name
            FROM v2.wecom_id_mappings
            WHERE id_type = 'user_id' AND user_role = 'head_teacher'
            ORDER BY name
            """
        )
        options["head_teachers"] = [dict(row) for row in cur.fetchall()]

        cur.execute(
            """
            SELECT DISTINCT name
            FROM v2.students
            WHERE name IS NOT NULL AND name <> ''
            ORDER BY name
            """
        )
        options["students"] = [row["name"] for row in cur.fetchall()]

        cur.close()
        conn.close()

        return jsonify({"status": "success", "options": options})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/filter-users", methods=["POST"])
def filter_users():
    """
    多维筛选用户（用于多选分析）
    """
    try:
        data = request.json or {}
        filters = data.get("filters", {})

        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        query = """
            SELECT
                m.original_id AS wechat_id,
                COALESCE(NULLIF(m.business_name, ''), NULLIF(m.wecom_nickname, ''), m.original_id) AS display_name,
                m.user_role,
                s.name AS student_name,
                s.english_name AS student_english_name,
                s.class_room_id AS student_class_room_id,
                msg.text_message_count
            FROM v2.wecom_id_mappings m
            LEFT JOIN v2.wecom_user_student_rel rel
                ON rel.wecom_id = m.id AND rel.is_primary = TRUE
            LEFT JOIN v2.students s
                ON s.id = rel.student_id
            LEFT JOIN v2.classes c
                ON c.id = s.class_id
            LEFT JOIN LATERAL (
                SELECT COUNT(*) AS text_message_count
                FROM v2.wecom_chat_logs wcl
                WHERE wcl.msgtype = 'text'
                  AND (
                    (wcl.roomid IS NOT NULL AND wcl.roomid <> '' AND wcl.from_user_id = m.original_id)
                    OR (
                        (wcl.roomid IS NULL OR wcl.roomid = '')
                        AND (wcl.from_user_id = m.original_id OR m.original_id = ANY(wcl.tolist))
                    )
                  )
            ) msg ON TRUE
            WHERE m.id_type = 'user_id'
        """
        params = []

        if filters.get("role"):
            if filters["role"] == "teacher":
                query += " AND m.user_role IN ('teacher', 'head_teacher')"
            else:
                query += " AND m.user_role = %s"
                params.append(filters["role"])

        if filters.get("keyword"):
            query += """
                AND (
                    m.original_id ILIKE %s
                    OR m.business_name ILIKE %s
                    OR m.wecom_nickname ILIKE %s
                    OR s.name ILIKE %s
                    OR s.english_name ILIKE %s
                )
            """
            like = f"%{filters['keyword']}%"
            params.extend([like, like, like, like, like])

        if filters.get("section_id"):
            query += " AND c.level_id IN (SELECT id FROM v2.levels WHERE section_id = %s)"
            params.append(filters["section_id"])

        if filters.get("level_id"):
            query += " AND c.level_id = %s"
            params.append(filters["level_id"])

        if filters.get("class_ids"):
            raw_class_ids = filters.get("class_ids") or []
            class_ids = []
            for value in raw_class_ids:
                try:
                    class_ids.append(int(value))
                except (TypeError, ValueError):
                    continue
            if class_ids:
                query += " AND c.id = ANY(%s)"
                params.append(class_ids)

        if filters.get("student_name"):
            query += " AND s.name = %s"
            params.append(filters["student_name"])

        if filters.get("teacher_id"):
            query += " AND m.original_id = %s"
            params.append(filters["teacher_id"])

        if filters.get("head_teacher_id"):
            query += " AND m.original_id = %s"
            params.append(filters["head_teacher_id"])

        query += " AND COALESCE(msg.text_message_count, 0) > 0"
        query += " ORDER BY msg.text_message_count DESC NULLS LAST LIMIT 500"

        cur.execute(query, params)
        users = [dict(row) for row in cur.fetchall()]

        cur.close()
        conn.close()

        return jsonify({"status": "success", "count": len(users), "users": users})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


def aggregate_multi_user_messages(user_ids, start_time, end_time, max_messages_per_user=100):
    conn = get_db_connection()
    cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

    user_message_data = []
    total_messages = 0

    for user_id in user_ids:
        cur.execute(
            """
            SELECT
                m.original_id AS wechat_id,
                COALESCE(NULLIF(m.business_name, ''), NULLIF(m.wecom_nickname, ''), m.original_id) AS display_name,
                m.user_role,
                s.name AS student_name
            FROM v2.wecom_id_mappings m
            LEFT JOIN v2.wecom_user_student_rel rel
                ON rel.wecom_id = m.id AND rel.is_primary = TRUE
            LEFT JOIN v2.students s
                ON s.id = rel.student_id
            WHERE m.id_type = 'user_id' AND m.original_id = %s
            """,
            (user_id,),
        )
        user_info = cur.fetchone()
        if not user_info:
            continue

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
            FROM v2.wecom_chat_logs
            WHERE (
                (roomid IS NOT NULL AND roomid <> '' AND from_user_id = %s)
                OR (
                    (roomid IS NULL OR roomid = '')
                    AND (from_user_id = %s OR tolist[1] = %s)
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

        user_message_data.append(
            {
                "user_id": user_id,
                "user_info": dict(user_info),
                "messages": [dict(m) for m in messages],
                "message_count": len(messages),
            }
        )
        total_messages += len(messages)

    cur.close()
    conn.close()

    user_message_data.sort(key=lambda x: x["message_count"], reverse=True)

    aggregated = []
    for data in user_message_data:
        user_info = data["user_info"]
        messages = data["messages"]

        aggregated.append(f"\n{'='*80}")
        display_name = user_info["display_name"] or user_info["wechat_id"][:16]
        aggregated.append(f"用户: {display_name} ({user_info['wechat_id'][:16]}...)")
        student_info = f"学员: {user_info['student_name']}" if user_info.get("student_name") else "学员: 未关联"
        aggregated.append(f"{student_info} | 消息总数: {data['message_count']}条")
        aggregated.append("=" * 80)

        for msg in messages:
            direction = "我" if msg["message_direction"] == "sent" else "对方"
            time_str = msg["msgtime_local"].strftime("%m-%d %H:%M:%S")
            content = (msg["content_payload"].get("content", "") if msg["content_payload"] else "")[:100]
            aggregated.append(f"{time_str}  {direction}  {content}")

        aggregated.append("")

    return {
        "text": "\n".join(aggregated),
        "total_users": len(user_message_data),
        "total_messages": total_messages,
    }


def call_coze_api_simple(aggregated_messages: str, bot_id: str) -> str:
    headers = {"Authorization": f"Bearer {COZE_TOKEN}", "Content-Type": "application/json"}
    payload = {
        "bot_id": bot_id,
        "user_id": f"multi_user_analysis_{int(time.time())}",
        "stream": True,
        "auto_save_history": True,
        "additional_messages": [
            {"role": "user", "content": aggregated_messages, "content_type": "text"}
        ],
    }

    response = requests.post(
        COZE_API_ENDPOINT, headers=headers, json=payload, timeout=120, stream=True
    )
    response.raise_for_status()

    full_text = ""
    current_event = None

    for line in response.iter_lines():
        if not line:
            continue
        line_str = line.decode("utf-8")

        if line_str.startswith("event:"):
            current_event = line_str[6:].strip()
            continue

        if line_str.startswith("data:"):
            data_str = line_str[5:].strip()
            if data_str == '"[DONE]"' or data_str == "[DONE]":
                break
            try:
                data = json.loads(data_str)
                if data.get("type") == "answer":
                    content = data.get("content", "")
                    if current_event == "conversation.message.delta":
                        full_text += content
                    elif current_event == "conversation.message.completed":
                        full_text = content
            except json.JSONDecodeError:
                continue

    if not full_text:
        raise Exception("Coze API 返回了空的总结")

    return full_text


@app.route("/api/aggregate-messages", methods=["POST"])
def aggregate_messages():
    try:
        data = request.json or {}
        user_ids = data.get("user_ids", [])
        start_time_str = data.get("start_time")
        end_time_str = data.get("end_time")
        max_messages_per_user = data.get("max_messages_per_user", 100)

        if not user_ids:
            return jsonify({"status": "error", "message": "缺少user_ids参数"}), 400

        try:
            start_dt, end_dt = _parse_time_range(start_time_str, end_time_str)
        except ValueError as e:
            return jsonify({"status": "error", "message": f"时间格式错误: {str(e)}"}), 400

        aggregated_data = aggregate_multi_user_messages(
            user_ids, start_dt, end_dt, max_messages_per_user
        )

        return jsonify(
            {
                "status": "success",
                "total_users": aggregated_data["total_users"],
                "total_messages": aggregated_data["total_messages"],
                "aggregated_text": aggregated_data["text"],
            }
        )
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/multi-user-analysis", methods=["POST"])
def multi_user_analysis():
    try:
        data = request.json or {}
        user_ids = data.get("user_ids", [])
        start_time_str = data.get("start_time")
        end_time_str = data.get("end_time")
        aggregated_text = (data.get("aggregated_text") or "").strip()
        total_users = data.get("total_users")
        total_messages = data.get("total_messages")
        mode = data.get("mode", "parent")

        if not user_ids:
            return jsonify({"status": "error", "message": "缺少user_ids参数"}), 400

        try:
            start_dt, end_dt = _parse_time_range(start_time_str, end_time_str)
        except ValueError as e:
            return jsonify({"status": "error", "message": f"时间格式错误: {str(e)}"}), 400

        if aggregated_text:
            try:
                total_users = int(total_users) if total_users is not None else len(user_ids)
            except (TypeError, ValueError):
                total_users = len(user_ids)
            try:
                total_messages = int(total_messages) if total_messages is not None else 0
            except (TypeError, ValueError):
                total_messages = 0
        else:
            aggregated_data = aggregate_multi_user_messages(user_ids, start_dt, end_dt, max_messages_per_user=100)
            if aggregated_data["total_messages"] == 0:
                return jsonify({"status": "error", "message": "该时间范围内没有消息数据"}), 400
            aggregated_text = aggregated_data["text"]
            total_users = aggregated_data["total_users"]
            total_messages = aggregated_data["total_messages"]

        start_time = time.time()
        bot_id = COZE_TEACHER_BOT_ID if mode == "teacher" and COZE_TEACHER_BOT_ID else COZE_BOT_ID
        analysis_result = call_coze_api_simple(aggregated_text, bot_id)
        duration_ms = int((time.time() - start_time) * 1000)

        return jsonify(
            {
                "status": "success",
                "analysis": analysis_result,
                "duration_ms": duration_ms,
                "user_count": total_users,
                "message_count": total_messages,
            }
        )
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/user-messages", methods=["GET"])
def get_user_messages():
    user_id = request.args.get("user_id", "").strip()
    if not user_id:
        return jsonify({"status": "error", "message": "缺少user_id参数"}), 400

    try:
        start_dt, end_dt = _parse_time_range(request.args.get("start_time"), request.args.get("end_time"))
    except ValueError as e:
        return jsonify({"status": "error", "message": str(e)}), 400

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        query = """
            WITH user_messages AS (
                SELECT
                    msgid, msgtime, msgtype, from_user_id, roomid, tolist, content_payload
                FROM v2.wecom_chat_logs
                WHERE (
                    (roomid IS NOT NULL AND roomid <> '' AND from_user_id = %s)
                    OR (
                        (roomid IS NULL OR roomid = '')
                        AND (from_user_id = %s OR tolist[1] = %s)
                    )
                )
                AND msgtime >= %s
                AND msgtime <= %s
            ),
            grouped_messages AS (
                SELECT
                    msgid,
                    msgtime AT TIME ZONE 'Asia/Shanghai' as msgtime_local,
                    msgtype,
                    from_user_id,
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
                    gm.conversation_key,
                    gm.conversation_type,
                    CASE
                        WHEN gm.conversation_type = 'group'
                        THEN COALESCE(rm.business_name, rm.wecom_nickname, gm.conversation_key)
                        ELSE COALESCE(
                            um.business_name,
                            um.wecom_nickname,
                            SUBSTRING(gm.conversation_key FROM 9)
                        )
                    END as conversation_name,
                    COUNT(*) OVER (PARTITION BY gm.conversation_key) as message_count,
                    MIN(gm.msgtime_local) OVER (PARTITION BY gm.conversation_key) as first_message_time,
                    MAX(gm.msgtime_local) OVER (PARTITION BY gm.conversation_key) as last_message_time
                FROM grouped_messages gm
                LEFT JOIN v2.wecom_id_mappings rm
                    ON gm.conversation_key = rm.original_id
                    AND rm.id_type = 'room_id'
                LEFT JOIN v2.wecom_id_mappings um
                    ON SUBSTRING(gm.conversation_key FROM 9) = um.original_id
                    AND um.id_type = 'user_id'
            )
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

        cur.execute(
            query,
            (
                user_id,
                user_id,
                user_id,
                start_dt,
                end_dt,
                user_id,
                user_id,
            ),
        )
        results = cur.fetchall()

        cur.close()
        conn.close()

        conversations = []
        for row in results:
            conversations.append(
                {
                    "conversation_key": row["conversation_key"],
                    "conversation_type": row["conversation_type"],
                    "conversation_name": row["conversation_name"],
                    "message_count": row["message_count"],
                    "first_message_time": row["first_message_time"].isoformat()
                    if row["first_message_time"]
                    else None,
                    "last_message_time": row["last_message_time"].isoformat() if row["last_message_time"] else None,
                    "messages": row["messages"],
                }
            )

        return jsonify(
            {
                "status": "success",
                "user_id": user_id,
                "start_time": start_dt.isoformat(),
                "end_time": end_dt.isoformat(),
                "conversation_count": len(conversations),
                "conversations": conversations,
            }
        )

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/update-student-info", methods=["POST"])
def update_student_info():
    try:
        data = request.json or {}
        user_id = data.get("user_id", "").strip()
        student_name = data.get("student_name", "").strip()
        student_english_name = data.get("student_english_name", "").strip()
        student_class_room_id = data.get("student_class_room_id", "").strip()

        if not user_id:
            return jsonify({"status": "error", "message": "缺少user_id参数"}), 400

        conn = get_db_connection()
        cur = conn.cursor()

        cur.execute(
            "SELECT id FROM v2.wecom_id_mappings WHERE id_type = 'user_id' AND original_id = %s",
            (user_id,),
        )
        row = cur.fetchone()
        if not row:
            conn.rollback()
            cur.close()
            conn.close()
            return jsonify({"status": "error", "message": "用户不存在"}), 404

        wecom_id = row[0]

        if student_name:
            cur.execute(
                """
                SELECT id FROM v2.students
                WHERE name = %s
                  AND (english_name IS NOT DISTINCT FROM %s)
                  AND (class_room_id IS NOT DISTINCT FROM %s)
                """,
                (student_name, student_english_name or None, student_class_room_id or None),
            )
            student_row = cur.fetchone()
            if student_row:
                student_id = student_row[0]
            else:
                cur.execute(
                    """
                    INSERT INTO v2.students (name, english_name, class_room_id, created_at, updated_at)
                    VALUES (%s, %s, %s, NOW(), NOW())
                    RETURNING id
                    """,
                    (student_name, student_english_name or None, student_class_room_id or None),
                )
                student_id = cur.fetchone()[0]

            cur.execute("DELETE FROM v2.wecom_user_student_rel WHERE wecom_id = %s", (wecom_id,))
            cur.execute(
                """
                INSERT INTO v2.wecom_user_student_rel
                    (wecom_id, student_id, relation, is_primary, created_at)
                VALUES (%s, %s, 'other', TRUE, NOW())
                """,
                (wecom_id, student_id),
            )
        else:
            cur.execute("DELETE FROM v2.wecom_user_student_rel WHERE wecom_id = %s", (wecom_id,))

        conn.commit()
        cur.close()
        conn.close()

        return jsonify({"status": "success", "message": "学员信息更新成功"})
    except Exception as e:
        return jsonify({"status": "error", "message": f"服务器错误: {str(e)}"}), 500


@app.route("/api/summarize-messages", methods=["POST"])
def summarize_messages():
    if not COZE_TOKEN or not COZE_BOT_ID:
        return jsonify({"status": "error", "message": "Coze API未配置"}), 500

    try:
        data = request.json or {}
        user_id = data.get("user_id", "").strip()
        user_name = data.get("user_name", "未知用户")
        start_time_str = data.get("start_time", "")
        end_time_str = data.get("end_time", "")
        mode = data.get("mode", "parent")

        if not user_id:
            return jsonify({"status": "error", "message": "缺少user_id参数"}), 400

        try:
            start_dt, end_dt = _parse_time_range(start_time_str, end_time_str)
        except ValueError as e:
            return jsonify({"status": "error", "message": f"时间格式错误: {str(e)}"}), 400

        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        query = """
            WITH user_messages AS (
                SELECT
                    msgid, msgtime, msgtype, from_user_id, roomid, tolist, content_payload
                FROM v2.wecom_chat_logs
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
                        THEN COALESCE(rm.business_name, rm.wecom_nickname, gm.conversation_key)
                        ELSE COALESCE(
                            um.business_name,
                            um.wecom_nickname,
                            SUBSTRING(gm.conversation_key FROM 9)
                        )
                    END as conversation_name
                FROM grouped_messages gm
                LEFT JOIN v2.wecom_id_mappings rm ON gm.conversation_key = rm.original_id AND rm.id_type = 'room_id'
                LEFT JOIN v2.wecom_id_mappings um ON SUBSTRING(gm.conversation_key FROM 9) = um.original_id AND um.id_type = 'user_id'
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
            return jsonify({"status": "error", "message": "该时间范围内没有消息数据"}), 400

        formatted_messages = _format_messages_for_coze(conversations, user_name, start_dt, end_dt)
        bot_id = COZE_TEACHER_BOT_ID if mode == "teacher" and COZE_TEACHER_BOT_ID else COZE_BOT_ID
        summary_text = _call_coze_api(formatted_messages, user_id, bot_id)

        total_messages = sum(conv["message_count"] for conv in conversations)

        return jsonify(
            {
                "status": "success",
                "summary": summary_text,
                "message_count": total_messages,
                "conversation_count": len(conversations),
            }
        )
    except Exception as e:
        return jsonify({"status": "error", "message": f"服务器错误: {str(e)}"}), 500


def _format_messages_for_coze(conversations, user_name, start_dt, end_dt):
    lines = []
    lines.append(f"{user_name} ({start_dt.strftime('%Y-%m-%d')} ~ {end_dt.strftime('%Y-%m-%d')})")
    lines.append("")

    for conv in conversations:
        conv_type_text = "群聊" if conv["conversation_type"] == "group" else "私聊"
        lines.append(f"【{conv_type_text}: {conv['conversation_name']}】({conv['message_count']}条消息)")
        lines.append("")

        messages = conv["messages"][:100] if len(conv["messages"]) > 100 else conv["messages"]

        for msg in messages:
            direction_symbol = "我" if msg["direction"] == "sent" else "对方"
            time_str = (
                msg["msgtime"].strftime("%m-%d %H:%M")
                if isinstance(msg["msgtime"], datetime)
                else str(msg["msgtime"])[:16]
            )
            content = msg["content"][:200] if msg["content"] else ""
            lines.append(f"  {time_str}  {direction_symbol}  {content}")

        if len(conv["messages"]) > 100:
            lines.append(f"  ... (省略{len(conv['messages']) - 100}条消息)")
        lines.append("")

    return "\n".join(lines)


def _call_coze_api(formatted_messages, user_id, bot_id):
    headers = {"Authorization": f"Bearer {COZE_TOKEN}", "Content-Type": "application/json"}
    payload = {
        "bot_id": bot_id,
        "user_id": f"user_messages_{user_id}_{int(time.time())}",
        "stream": True,
        "auto_save_history": True,
        "additional_messages": [
            {"role": "user", "content": formatted_messages, "content_type": "text"}
        ],
    }

    response = requests.post(
        COZE_API_ENDPOINT, headers=headers, json=payload, timeout=120, stream=True
    )
    response.raise_for_status()

    full_text = ""
    current_event = None

    for line in response.iter_lines():
        if not line:
            continue
        line_str = line.decode("utf-8")

        if line_str.startswith("event:"):
            current_event = line_str[6:].strip()
            continue

        if line_str.startswith("data:"):
            data_str = line_str[5:].strip()
            if data_str == '"[DONE]"' or data_str == "[DONE]":
                break
            try:
                data = json.loads(data_str)
                if data.get("type") == "answer":
                    content = data.get("content", "")
                    if current_event == "conversation.message.delta":
                        full_text += content
                    elif current_event == "conversation.message.completed":
                        full_text = content
            except json.JSONDecodeError:
                continue

    if not full_text:
        raise Exception("Coze API 返回了空的总结")

    return full_text


@app.route("/")
def index():
    return send_file(os.path.join(os.path.dirname(__file__), "user_messages.html"))


@app.after_request
def after_request(response):
    response.headers.add("Access-Control-Allow-Origin", "*")
    response.headers.add("Access-Control-Allow-Headers", "Content-Type")
    response.headers.add("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE")
    return response


if __name__ == "__main__":
    print("=" * 60)
    print("用户消息查询系统 v2")
    print("=" * 60)
    print(f"  数据库: {DB_CONFIG['database']}")
    print(f"  用户: {DB_CONFIG['user']}")
    print("=" * 60)
    port = int(os.getenv("PORT", "5006"))
    print(f"访问地址: http://localhost:{port}")
    print("=" * 60)
    app.run(debug=True, port=port, host="0.0.0.0")
