# doitcrm v2

This is a clean, rebuilt workspace for the WeCom chat log pipeline. The goal is to recreate only what is needed, with clear structure and minimal clutter.

## Current status

- `scripts/wecom_etl.py`: loads WeCom JSONL into PostgreSQL (`wecom_chat_logs`).
- `db/schema.sql`: core tables and indexes for chat logs and ID mapping.
- `db/migrate_legacy_to_v2.sql`: pure SQL migration from legacy schema into v2.
- `wecom_id_mapper.py`: v2 mapping service (API + web UI).
- `wecom_id_mapper.html`: v2 mapping UI.
- `user_messages.py`: v2 user message search service (API + web UI).
- `user_messages.html`: v2 user message UI.

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

## Mapping UI (v2)

```bash
export DB_NAME="wechat_db_legacy"
export DB_HOST="localhost"
export DB_PORT="5432"
export DB_USER="postgres"
export DB_PASSWORD=""
export WECOM_CORP_ID="your_corp_id"
export WECOM_SECRET="your_secret"
python3 wecom_id_mapper.py
```

Open `http://localhost:5004` to use the UI.

## User Messages UI (v2)

```bash
export DB_NAME="wechat_db_legacy"
export DB_HOST="localhost"
export DB_PORT="5432"
export DB_USER="postgres"
export DB_PASSWORD="doit123"
PORT=5006 python3 user_messages.py
```

Open `http://localhost:5006` to use the UI.

## Legacy migration (SQL)

Run inside the PostgreSQL container or host where legacy data is loaded:

```bash
docker exec -i postgres-wechat psql -U postgres -d wechat_db_legacy < /workspaces/doitcrm/v2/db/migrate_legacy_to_v2.sql
```

## Next steps

- Define the new project structure (docs, db schema, APIs, reports).
- Recreate only the essential components from the legacy project.
