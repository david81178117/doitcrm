#!/usr/bin/env python3
"""
Export parent communication summary to CSV.

Aggregates message counts per parent and outputs rows with >= min messages.
"""
import argparse
import csv
import os
from datetime import datetime

import psycopg2
from psycopg2 import sql


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


def build_query(schema, role_filter):
    logs = sql.Identifier(schema, "wecom_chat_logs")
    mappings = sql.Identifier(schema, "wecom_id_mappings")
    rel = sql.Identifier(schema, "wecom_user_student_rel")
    students = sql.Identifier(schema, "students")

    conditions = [sql.SQL("msg.total_messages >= %s")]
    if role_filter:
        conditions.append(sql.SQL("m.user_role = %s"))

    return sql.SQL(
        """
WITH msg AS (
    SELECT
        from_user_id,
        COUNT(*) AS total_messages,
        COUNT(*) FILTER (WHERE msgtype = 'text') AS text_messages,
        COUNT(*) FILTER (WHERE roomid IS NULL) AS direct_messages,
        COUNT(*) FILTER (WHERE roomid IS NOT NULL) AS group_messages,
        MIN(msgtime) AS first_msg_time,
        MAX(msgtime) AS last_msg_time
    FROM {logs}
    GROUP BY from_user_id
)
SELECT
    COALESCE(m.original_id, msg.from_user_id) AS wechat_id,
    COALESCE(
        NULLIF(m.business_name, ''),
        NULLIF(m.wecom_nickname, ''),
        m.original_id,
        msg.from_user_id
    ) AS display_name,
    m.user_role,
    s.name AS student_name,
    s.english_name AS student_english_name,
    msg.total_messages,
    msg.text_messages,
    msg.direct_messages,
    msg.group_messages,
    msg.first_msg_time,
    msg.last_msg_time
FROM msg
LEFT JOIN {mappings} m
  ON m.original_id = msg.from_user_id AND m.id_type = 'user_id'
LEFT JOIN {rel} r
  ON r.wecom_id = m.id AND r.is_primary = TRUE
LEFT JOIN {students} s
  ON s.id = r.student_id
WHERE {conditions}
ORDER BY msg.total_messages DESC, display_name
"""
    ).format(
        logs=logs,
        mappings=mappings,
        rel=rel,
        students=students,
        conditions=sql.SQL(" AND ").join(conditions),
    )


def export_csv(output_path, rows, headers):
    with open(output_path, "w", newline="", encoding="utf-8") as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(headers)
        writer.writerows(rows)


def main():
    parser = argparse.ArgumentParser(description="Export parent communication summary to CSV.")
    parser.add_argument("--min-messages", type=int, default=20, help="Minimum total messages per parent.")
    parser.add_argument(
        "--schema",
        default="v2",
        help="Schema name for WeCom tables (default: v2).",
    )
    parser.add_argument(
        "--role",
        default="",
        help="Optional user_role filter (e.g. parent, teacher).",
    )
    parser.add_argument(
        "--output",
        default="parent_comm_summary.csv",
        help="Output CSV filename.",
    )
    args = parser.parse_args()

    conn = get_db_connection()
    cur = conn.cursor()

    query = build_query(args.schema, args.role.strip())
    params = [args.min_messages]
    if args.role.strip():
        params.append(args.role.strip())
    cur.execute(query, params)
    rows = cur.fetchall()

    headers = [desc[0] for desc in cur.description]
    cur.close()
    conn.close()

    export_csv(args.output, rows, headers)

    print(
        f"Exported {len(rows)} rows to {args.output} "
        f"(min_messages={args.min_messages}, schema={args.schema})."
    )


if __name__ == "__main__":
    main()
