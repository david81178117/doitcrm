-- Migrate legacy data in public schema into v2 schema.
-- Assumes legacy tables exist in public (wechat_db_full.sql).
-- Strategy:
-- 1) Create v2 schema + tables.
-- 2) Copy raw chat logs.
-- 3) Transform wecom_id_mappings into new structure.
-- 4) Build students + relations from legacy student_* columns.

BEGIN;

CREATE SCHEMA IF NOT EXISTS v2;

CREATE TABLE IF NOT EXISTS v2.wecom_chat_logs (
    msgid VARCHAR(255) PRIMARY KEY,
    action VARCHAR(50),
    msgtype VARCHAR(50),
    msgtime TIMESTAMPTZ,
    from_user_id VARCHAR(255),
    roomid VARCHAR(255),
    tolist TEXT[],
    content_payload JSONB,
    raw_data JSONB,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_logs_from
    ON v2.wecom_chat_logs(from_user_id);

CREATE INDEX IF NOT EXISTS idx_logs_room
    ON v2.wecom_chat_logs(roomid);

CREATE INDEX IF NOT EXISTS idx_logs_time
    ON v2.wecom_chat_logs(msgtime);

CREATE INDEX IF NOT EXISTS idx_logs_payload
    ON v2.wecom_chat_logs USING gin (content_payload);

CREATE TABLE IF NOT EXISTS v2.wecom_id_mappings (
    id SERIAL PRIMARY KEY,
    id_type TEXT NOT NULL,
    original_id TEXT NOT NULL,
    wecom_nickname TEXT,
    business_name TEXT,
    user_role TEXT,
    notes TEXT,
    profile JSONB NOT NULL DEFAULT '{}'::jsonb,
    is_mapped BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE(id_type, original_id),
    CONSTRAINT wecom_id_mappings_role_ck
        CHECK (user_role IN ('parent', 'teacher', 'head_teacher', 'advisor'))
);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_lookup
    ON v2.wecom_id_mappings(id_type, original_id);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_wecom_nickname
    ON v2.wecom_id_mappings(wecom_nickname);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_business_name
    ON v2.wecom_id_mappings(business_name);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_role
    ON v2.wecom_id_mappings(user_role) WHERE user_role IS NOT NULL;

CREATE TABLE IF NOT EXISTS v2.students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    english_name TEXT,
    class_room_id TEXT,
    status TEXT NOT NULL DEFAULT '在读',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_students_class_room
    ON v2.students(class_room_id);

CREATE TABLE IF NOT EXISTS v2.wecom_user_student_rel (
    wecom_id INTEGER NOT NULL REFERENCES v2.wecom_id_mappings(id),
    student_id INTEGER NOT NULL REFERENCES v2.students(id),
    relation TEXT,
    is_primary BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (wecom_id, student_id),
    CONSTRAINT wecom_user_student_rel_relation_ck
        CHECK (relation IN ('mother', 'father', 'guardian', 'other'))
);

CREATE INDEX IF NOT EXISTS idx_wecom_user_student_rel_student
    ON v2.wecom_user_student_rel(student_id);

-- 1) Copy raw logs.
INSERT INTO v2.wecom_chat_logs (
    msgid, action, msgtype, msgtime, from_user_id, roomid,
    tolist, content_payload, raw_data, created_at
)
SELECT
    msgid, action, msgtype, msgtime, from_user_id, roomid,
    tolist, content_payload, raw_data, created_at
FROM public.wecom_chat_logs
ON CONFLICT (msgid) DO NOTHING;

-- 2) Transform id mappings.
-- Legacy display_name is treated as wecom_nickname; business_name left for manual curation.
CREATE TEMP TABLE _wecom_id_map (
    id INTEGER NOT NULL,
    id_type TEXT NOT NULL,
    original_id TEXT NOT NULL
) ON COMMIT DROP;

INSERT INTO v2.wecom_id_mappings (
    id_type,
    original_id,
    wecom_nickname,
    business_name,
    user_role,
    notes,
    profile,
    is_mapped,
    created_at,
    updated_at
)
SELECT
    id_type,
    original_id,
    display_name AS wecom_nickname,
    NULL AS business_name,
    CASE
        WHEN user_role IN ('parent', 'teacher', 'head_teacher', 'advisor') THEN user_role
        WHEN user_role IN ('家长') THEN 'parent'
        WHEN user_role IN ('老师') THEN 'teacher'
        WHEN user_role IN ('班主任') THEN 'head_teacher'
        WHEN user_role IN ('服务顾问') THEN 'advisor'
        ELSE NULL
    END AS user_role,
    notes,
    '{}'::jsonb AS profile,
    is_mapped,
    created_at,
    updated_at
FROM public.wecom_id_mappings
RETURNING id, id_type, original_id;

INSERT INTO _wecom_id_map (id, id_type, original_id)
SELECT id, id_type, original_id
FROM v2.wecom_id_mappings;

-- 3) Students + relations from legacy student_* columns.
CREATE TEMP TABLE _student_src AS
SELECT DISTINCT
    student_name,
    student_english_name,
    student_class_room_id
FROM public.wecom_id_mappings
WHERE student_name IS NOT NULL AND student_name <> '';

INSERT INTO v2.students (
    name,
    english_name,
    class_room_id,
    status,
    created_at,
    updated_at
)
SELECT
    student_name,
    NULLIF(student_english_name, ''),
    NULLIF(student_class_room_id, ''),
    '在读',
    NOW(),
    NOW()
FROM _student_src;

CREATE TEMP TABLE _student_map AS
SELECT id, name, english_name, class_room_id
FROM v2.students;

INSERT INTO v2.wecom_user_student_rel (
    wecom_id,
    student_id,
    relation,
    is_primary,
    created_at
)
SELECT
    wim.id,
    sm.id,
    'other' AS relation,
    TRUE AS is_primary,
    NOW()
FROM public.wecom_id_mappings lm
JOIN _wecom_id_map wim
  ON wim.id_type = lm.id_type
 AND wim.original_id = lm.original_id
JOIN _student_map sm
  ON sm.name = lm.student_name
 AND (sm.english_name IS NOT DISTINCT FROM NULLIF(lm.student_english_name, ''))
 AND (sm.class_room_id IS NOT DISTINCT FROM NULLIF(lm.student_class_room_id, ''))
WHERE lm.student_name IS NOT NULL AND lm.student_name <> ''
ON CONFLICT DO NOTHING;

COMMIT;
