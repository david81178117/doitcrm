-- Core schema for WeCom chat ingestion and ID mapping.

CREATE TABLE IF NOT EXISTS wecom_chat_logs (
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
    ON wecom_chat_logs(from_user_id);

CREATE INDEX IF NOT EXISTS idx_logs_room
    ON wecom_chat_logs(roomid);

CREATE INDEX IF NOT EXISTS idx_logs_time
    ON wecom_chat_logs(msgtime);

CREATE INDEX IF NOT EXISTS idx_logs_payload
    ON wecom_chat_logs USING gin (content_payload);

CREATE TABLE IF NOT EXISTS wecom_id_mappings (
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
    ON wecom_id_mappings(id_type, original_id);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_wecom_nickname
    ON wecom_id_mappings(wecom_nickname);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_business_name
    ON wecom_id_mappings(business_name);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_role
    ON wecom_id_mappings(user_role) WHERE user_role IS NOT NULL;

CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    english_name TEXT,
    class_room_id TEXT,
    status TEXT NOT NULL DEFAULT '在读',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_students_class_room
    ON students(class_room_id);

CREATE TABLE IF NOT EXISTS wecom_user_student_rel (
    wecom_id INTEGER NOT NULL REFERENCES wecom_id_mappings(id),
    student_id INTEGER NOT NULL REFERENCES students(id),
    relation TEXT,
    is_primary BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (wecom_id, student_id),
    CONSTRAINT wecom_user_student_rel_relation_ck
        CHECK (relation IN ('mother', 'father', 'guardian', 'other'))
);

CREATE INDEX IF NOT EXISTS idx_wecom_user_student_rel_student
    ON wecom_user_student_rel(student_id);
