#!/usr/bin/env python3
import csv
import io
import os
import re
import sys

import psycopg2
import psycopg2.extras
from flask import Flask, jsonify, request, send_file

app = Flask(__name__)

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

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


def ensure_schema(conn):
    cur = conn.cursor()
    cur.execute("CREATE SCHEMA IF NOT EXISTS v2;")
    cur.execute("SELECT to_regclass('v2.classes')")
    if cur.fetchone()[0] is None:
        cur.close()
        raise RuntimeError("缺少 v2.classes，请先运行 v2/db/hierarchy.sql")
    cur.execute("SELECT to_regclass('v2.levels')")
    if cur.fetchone()[0] is None:
        cur.close()
        raise RuntimeError("缺少 v2.levels，请先运行 v2/db/hierarchy.sql")
    cur.execute("SELECT to_regclass('v2.students')")
    if cur.fetchone()[0] is None:
        cur.close()
        raise RuntimeError("缺少 v2.students，请先运行 v2/db/migrate_legacy_to_v2.sql")
    cur.execute(
        "ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS start_time TEXT;"
    )
    cur.execute(
        "ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS end_time TEXT;"
    )
    cur.execute(
        "ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS course_progress TEXT;"
    )
    cur.execute(
        "ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS promotion TEXT;"
    )
    cur.execute(
        "ALTER TABLE v2.students ADD COLUMN IF NOT EXISTS class_id INTEGER REFERENCES v2.classes(id);"
    )
    cur.execute(
        "ALTER TABLE v2.students ADD COLUMN IF NOT EXISTS status TEXT NOT NULL DEFAULT '在读';"
    )
    conn.commit()
    cur.close()


def normalize_class_name(name):
    if not name:
        return ""
    return re.sub(r"[（(].*[)）]\s*$", "", name).strip()


def normalize_schedule(value):
    if not value:
        return ""
    v = value.strip()
    if not v:
        return ""
    mapping = {
        "一": "周一",
        "二": "周二",
        "三": "周三",
        "四": "周四",
        "五": "周五",
        "六": "周六",
        "日": "周日",
        "天": "周日",
    }
    head = v[0]
    if head in mapping:
        v = mapping[head] + v[1:]
    return v


def parse_stage(value):
    result = {"section": "", "level": ""}
    if not value:
        return result
    normalized = value.replace("Ｌ", "L")
    section_match = re.search(r"(一段|二段|三段)", normalized)
    level_match = re.search(r"(L\d)", normalized, re.IGNORECASE)
    if section_match:
        result["section"] = section_match.group(1)
    if level_match:
        result["level"] = level_match.group(1).upper()
    if result["section"] and not result["level"]:
        digit_match = re.search(r"([1-7])", normalized)
        if digit_match:
            result["level"] = f"L{digit_match.group(1)}"
    return result


def extract_name_status(value):
    if not value:
        return None
    trimmed = value.strip()
    if not trimmed or trimmed in {"/", "／"}:
        return None
    left_indexes = [
        idx for idx in (trimmed.find("（"), trimmed.find("(")) if idx != -1
    ]
    if left_indexes:
        left_index = min(left_indexes)
        name = trimmed[:left_index].strip()
        status = trimmed[left_index + 1 :].strip()
        status = re.sub(r"[)）]$", "", status)
        return {"name": name, "status": status}
        return {"name": trimmed, "status": "在读"}


def parse_csv_text(text):
    rows = []
    reader = csv.reader(io.StringIO(text))
    for row in reader:
        cleaned = [cell.strip() for cell in row]
        if any(cleaned):
            rows.append(cleaned)
    return rows


