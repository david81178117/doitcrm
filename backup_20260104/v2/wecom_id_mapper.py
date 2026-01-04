#!/usr/bin/env python3
import json
import os
import time
from datetime import datetime, timedelta, timezone

import psycopg2
import psycopg2.extras
import requests
from flask import Flask, jsonify, request, send_file


app = Flask(__name__)

DB_CONFIG = {
    "host": os.getenv("DB_HOST", "localhost"),
    "database": os.getenv("DB_NAME", "wechat_db_legacy"),
    "user": os.getenv("DB_USER", "postgres"),
    "password": os.getenv("DB_PASSWORD", ""),
    "port": os.getenv("DB_PORT", "5432"),
}

WECOM_CONFIG = {
    "corp_id": os.getenv("WECOM_CORP_ID", "ww3036e4989a99bb2d"),
    "secret": os.getenv("WECOM_SECRET", "S8UqG5CSPKWQEi7SmJTvPmLKGvRfuWDPQZOzQwdbajU"),
}

_access_token_cache = {"token": None, "expires_at": 0}


def get_db_connection():
    database_url = os.getenv("DATABASE_URL")
    if database_url:
        return psycopg2.connect(database_url)
    return psycopg2.connect(**DB_CONFIG)


def parse_date(value, end=False):
    if not value:
        return None, False
    try:
        if len(value) == 10:
            dt = datetime.fromisoformat(value)
            if end:
                return dt + timedelta(days=1), True
            return dt, False
        return datetime.fromisoformat(value), False
    except ValueError:
        return None, False


def get_access_token():
    if _access_token_cache["token"] and time.time() < _access_token_cache["expires_at"] - 300:
        return _access_token_cache["token"]

    if not WECOM_CONFIG["corp_id"] or not WECOM_CONFIG["secret"]:
        return None

    url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken"
    params = {"corpid": WECOM_CONFIG["corp_id"], "corpsecret": WECOM_CONFIG["secret"]}

    try:
        response = requests.get(url, params=params, timeout=10)
        result = response.json()
        if result.get("errcode") == 0:
            _access_token_cache["token"] = result["access_token"]
            _access_token_cache["expires_at"] = time.time() + result.get("expires_in", 7200)
            return _access_token_cache["token"]
        return None
    except Exception:
        return None


def get_external_contact_detail(external_userid):
    access_token = get_access_token()
    if not access_token:
        return None

    url = "https://qyapi.weixin.qq.com/cgi-bin/externalcontact/get"
    params = {"access_token": access_token, "external_userid": external_userid}
    try:
        response = requests.get(url, params=params, timeout=10)
        result = response.json()
        if result.get("errcode") == 0:
            return result.get("external_contact")
        return None
    except Exception:
        return None


def get_user_detail(userid):
    access_token = get_access_token()
    if not access_token:
        return None

    url = "https://qyapi.weixin.qq.com/cgi-bin/user/get"
    params = {"access_token": access_token, "userid": userid}
    try:
        response = requests.get(url, params=params, timeout=10)
        result = response.json()
        if result.get("errcode") == 0:
            return result
        return None
    except Exception:
        return None


def get_group_chat_detail(chat_id):
    access_token = get_access_token()
    if not access_token:
        return None

    url = "https://qyapi.weixin.qq.com/cgi-bin/externalcontact/groupchat/get"
    params = {"access_token": access_token}
    data = {"chat_id": chat_id, "need_name": 1}
    try:
        response = requests.post(url, params=params, json=data, timeout=10)
        result = response.json()
        if result.get("errcode") == 0:
            return result.get("group_chat")
        return None
    except Exception:
        return None


def fetch_wecom_nickname(id_type, original_id):
    if id_type == "user_id":
        if original_id.startswith("wm") or original_id.startswith("wo"):
            contact = get_external_contact_detail(original_id)
            if contact:
                return contact.get("name")
        else:
            user = get_user_detail(original_id)
            if user:
                return user.get("name")
    elif id_type == "room_id":
        if original_id.startswith("wr"):
            group = get_group_chat_detail(original_id)
            if group:
                return group.get("name") or f"群聊({group.get('member_count', 0)}人)"
    return None


