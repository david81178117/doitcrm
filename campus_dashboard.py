#!/usr/bin/env python3
"""
校区管理综合仪表盘 v2 - Flask 后端
为行政校长提供整体运营数据视图，聚焦家长沟通统计和异常提醒
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
    return send_file("campus_dashboard.html")


@app.route("/user_messages.html", methods=["GET"])
def user_messages():
    """返回用户消息查询引导页面"""
    return send_file("user_messages_guide.html")


@app.route("/api/overview-stats", methods=["GET"])
def get_overview_stats():
    """
    获取整体统计数据
    返回: 总学员数、在读学员、班级数、段数、阶数、活跃家长数等
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        cur.execute("""
            SELECT
                COUNT(DISTINCT s.id) AS total_students,
                COUNT(DISTINCT CASE WHEN s.status = '在读' THEN s.id END) AS active_students,
                COUNT(DISTINCT c.id) AS total_classes,
                COUNT(DISTINCT sec.id) AS total_sections,
                COUNT(DISTINCT l.id) AS total_levels,
                COUNT(DISTINCT CASE
                    WHEN m.user_role = 'parent'
                    AND EXISTS (
                        SELECT 1 FROM v2.wecom_chat_logs wcl
                        WHERE wcl.from_user_id = m.original_id
                        AND wcl.msgtime >= NOW() - INTERVAL '30 days'
                        AND wcl.msgtype = 'text'
                    )
                    THEN m.id
                END) AS active_parents_30days
            FROM v2.students s
            LEFT JOIN v2.classes c ON c.id = s.class_id
            LEFT JOIN v2.levels l ON l.id = c.level_id
            LEFT JOIN v2.sections sec ON sec.id = l.section_id
            LEFT JOIN v2.wecom_user_student_rel rel ON rel.student_id = s.id AND rel.is_primary = TRUE
            LEFT JOIN v2.wecom_id_mappings m ON m.id = rel.wecom_id
            WHERE c.is_active = TRUE
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
        print(f"Error in get_overview_stats: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/hierarchy-tree", methods=["GET"])
def get_hierarchy_tree():
    """
    获取完整的段-阶-班级层级树
    返回: 嵌套的JSON结构
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

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
                                    'teacher', c.teacher_wecom_id,
                                    'head_teacher', c.head_teacher_wecom_id,
                                    'student_count', (
                                        SELECT COUNT(*)
                                        FROM v2.students
                                        WHERE class_id = c.id AND status = '在读'
                                    )
                                ) ORDER BY c.name
                            ), '[]'::json)
                            FROM v2.classes c
                            WHERE c.level_id = l.id AND c.is_active = TRUE
                        )
                    ) ORDER BY l.sort_order
                ) AS levels
            FROM v2.sections sec
            INNER JOIN v2.levels l ON l.section_id = sec.id
            WHERE sec.is_active = TRUE
            GROUP BY sec.id, sec.name, sec.sort_order
            ORDER BY sec.sort_order
        """)

        results = [dict(row) for row in cur.fetchall()]
        cur.close()
        conn.close()

        return jsonify({"status": "success", "hierarchy": results})
    except Exception as e:
        print(f"Error in get_hierarchy_tree: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/class-stats", methods=["GET"])
def get_class_stats():
    """
    获取所有班级的统计信息（支持按段/阶筛选）
    参数:
      - section_id: 段ID (可选)
      - level_id: 阶ID (可选)
    """
    section_id = request.args.get("section_id")
    level_id = request.args.get("level_id")

    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        query = """
            SELECT
                stats.*,
                stu.total_students,
                stu.active_students,
                stu.churned_students,
                stu.paused_students
            FROM v2.v_class_parent_comm_stats stats
            LEFT JOIN v2.v_class_student_stats stu ON stu.class_id = stats.class_id
            WHERE 1=1
        """
        params = []

        if section_id:
            query += " AND stats.section_id = %s"
            params.append(section_id)

        if level_id:
            query += " AND stats.level_id = %s"
            params.append(level_id)

        query += " ORDER BY stats.section_id, stats.level_id, stats.class_name"

        cur.execute(query, params)
        results = [dict(row) for row in cur.fetchall()]

        # 处理None值和日期格式
        for row in results:
            for key in row:
                if row[key] is None:
                    if key.endswith('_count') or key in ['total_parents', 'active_parents', 'total_messages', 'total_students', 'active_students']:
                        row[key] = 0
                    else:
                        row[key] = None
                elif isinstance(row[key], datetime):
                    row[key] = row[key].isoformat()

        cur.close()
        conn.close()

        return jsonify({"status": "success", "data": results})
    except Exception as e:
        print(f"Error in get_class_stats: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/class-details/<int:class_id>", methods=["GET"])
def get_class_details(class_id):
    """
    获取班级详细信息（学员列表 + 每个学员的家长沟通情况）
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        # 获取班级基本信息
        cur.execute("""
            SELECT
                c.id, c.name, c.room_id, c.start_time, c.end_time,
                c.course_progress, c.promotion,
                c.teacher_wecom_id, c.head_teacher_wecom_id,
                l.name AS level_name, sec.name AS section_name,
                tm.business_name AS teacher_name,
                hm.business_name AS head_teacher_name
            FROM v2.classes c
            INNER JOIN v2.levels l ON l.id = c.level_id
            INNER JOIN v2.sections sec ON sec.id = l.section_id
            LEFT JOIN v2.wecom_id_mappings tm
              ON tm.original_id = c.teacher_wecom_id AND tm.id_type = 'user_id'
            LEFT JOIN v2.wecom_id_mappings hm
              ON hm.original_id = c.head_teacher_wecom_id AND hm.id_type = 'user_id'
            WHERE c.id = %s
        """, (class_id,))

        class_info = cur.fetchone()
        if not class_info:
            return jsonify({"status": "error", "message": "班级不存在"}), 404

        class_info = dict(class_info)

        # 获取学员及家长沟通统计
        cur.execute("""
            SELECT
                s.id AS student_id,
                s.name AS student_name,
                s.english_name,
                s.status,
                m.original_id AS parent_wecom_id,
                COALESCE(NULLIF(m.business_name, ''), NULLIF(m.wecom_nickname, ''), m.original_id) AS parent_name,
                (
                    SELECT COUNT(*)
                    FROM v2.wecom_chat_logs wcl
                    WHERE wcl.msgtype = 'text'
                    AND wcl.from_user_id = m.original_id
                    AND wcl.msgtime >= NOW() - INTERVAL '30 days'
                ) AS message_count_30days,
                (
                    SELECT MAX(msgtime)
                    FROM v2.wecom_chat_logs wcl
                    WHERE wcl.from_user_id = m.original_id
                ) AS last_message_time,
                CASE
                    WHEN (SELECT MAX(msgtime) FROM v2.wecom_chat_logs wcl WHERE wcl.from_user_id = m.original_id) IS NOT NULL
                    THEN EXTRACT(DAY FROM NOW() - (SELECT MAX(msgtime) FROM v2.wecom_chat_logs wcl WHERE wcl.from_user_id = m.original_id))::INTEGER
                    ELSE NULL
                END AS days_since_last_contact
            FROM v2.students s
            LEFT JOIN v2.wecom_user_student_rel rel ON rel.student_id = s.id AND rel.is_primary = TRUE
            LEFT JOIN v2.wecom_id_mappings m ON m.id = rel.wecom_id AND m.user_role = 'parent'
            WHERE s.class_id = %s
            ORDER BY s.name
        """, (class_id,))

        students = [dict(row) for row in cur.fetchall()]

        # 处理日期格式
        for student in students:
            if student['last_message_time']:
                student['last_message_time'] = student['last_message_time'].isoformat()

        class_info['students'] = students

        cur.close()
        conn.close()

        return jsonify({"status": "success", "data": class_info})
    except Exception as e:
        print(f"Error in get_class_details: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


@app.route("/api/alerts", methods=["GET"])
def get_alerts():
    """
    获取异常提醒列表
    包含: 30天无沟通家长、学员流失风险
    """
    try:
        conn = get_db_connection()
        cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

        cur.execute("""
            WITH alerts AS (
                -- 30天无沟通家长
                SELECT
                    'no_contact_30days' AS alert_type,
                    '长期未沟通' AS alert_category,
                    c.id AS class_id,
                    c.name AS class_name,
                    l.name AS level_name,
                    sec.name AS section_name,
                    s.name AS student_name,
                    s.english_name AS student_english_name,
                    m.original_id AS parent_wecom_id,
                    COALESCE(NULLIF(m.business_name, ''), NULLIF(m.wecom_nickname, ''), m.original_id) AS parent_name,
                    (
                        SELECT MAX(msgtime)
                        FROM v2.wecom_chat_logs wcl
                        WHERE wcl.from_user_id = m.original_id
                    ) AS last_contact_time,
                    3 AS priority
                FROM v2.students s
                INNER JOIN v2.classes c ON c.id = s.class_id
                INNER JOIN v2.levels l ON l.id = c.level_id
                INNER JOIN v2.sections sec ON sec.id = l.section_id
                LEFT JOIN v2.wecom_user_student_rel rel ON rel.student_id = s.id AND rel.is_primary = TRUE
                LEFT JOIN v2.wecom_id_mappings m ON m.id = rel.wecom_id AND m.user_role = 'parent'
                WHERE s.status = '在读'
                AND c.is_active = TRUE
                AND m.original_id IS NOT NULL
                AND (
                    (SELECT MAX(msgtime) FROM v2.wecom_chat_logs wcl WHERE wcl.from_user_id = m.original_id)
                    < NOW() - INTERVAL '30 days'
                    OR NOT EXISTS (SELECT 1 FROM v2.wecom_chat_logs wcl WHERE wcl.from_user_id = m.original_id)
                )

                UNION ALL

                -- 学员流失风险
                SELECT
                    'churn_risk' AS alert_type,
                    '流失风险' AS alert_category,
                    c.id AS class_id,
                    c.name AS class_name,
                    l.name AS level_name,
                    sec.name AS section_name,
                    s.name AS student_name,
                    s.english_name AS student_english_name,
                    m.original_id AS parent_wecom_id,
                    COALESCE(NULLIF(m.business_name, ''), NULLIF(m.wecom_nickname, ''), m.original_id) AS parent_name,
                    s.updated_at AS last_contact_time,
                    1 AS priority
                FROM v2.students s
                INNER JOIN v2.classes c ON c.id = s.class_id
                INNER JOIN v2.levels l ON l.id = c.level_id
                INNER JOIN v2.sections sec ON sec.id = l.section_id
                LEFT JOIN v2.wecom_user_student_rel rel ON rel.student_id = s.id AND rel.is_primary = TRUE
                LEFT JOIN v2.wecom_id_mappings m ON m.id = rel.wecom_id AND m.user_role = 'parent'
                WHERE s.status IN ('已退费', '休学')
                AND c.is_active = TRUE
            )
            SELECT * FROM alerts
            ORDER BY priority ASC, last_contact_time DESC NULLS LAST
            LIMIT 100
        """)

        results = [dict(row) for row in cur.fetchall()]

        # 处理日期格式
        for row in results:
            if row['last_contact_time']:
                row['last_contact_time'] = row['last_contact_time'].isoformat()

        cur.close()
        conn.close()

        return jsonify({"status": "success", "data": results})
    except Exception as e:
        print(f"Error in get_alerts: {e}", file=sys.stderr)
        return jsonify({"status": "error", "message": str(e)}), 500


if __name__ == "__main__":
    port = int(os.getenv("PORT", 5011))
    print(f"启动校区管理综合仪表盘服务，端口: {port}", file=sys.stderr)
    app.run(host="0.0.0.0", port=port, debug=True)