def parse_matrix(rows):
    class_rows = []
    student_rows = []
    ignored_cells = 0
    if not rows:
        return class_rows, student_rows, ignored_cells

    header = rows[0]
    class_headers = [normalize_class_name(name) for name in header[1:]]

    class_rows = [
        {
            "class_name": name,
            "section": "",
            "level": "",
            "room_id": "",
            "teacher": "",
            "head_teacher": "",
            "start_time": "",
            "end_time": "",
            "course_progress": "",
            "promotion": "",
        }
        for name in class_headers
    ]

    label_map = {
        "主教老师": "teacher",
        "主教": "teacher",
        "班主任": "head_teacher",
        "上课时间": "start_time",
        "下课时间": "end_time",
        "所在阶段": "stage",
        "升段升班情况": "promotion",
        "升级升班情况": "promotion",
        "课程进度": "course_progress",
        "room_id": "room_id",
        "roomid": "room_id",
        "群ID": "room_id",
        "群组ID": "room_id",
    }

    for row in rows[1:]:
        label = (row[0] or "").strip()
        if not label:
            continue

        if label.startswith("学员") or label.startswith("学生"):
            for idx, cell in enumerate(row[1:]):
                entry = extract_name_status(cell)
                if not entry:
                    ignored_cells += 1
                    continue
                if idx >= len(class_rows):
                    continue
                cls = class_rows[idx]
                student_rows.append(
                    {
                        "class_name": cls["class_name"],
                        "section": cls["section"],
                        "level": cls["level"],
                        "room_id": cls["room_id"],
                        "student_name": entry["name"],
                        "student_english_name": "",
                        "student_status": entry["status"] or "在读",
                    }
                )
            continue

        mapped = label_map.get(label)
        if not mapped:
            continue

        for idx, cell in enumerate(row[1:]):
            if idx >= len(class_rows):
                continue
            cls = class_rows[idx]
            value = (cell or "").strip()
            if value in {"/", "／"}:
                value = ""

            if mapped == "stage":
                stage = parse_stage(value)
                cls["section"] = stage["section"]
                cls["level"] = stage["level"]
            elif mapped == "start_time":
                cls["start_time"] = normalize_schedule(value)
            elif mapped == "end_time":
                cls["end_time"] = normalize_schedule(value)
            else:
                cls[mapped] = value

    return class_rows, student_rows, ignored_cells


def _pick_level_id(cur, level_name):
    level = (level_name or "").strip().upper() or "L1"
    cur.execute("SELECT id FROM v2.levels WHERE name = %s", (level,))
    row = cur.fetchone()
    if row:
        return row[0], level, False
    cur.execute("SELECT id FROM v2.levels WHERE name = 'L1'")
    fallback = cur.fetchone()
    return (fallback[0] if fallback else None), level, True


def upsert_class(cur, cls):
    class_name = (cls.get("class_name") or "").strip()
    if not class_name:
        return None, "skipped", None

    room_id = (cls.get("room_id") or "").strip() or None
    level_id, used_level, fallback = _pick_level_id(cur, cls.get("level"))
    payload = {
        "level_id": level_id,
        "room_id": room_id,
        "name": class_name,
        "teacher": (cls.get("teacher") or "").strip() or None,
        "head_teacher": (cls.get("head_teacher") or "").strip() or None,
        "start_time": (cls.get("start_time") or "").strip() or None,
        "end_time": (cls.get("end_time") or "").strip() or None,
        "course_progress": (cls.get("course_progress") or "").strip() or None,
        "promotion": (cls.get("promotion") or "").strip() or None,
    }

    if room_id:
        cur.execute(
            """
            INSERT INTO v2.classes (
                level_id, room_id, name, teacher_wecom_id, head_teacher_wecom_id,
                start_time, end_time, course_progress, promotion, updated_at
            )
            VALUES (
                %(level_id)s, %(room_id)s, %(name)s, %(teacher)s, %(head_teacher)s,
                %(start_time)s, %(end_time)s, %(course_progress)s, %(promotion)s, NOW()
            )
            ON CONFLICT (room_id) DO UPDATE SET
                level_id = EXCLUDED.level_id,
                name = EXCLUDED.name,
                teacher_wecom_id = EXCLUDED.teacher_wecom_id,
                head_teacher_wecom_id = EXCLUDED.head_teacher_wecom_id,
                start_time = EXCLUDED.start_time,
                end_time = EXCLUDED.end_time,
                course_progress = EXCLUDED.course_progress,
                promotion = EXCLUDED.promotion,
                updated_at = NOW()
            RETURNING id, (xmax = 0) AS inserted
            """,
            payload,
        )
        row = cur.fetchone()
        return row[0], ("inserted" if row[1] else "updated"), used_level if fallback else None

    cur.execute(
        "SELECT id FROM v2.classes WHERE name = %s ORDER BY id LIMIT 1",
        (class_name,),
    )
    existing = cur.fetchone()
    if existing:
        cur.execute(
            """
            UPDATE v2.classes
            SET level_id = %(level_id)s,
                name = %(name)s,
                teacher_wecom_id = %(teacher)s,
                head_teacher_wecom_id = %(head_teacher)s,
                start_time = %(start_time)s,
                end_time = %(end_time)s,
                course_progress = %(course_progress)s,
                promotion = %(promotion)s,
                updated_at = NOW()
            WHERE id = %(id)s
            """,
            {**payload, "id": existing[0]},
        )
        return existing[0], "updated", used_level if fallback else None

    cur.execute(
        """
        INSERT INTO v2.classes (
            level_id, room_id, name, teacher_wecom_id, head_teacher_wecom_id,
            start_time, end_time, course_progress, promotion, updated_at
        )
        VALUES (
            %(level_id)s, %(room_id)s, %(name)s, %(teacher)s, %(head_teacher)s,
            %(start_time)s, %(end_time)s, %(course_progress)s, %(promotion)s, NOW()
        )
        RETURNING id
        """,
        payload,
    )
    new_id = cur.fetchone()[0]
    return new_id, "inserted", used_level if fallback else None