@app.route("/api/stats", methods=["GET"])
def get_stats():
    try:
        conn = get_db_connection()
        cur = conn.cursor()

        cur.execute(
            """
            SELECT
                COUNT(*) AS total,
                COUNT(*) FILTER (WHERE business_name IS NOT NULL AND business_name <> '') AS mapped
            FROM v2.wecom_id_mappings
            WHERE id_type = 'room_id'
            """
        )
        room_total, room_mapped = cur.fetchone()

        cur.execute(
            """
            SELECT
                COUNT(*) AS total,
                COUNT(*) FILTER (WHERE business_name IS NOT NULL AND business_name <> '') AS mapped,
                COUNT(*) FILTER (WHERE user_role = 'parent') AS parents,
                COUNT(*) FILTER (WHERE user_role = 'teacher') AS teachers
            FROM v2.wecom_id_mappings
            WHERE id_type = 'user_id'
            """
        )
        user_total, user_mapped, parents, teachers = cur.fetchone()

        cur.close()
        conn.close()

        return jsonify(
            {
                "rooms": {
                    "total": room_total,
                    "mapped": room_mapped,
                    "unmapped": room_total - room_mapped,
                },
                "users": {
                    "total": user_total,
                    "mapped": user_mapped,
                    "unmapped": user_total - user_mapped,
                    "parents": parents,
                    "teachers": teachers,
                },
            }
        )
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/extract-all-ids", methods=["POST"])
def extract_all_ids():
    try:
        conn = get_db_connection()
        cur = conn.cursor()

        cur.execute(
            """
            INSERT INTO v2.wecom_id_mappings (id_type, original_id)
            SELECT DISTINCT 'room_id', roomid
            FROM v2.wecom_chat_logs
            WHERE roomid IS NOT NULL AND roomid <> ''
            ON CONFLICT (id_type, original_id) DO NOTHING;
            """
        )

        cur.execute(
            """
            INSERT INTO v2.wecom_id_mappings (id_type, original_id)
            SELECT DISTINCT 'user_id', from_user_id
            FROM v2.wecom_chat_logs
            WHERE from_user_id IS NOT NULL AND from_user_id <> ''
            ON CONFLICT (id_type, original_id) DO NOTHING;
            """
        )

        cur.execute(
            """
            INSERT INTO v2.wecom_id_mappings (id_type, original_id)
            SELECT DISTINCT 'user_id', unnest(tolist)
            FROM v2.wecom_chat_logs
            WHERE roomid IS NOT NULL AND roomid <> ''
              AND tolist IS NOT NULL
            ON CONFLICT (id_type, original_id) DO NOTHING;
            """
        )

        conn.commit()
        cur.close()
        conn.close()

        return jsonify({"status": "success", "message": "提取完成（不覆盖已有记录）"})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/mappings/<id_type>", methods=["GET"])
