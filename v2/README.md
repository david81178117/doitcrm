# doitcrm v2

This is a clean, rebuilt workspace for the WeCom chat log pipeline. The goal is to recreate only what is needed, with clear structure and minimal clutter.

## Current status

- `scripts/wecom_etl.py`: loads WeCom JSONL into PostgreSQL (`wecom_chat_logs`).
- `db/schema.sql`: core tables and indexes for chat logs and ID mapping.

## Data dictionary (core)

`wecom_chat_logs` (raw logs)
- `msgid`, `action`, `msgtype`, `msgtime`, `from_user_id`, `roomid`, `tolist`, `content_payload`, `raw_data`, `created_at`

`wecom_id_mappings` (business mapping)
- `id_type`, `original_id`, `wecom_nickname`, `business_name`, `user_role`, `notes`, `profile`, `is_mapped`, `created_at`, `updated_at`
- `user_role` enum: `parent`, `teacher`, `head_teacher`, `advisor`

`students`
- `name`, `english_name`, `class_room_id`, `created_at`, `updated_at`

`wecom_user_student_rel`
- `wecom_id`, `student_id`, `relation`, `is_primary`, `created_at`
- `relation` enum: `mother`, `father`, `guardian`, `other`

## Quick start

```bash
export DATABASE_URL="postgresql://postgres:doit123@localhost/wechat_db"
python3 scripts/wecom_etl.py --jsonl "/opt/wecom/decrypted_database_ready.jsonl" --conflict update
```

## Next steps

- Define the new project structure (docs, db schema, APIs, reports).
- Recreate only the essential components from the legacy project.