def upsert_student(cur, student, class_id):
    name = (student.get("student_name") or "").strip()
    if not name:
        return "skipped"

    room_id = (student.get("room_id") or "").strip() or None
    english = (student.get("student_english_name") or "").strip() or None
    status = (student.get("student_status") or "").strip() or "在读"

    if class_id:
        cur.execute(
            "SELECT id FROM v2.students WHERE name = %s AND class_id = %s LIMIT 1",
            (name, class_id),
        )
    elif room_id:
        cur.execute(
            "SELECT id FROM v2.students WHERE name = %s AND class_room_id = %s LIMIT 1",
            (name, room_id),
        )
    else:
        cur.execute(
            """
            SELECT id FROM v2.students
            WHERE name = %s AND class_room_id IS NULL AND class_id IS NULL
            LIMIT 1
            """,
            (name,),
        )
    existing = cur.fetchone()

    if existing:
        if english:
            cur.execute(
                """
                UPDATE v2.students
                SET english_name = %s,
                    class_room_id = %s,
                    class_id = %s,
                    status = %s,
                    updated_at = NOW()
                WHERE id = %s
                """,
                (english, room_id, class_id, status, existing[0]),
            )
        else:
            cur.execute(
                """
                UPDATE v2.students
                SET class_room_id = %s,
                    class_id = %s,
                    status = %s,
                    updated_at = NOW()
                WHERE id = %s
                """,
                (room_id, class_id, status, existing[0]),
            )
        return "updated"

    cur.execute(
        """
        INSERT INTO v2.students (name, english_name, class_room_id, class_id, status, created_at, updated_at)
        VALUES (%s, %s, %s, %s, %s, NOW(), NOW())
        """,
        (name, english, room_id, class_id, status),
    )
    return "inserted"


@app.route("/")
def index():
    return send_file(os.path.join(BASE_DIR, "roster.html"))


@app.route("/api/roster/import", methods=["POST"])
def import_roster():
    payload = request.get_json(silent=True) or {}
    class_rows = payload.get("classes") or []
    student_rows = payload.get("students") or []

    try:
        conn = get_db_connection()
        ensure_schema(conn)
        cur = conn.cursor()

        class_counts = {"inserted": 0, "updated": 0, "skipped": 0}
        student_counts = {"inserted": 0, "updated": 0, "skipped": 0, "no_class": 0}
        fallback_levels = set()

        class_map = {}
        for cls in class_rows:
            class_id, status, fallback_level = upsert_class(cur, cls)
            if status == "inserted":
                class_counts["inserted"] += 1
            elif status == "updated":
                class_counts["updated"] += 1
            else:
                class_counts["skipped"] += 1

            if fallback_level:
                fallback_levels.add(fallback_level)
            if class_id:
                room_id = (cls.get("room_id") or "").strip()
                name = (cls.get("class_name") or "").strip()
                if room_id:
                    class_map[("room_id", room_id)] = class_id
                if name:
                    class_map[("class_name", name)] = class_id

        for student in student_rows:
            room_id = (student.get("room_id") or "").strip()
            class_name = (student.get("class_name") or "").strip()
            class_id = None
            if room_id:
                class_id = class_map.get(("room_id", room_id))
            if not class_id and class_name:
                class_id = class_map.get(("class_name", class_name))
            if not class_id and (room_id or class_name):
                if room_id:
                    cur.execute(
                        "SELECT id FROM v2.classes WHERE room_id = %s LIMIT 1",
                        (room_id,),
                    )
                else:
                    cur.execute(
                        "SELECT id FROM v2.classes WHERE name = %s ORDER BY id LIMIT 1",
                        (class_name,),
                    )
                found = cur.fetchone()
                if found:
                    class_id = found[0]
            if not class_id:
                student_counts["no_class"] += 1
            status = upsert_student(cur, student, class_id)
            student_counts[status] += 1

        conn.commit()
        cur.close()
        conn.close()

        return jsonify(
            {
                "status": "success",
                "classes": {
                    **class_counts,
                    "total": len(class_rows),
                },
                "students": {
                    **student_counts,
                    "total": len(student_rows),
                },
                "fallback_levels": sorted(fallback_levels),
            }
        )
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


if __name__ == "__main__":
    print("Roster Import Service v2", file=sys.stderr)
    print(
        f"DB: {DB_CONFIG['database']}@{DB_CONFIG['host']}:{DB_CONFIG['port']}",
        file=sys.stderr,
    )
    port = int(os.getenv("PORT", "5010"))
    app.run(host="0.0.0.0", port=port, debug=False)