def get_mappings(id_type):
    if id_type not in ("room_id", "user_id"):
        return jsonify({"status": "error", "message": "invalid id_type"}), 400

    keyword = (request.args.get("keyword") or "").strip()
    only_unmapped = (request.args.get("only_unmapped") or "").lower() == "true"
    roomid = (request.args.get("roomid") or "").strip()
    start_raw = request.args.get("start_date")
    end_raw = request.args.get("end_date")
    start_dt, _ = parse_date(start_raw)
    end_dt, end_is_exclusive = parse_date(end_raw, end=True)

    params = [id_type]
    where_clauses = ["m.id_type = %s"]

    if only_unmapped:
        where_clauses.append("(m.business_name IS NULL OR m.business_name = '')")

    if keyword:
        where_clauses.append(
            "(m.original_id ILIKE %s OR m.business_name ILIKE %s OR m.wecom_nickname ILIKE %s)"
        )
        like = f"%{keyword}%"
        params.extend([like, like, like])

    time_filters = []
    if start_dt:
        time_filters.append("wcl.msgtime >= %s")
        params.append(start_dt)
    if end_dt:
        op = "<" if end_is_exclusive else "<="
        time_filters.append(f"wcl.msgtime {op} %s")
        params.append(end_dt)

    if id_type == "room_id":
        if time_filters:
            where_clauses.append(
                f"""
                EXISTS (
                    SELECT 1 FROM v2.wecom_chat_logs wcl
                    WHERE wcl.roomid = m.original_id
                      AND wcl.roomid IS NOT NULL AND wcl.roomid <> ''
                      AND {' AND '.join(time_filters)}
                )
                """
            )
    else:
        if roomid:
            where_clauses.append(
                """
                EXISTS (
                    SELECT 1 FROM v2.wecom_chat_logs wcl
                    LEFT JOIN v2.wecom_id_mappings rm
                      ON rm.id_type = 'room_id' AND rm.original_id = wcl.roomid
                    WHERE wcl.roomid IS NOT NULL AND wcl.roomid <> ''
                      AND (wcl.from_user_id = m.original_id OR m.original_id = ANY(wcl.tolist))
                      AND (wcl.roomid = %s OR rm.business_name ILIKE %s)
                )
                """
            )
            params.extend([roomid, f"%{roomid}%"])
        if time_filters:
            where_clauses.append(
                f"""
                EXISTS (
                    SELECT 1 FROM v2.wecom_chat_logs wcl
                    WHERE (wcl.from_user_id = m.original_id OR m.original_id = ANY(wcl.tolist))
                      AND {' AND '.join(time_filters)}
                )
                """
            )

    where_sql = " AND ".join(where_clauses)

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        if id_type == "room_id":
            cur.execute(
                f"""
                SELECT
                    m.id,
                    m.id_type,
                    m.original_id,
                    m.wecom_nickname,
                    m.business_name,
                    m.user_role,
                    m.notes,
                    m.is_mapped,
                    m.created_at,
                    m.updated_at
                FROM v2.wecom_id_mappings m
                WHERE {where_sql}
                ORDER BY
                    CASE WHEN m.business_name IS NULL OR m.business_name = '' THEN 1 ELSE 0 END,
                    m.business_name,
                    m.original_id
                """,
                params,
            )
        else:
            cur.execute(
                f"""
                SELECT
                    m.id,
                    m.id_type,
                    m.original_id,
                    m.wecom_nickname,
                    m.business_name,
                    m.user_role,
                    m.notes,
                    m.is_mapped,
                    m.created_at,
                    m.updated_at,
                    lr.roomid AS last_roomid,
                    lr.msgtime AS last_room_time,
                    COALESCE(NULLIF(lr.business_name, ''), NULLIF(lr.wecom_nickname, ''), lr.roomid) AS last_room_name,
                    s.id AS student_id,
                    s.name AS student_name,
                    s.english_name AS student_english_name,
                    s.status AS student_status,
                    COALESCE(c.name, s.class_room_id) AS student_class_name,
                    COALESCE(c.room_id, s.class_room_id) AS student_class_room_id
                FROM v2.wecom_id_mappings m
                LEFT JOIN LATERAL (
                    SELECT
                        wcl.roomid,
                        wcl.msgtime,
                        NULLIF(rm.business_name, '') AS business_name,
                        NULLIF(rm.wecom_nickname, '') AS wecom_nickname
                    FROM v2.wecom_chat_logs wcl
                    LEFT JOIN v2.wecom_id_mappings rm
                        ON rm.id_type = 'room_id' AND rm.original_id = wcl.roomid
                    WHERE wcl.roomid IS NOT NULL AND wcl.roomid <> ''
                      AND (wcl.from_user_id = m.original_id OR m.original_id = ANY(wcl.tolist))
                    ORDER BY msgtime DESC
                    LIMIT 1
                ) lr ON TRUE
                LEFT JOIN v2.wecom_user_student_rel rel
                    ON rel.wecom_id = m.id AND rel.is_primary = TRUE
                LEFT JOIN v2.students s
                    ON s.id = rel.student_id
                LEFT JOIN v2.classes c
                    ON c.id = s.class_id
                WHERE {where_sql}
                ORDER BY
                    CASE WHEN m.business_name IS NULL OR m.business_name = '' THEN 1 ELSE 0 END,
                    m.business_name,
                    m.original_id
                """,
                params,
            )

        rows = cur.fetchall()
        cur.close()
        conn.close()
        return jsonify(rows)
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/mappings/<id_type>/<original_id>", methods=["PUT"])
def update_mapping(id_type, original_id):
    if id_type not in ("room_id", "user_id"):
        return jsonify({"status": "error", "message": "invalid id_type"}), 400

    data = request.json or {}
    business_name = (data.get("business_name") or "").strip()
    user_role = data.get("user_role")
    notes = (data.get("notes") or "").strip()
    student_name = (data.get("student_name") or "").strip()
    student_english_name = (data.get("student_english_name") or "").strip()
    student_class_room_id = (data.get("student_class_room_id") or "").strip()
    student_id = data.get("student_id")
    student_status = (data.get("student_status") or "").strip()

    try:
        conn = get_db_connection()
        cur = conn.cursor()

        cur.execute(
            """
            UPDATE v2.wecom_id_mappings
            SET business_name = %s,
                user_role = %s,
                notes = %s,
                is_mapped = %s,
                updated_at = NOW()
            WHERE id_type = %s AND original_id = %s
            RETURNING id
            """,
            (
                business_name or None,
                user_role,
                notes or None,
                bool(business_name),
                id_type,
                original_id,
            ),
        )
        row = cur.fetchone()
        if not row:
            conn.rollback()
            cur.close()
            conn.close()
            return jsonify({"status": "error", "message": "记录不存在"}), 404

        wecom_id = row[0]

        if id_type == "user_id":
            if user_role == "parent":
                if not student_id:
                    conn.rollback()
                    cur.close()
                    conn.close()
                    return jsonify({"status": "error", "message": "请选择花名册中的学员"}), 400
                cur.execute("SELECT id FROM v2.students WHERE id = %s", (student_id,))
                if not cur.fetchone():
                    conn.rollback()
                    cur.close()
                    conn.close()
                    return jsonify({"status": "error", "message": "学员不存在或未导入花名册"}), 400
                if student_english_name or student_status:
                    cur.execute(
                        """
                        UPDATE v2.students
                        SET english_name = COALESCE(%s, english_name),
                            status = COALESCE(NULLIF(%s, ''), status),
                            updated_at = NOW()
                        WHERE id = %s
                        """,
                        (
                            student_english_name or None,
                            student_status,
                            student_id,
                        ),
                    )
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
        return jsonify({"status": "success", "message": "保存成功"})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/fetch-wecom-name/<id_type>/<path:original_id>", methods=["GET"])
