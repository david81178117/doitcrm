-- v2 段/阶/班级层级表 + 学员关联
CREATE SCHEMA IF NOT EXISTS v2;

CREATE TABLE IF NOT EXISTS v2.sections (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    code TEXT NOT NULL UNIQUE,
    description TEXT,
    sort_order INTEGER NOT NULL,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS v2.levels (
    id SERIAL PRIMARY KEY,
    section_id INTEGER NOT NULL REFERENCES v2.sections(id) ON UPDATE CASCADE,
    name TEXT NOT NULL UNIQUE,
    code TEXT NOT NULL UNIQUE,
    description TEXT,
    sort_order INTEGER NOT NULL,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS v2.classes (
    id SERIAL PRIMARY KEY,
    level_id INTEGER NOT NULL REFERENCES v2.levels(id) ON UPDATE CASCADE,
    room_id TEXT UNIQUE,
    name TEXT NOT NULL,
    teacher_wecom_id TEXT,
    head_teacher_wecom_id TEXT,
    start_time TEXT,
    end_time TEXT,
    course_progress TEXT,
    promotion TEXT,
    max_students INTEGER,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_levels_section ON v2.levels(section_id);
CREATE INDEX IF NOT EXISTS idx_classes_level ON v2.classes(level_id);
CREATE INDEX IF NOT EXISTS idx_classes_room ON v2.classes(room_id);

ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS start_time TEXT;
ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS end_time TEXT;
ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS course_progress TEXT;
ALTER TABLE v2.classes ADD COLUMN IF NOT EXISTS promotion TEXT;

-- 初始化段
INSERT INTO v2.sections (name, code, sort_order) VALUES
('一段', 'section_1', 1),
('二段', 'section_2', 2),
('三段', 'section_3', 3)
ON CONFLICT DO NOTHING;

-- 初始化阶
INSERT INTO v2.levels (section_id, name, code, sort_order) VALUES
(1, 'L1', 'level_1', 1),
(1, 'L2', 'level_2', 2),
(1, 'L3', 'level_3', 3),
(2, 'L4', 'level_4', 4),
(2, 'L5', 'level_5', 5),
(3, 'L6', 'level_6', 6),
(3, 'L7', 'level_7', 7)
ON CONFLICT DO NOTHING;

-- 为 v2.students 增加 class_id 并回填
ALTER TABLE v2.students
ADD COLUMN IF NOT EXISTS class_id INTEGER REFERENCES v2.classes(id);

ALTER TABLE v2.students
ADD COLUMN IF NOT EXISTS status TEXT NOT NULL DEFAULT '在读';

-- 从已存在的 class_room_id 生成班级记录（默认 level=L1，可后续调整）
INSERT INTO v2.classes (level_id, room_id, name)
SELECT
    l.id,
    s.class_room_id,
    COALESCE(rm.business_name, rm.wecom_nickname, s.class_room_id)
FROM v2.students s
LEFT JOIN v2.wecom_id_mappings rm
  ON rm.id_type = 'room_id' AND rm.original_id = s.class_room_id
LEFT JOIN v2.levels l
  ON l.name = COALESCE(NULLIF(rm.profile->>'student_level',''), 'L1')
WHERE s.class_room_id IS NOT NULL AND s.class_room_id <> ''
ON CONFLICT (room_id) DO NOTHING;

UPDATE v2.students s
SET class_id = c.id
FROM v2.classes c
WHERE s.class_room_id = c.room_id;

CREATE OR REPLACE VIEW v2.v_student_hierarchy AS
SELECT 
    s.id AS student_id,
    s.name AS student_name,
    s.english_name,
    c.id AS class_id,
    c.name AS class_name,
    c.room_id,
    l.id AS level_id,
    l.name AS level_name,
    l.code AS level_code,
    sec.id AS section_id,
    sec.name AS section_name,
    sec.code AS section_code
FROM v2.students s
LEFT JOIN v2.classes c ON s.class_id = c.id
LEFT JOIN v2.levels l ON c.level_id = l.id
LEFT JOIN v2.sections sec ON l.section_id = sec.id
WHERE s.id IS NOT NULL;
