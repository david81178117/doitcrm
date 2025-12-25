-- =========
-- Core tables
-- =========

CREATE TABLE IF NOT EXISTS teachers (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  wechat_id TEXT,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS classes (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  room_id TEXT,
  main_teacher_id BIGINT REFERENCES teachers(id),
  advisor_id BIGINT REFERENCES teachers(id),
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS students (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  current_class_id BIGINT REFERENCES classes(id),
  status TEXT NOT NULL DEFAULT 'active',
  profile_tags JSONB NOT NULL DEFAULT '{}'::jsonb,
  points INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS parents (
  id BIGSERIAL PRIMARY KEY,
  wechat_id TEXT NOT NULL,
  name TEXT,
  phone TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- =========
-- Relation tables
-- =========

CREATE TABLE IF NOT EXISTS student_parent_rel (
  student_id BIGINT NOT NULL REFERENCES students(id),
  parent_id BIGINT NOT NULL REFERENCES parents(id),
  relation TEXT NOT NULL,
  is_primary BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (student_id, parent_id)
);

CREATE TABLE IF NOT EXISTS class_enrollments (
  id BIGSERIAL PRIMARY KEY,
  student_id BIGINT NOT NULL REFERENCES students(id),
  class_id BIGINT NOT NULL REFERENCES classes(id),
  start_date TIMESTAMPTZ NOT NULL,
  end_date TIMESTAMPTZ,
  reason TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  CONSTRAINT class_enrollments_date_ck CHECK (end_date IS NULL OR end_date >= start_date)
);

-- A student can have only one active enrollment at a time
CREATE UNIQUE INDEX IF NOT EXISTS class_enrollments_active_uniq
  ON class_enrollments (student_id)
  WHERE end_date IS NULL;

CREATE INDEX IF NOT EXISTS class_enrollments_student_idx
  ON class_enrollments (student_id, start_date DESC);

CREATE INDEX IF NOT EXISTS class_enrollments_class_idx
  ON class_enrollments (class_id, start_date DESC);

-- =========
-- Work / Homework
-- =========

CREATE TABLE IF NOT EXISTS student_works (
  id BIGSERIAL PRIMARY KEY,
  student_id BIGINT NOT NULL REFERENCES students(id),
  class_id BIGINT NOT NULL REFERENCES classes(id),
  submit_time TIMESTAMPTZ NOT NULL,
  msg_id TEXT,
  teacher_comment TEXT,
  score NUMERIC(5,2),
  source TEXT NOT NULL,
  work_type TEXT NOT NULL,
  status TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS student_works_student_idx
  ON student_works (student_id, submit_time DESC);

CREATE INDEX IF NOT EXISTS student_works_class_idx
  ON student_works (class_id, submit_time DESC);

-- =========
-- Existing fact table indexes (optional but recommended)
-- =========

CREATE INDEX IF NOT EXISTS wecom_chat_logs_msgtime_idx
  ON wecom_chat_logs (msgtime);

CREATE INDEX IF NOT EXISTS wecom_chat_logs_from_user_idx
  ON wecom_chat_logs (from_user_id);

CREATE INDEX IF NOT EXISTS wecom_chat_logs_room_id_idx
  ON wecom_chat_logs (room_id);

-- =========
-- Trigger: keep students.current_class_id in sync
-- =========

CREATE OR REPLACE FUNCTION sync_current_class_id()
RETURNS TRIGGER AS $$
DECLARE
  v_student_id BIGINT;
  v_current_class_id BIGINT;
BEGIN
  IF (TG_OP = 'DELETE') THEN
    v_student_id := OLD.student_id;
  ELSE
    v_student_id := NEW.student_id;
  END IF;

  SELECT ce.class_id
    INTO v_current_class_id
  FROM class_enrollments ce
  WHERE ce.student_id = v_student_id
    AND ce.end_date IS NULL
  ORDER BY ce.start_date DESC
  LIMIT 1;

  UPDATE students
  SET current_class_id = v_current_class_id
  WHERE id = v_student_id;

  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_sync_current_class_id ON class_enrollments;

CREATE TRIGGER trg_sync_current_class_id
AFTER INSERT OR UPDATE OR DELETE ON class_enrollments
FOR EACH ROW
EXECUTE FUNCTION sync_current_class_id();

-- =========
-- Views
-- =========

CREATE OR REPLACE VIEW v_messages AS
SELECT
  msgid,
  msgtime,
  msgtype,
  from_user_id,
  room_id,
  content_payload,
  raw_data,
  content_payload->>'content' AS content_text,
  CASE
    WHEN room_id IS NOT NULL AND room_id <> '' THEN 'room:' || room_id
    ELSE 'direct:' || from_user_id
  END AS conversation_id
FROM wecom_chat_logs;

CREATE OR REPLACE VIEW v_conversation_members AS
SELECT DISTINCT
  CASE
    WHEN room_id IS NOT NULL AND room_id <> '' THEN 'room:' || room_id
    ELSE 'direct:' || from_user_id
  END AS conversation_id,
  from_user_id AS member_id
FROM wecom_chat_logs;