def fetch_wecom_name(id_type, original_id):
    if not get_access_token():
        return jsonify({"status": "error", "message": "企业微信配置缺失或无效"}), 400
    name = fetch_wecom_nickname(id_type, original_id)
    if name:
        return jsonify({"status": "success", "name": name})
    return jsonify({"status": "not_found", "message": "未能从企业微信获取昵称"})


@app.route("/api/batch-fetch-wecom-names", methods=["POST"])
def batch_fetch_wecom_names():
    data = request.json or {}
    id_type = data.get("id_type", "user_id")
    limit = min(int(data.get("limit", 50)), 100)
    only_unmapped = bool(data.get("only_unmapped", True))
    keyword = (data.get("keyword") or "").strip()
    roomid = (data.get("roomid") or "").strip()
    start_raw = data.get("start_date")
    end_raw = data.get("end_date")
    start_dt, _ = parse_date(start_raw)
    end_dt, end_is_exclusive = parse_date(end_raw, end=True)

    try:
        if not get_access_token():
            return jsonify({"status": "error", "message": "企业微信配置缺失或无效"}), 400

        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        params = [id_type]
        where_clauses = ["m.id_type = %s"]

        if only_unmapped:
            where_clauses.append("(m.wecom_nickname IS NULL OR m.wecom_nickname = '')")

        if keyword:
            where_clauses.append("(m.original_id ILIKE %s OR m.business_name ILIKE %s)")
            like = f"%{keyword}%"
            params.extend([like, like])

        time_filters = []
        if start_dt:
            time_filters.append("wcl.msgtime >= %s")
            params.append(start_dt)
        if end_dt:
            op = "<" if end_is_exclusive else "<="
            time_filters.append(f"wcl.msgtime {op} %s")
            params.append(end_dt)

        if id_type == "room_id":
            if time_filters:
                where_clauses.append(
                    f"""
                    EXISTS (
                        SELECT 1 FROM v2.wecom_chat_logs wcl
                        WHERE wcl.roomid = m.original_id
                          AND wcl.roomid IS NOT NULL AND wcl.roomid <> ''
                          AND {' AND '.join(time_filters)}
                    )
                    """
                )
        else:
            if roomid:
                where_clauses.append(
                    """
                    EXISTS (
                        SELECT 1 FROM v2.wecom_chat_logs wcl
                        WHERE wcl.roomid = %s
                          AND wcl.roomid IS NOT NULL AND wcl.roomid <> ''
                          AND (wcl.from_user_id = m.original_id OR m.original_id = ANY(wcl.tolist))
                    )
                    """
                )
                params.append(roomid)
            if time_filters:
                where_clauses.append(
                    f"""
                    EXISTS (
                        SELECT 1 FROM v2.wecom_chat_logs wcl
                        WHERE (wcl.from_user_id = m.original_id OR m.original_id = ANY(wcl.tolist))
                          AND {' AND '.join(time_filters)}
                    )
                    """
                )

        where_sql = " AND ".join(where_clauses)

        cur.execute(
            f"""
            SELECT m.original_id
            FROM v2.wecom_id_mappings m
            WHERE {where_sql}
            LIMIT %s
            """,
            params + [limit],
        )

        rows = cur.fetchall()
        results = []
        success_count = 0
        fail_count = 0

        for row in rows:
            original_id = row["original_id"]
            name = fetch_wecom_nickname(id_type, original_id)
            if name:
                cur.execute(
                    """
                    UPDATE v2.wecom_id_mappings
                    SET wecom_nickname = %s, updated_at = NOW()
                    WHERE id_type = %s AND original_id = %s
                    """,
                    (name, id_type, original_id),
                )
                results.append({"id": original_id, "name": name, "status": "success"})
                success_count += 1
            else:
                results.append({"id": original_id, "name": None, "status": "not_found"})
                fail_count += 1
            time.sleep(0.1)

        conn.commit()
        cur.close()
        conn.close()

        return jsonify(
            {
                "status": "success",
                "total": len(rows),
                "success_count": success_count,
                "fail_count": fail_count,
                "results": results,
            }
        )
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/user-groups/<user_id>", methods=["GET"])
def get_user_groups(user_id):
    if not user_id:
        return jsonify({"status": "error", "message": "missing user_id"}), 400

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        cur.execute(
            """
            SELECT
                wcl.roomid,
                COALESCE(rm.business_name, rm.wecom_nickname, wcl.roomid) AS room_name,
                COUNT(*) AS message_count,
                MAX(wcl.msgtime) AS last_message_time
            FROM v2.wecom_chat_logs wcl
            LEFT JOIN v2.wecom_id_mappings rm
                ON rm.id_type = 'room_id' AND rm.original_id = wcl.roomid
            WHERE wcl.roomid IS NOT NULL
              AND wcl.roomid <> ''
              AND (wcl.from_user_id = %s OR %s = ANY(wcl.tolist))
            GROUP BY wcl.roomid, room_name
            ORDER BY last_message_time DESC
            LIMIT 100
            """,
            (user_id, user_id),
        )

        results = cur.fetchall()
        cur.close()
        conn.close()

        groups = []
        for row in results:
            groups.append(
                {
                    "room_id": row["roomid"],
                    "room_name": row["room_name"],
                    "message_count": row["message_count"],
                    "last_message_time": row["last_message_time"].isoformat()
                    if row["last_message_time"]
                    else None,
                }
            )

        return jsonify(
            {"status": "success", "user_id": user_id, "group_count": len(groups), "groups": groups}
        )
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/students", methods=["GET"])
def search_students():
    keyword = (request.args.get("keyword") or "").strip()
    class_room_id = (request.args.get("class_room_id") or "").strip()
    limit = min(int(request.args.get("limit", 50)), 200)

    if not keyword and not class_room_id:
        return jsonify({"status": "error", "message": "请输入学员关键词"}), 400

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        params = []
        where_clauses = []
        if keyword:
            like = f"%{keyword}%"
            where_clauses.append(
                "(s.name ILIKE %s OR s.english_name ILIKE %s)"
            )
            params.extend([like, like])
        if class_room_id:
            where_clauses.append(
                "(c.room_id = %s OR c.name ILIKE %s OR s.class_room_id = %s)"
            )
            params.extend([class_room_id, f"%{class_room_id}%", class_room_id])

        where_sql = " AND ".join(where_clauses) if where_clauses else "TRUE"

        cur.execute(
            f"""
            SELECT
                s.id,
                s.name,
                s.english_name,
                s.status,
                COALESCE(c.name, s.class_room_id) AS class_name,
                COALESCE(c.room_id, s.class_room_id) AS class_room_id
            FROM v2.students s
            LEFT JOIN v2.classes c
                ON c.id = s.class_id
            WHERE {where_sql}
            ORDER BY s.name
            LIMIT %s
            """,
            params + [limit],
        )

        results = cur.fetchall()
        cur.close()
        conn.close()

        return jsonify({"status": "success", "count": len(results), "students": results})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


@app.after_request
def after_request(response):
    response.headers.add("Access-Control-Allow-Origin", "*")
    response.headers.add("Access-Control-Allow-Headers", "Content-Type")
    response.headers.add("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE")
    return response


@app.route("/")
def index():
    return send_file(os.path.join(os.path.dirname(__file__), "wecom_id_mapper.html"))


if __name__ == "__main__":
    print("WeCom ID Mapper v2")
    print("DB:", DB_CONFIG["database"])
    print("WeCom:", "configured" if WECOM_CONFIG["corp_id"] else "missing")
    port = int(os.getenv("PORT", "5004"))
    app.run(debug=False, port=port, host="0.0.0.0")
