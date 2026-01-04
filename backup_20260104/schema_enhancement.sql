-- =========
-- New tables for enhanced functionality
-- =========

-- Student performance tracking
CREATE TABLE IF NOT EXISTS student_performance (
    id BIGSERIAL PRIMARY KEY,
    student_id BIGINT NOT NULL REFERENCES students(id),
    class_id BIGINT NOT NULL REFERENCES classes(id),
    evaluation_date TIMESTAMPTZ NOT NULL,
    attendance_rate NUMERIC(5,2),
    participation_score INTEGER CHECK (participation_score BETWEEN 0 AND 100),
    behavior_score INTEGER CHECK (behavior_score BETWEEN 0 AND 100),
    notes TEXT,
    evaluated_by BIGINT NOT NULL REFERENCES teachers(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Homework assignments tracking
CREATE TABLE IF NOT EXISTS homework_assignments (
    id BIGSERIAL PRIMARY KEY,
    class_id BIGINT NOT NULL REFERENCES classes(id),
    assigned_by BIGINT NOT NULL REFERENCES teachers(id),
    title TEXT NOT NULL,
    description TEXT,
    due_date TIMESTAMPTZ,
    msg_id TEXT, -- Reference to the chat message where homework was assigned
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Teacher specializations
CREATE TABLE IF NOT EXISTS teacher_specializations (
    teacher_id BIGINT NOT NULL REFERENCES teachers(id),
    specialization TEXT NOT NULL,
    level TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (teacher_id, specialization)
);

-- Class schedule
CREATE TABLE IF NOT EXISTS class_schedule (
    id BIGSERIAL PRIMARY KEY,
    class_id BIGINT NOT NULL REFERENCES classes(id),
    day_of_week INTEGER NOT NULL CHECK (day_of_week BETWEEN 1 AND 7),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    effective_from DATE NOT NULL,
    effective_to DATE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT valid_time_range CHECK (start_time < end_time),
    CONSTRAINT valid_date_range CHECK (effective_to IS NULL OR effective_to >= effective_from)
);

-- Student attendance tracking
CREATE TABLE IF NOT EXISTS student_attendance (
    id BIGSERIAL PRIMARY KEY,
    student_id BIGINT NOT NULL REFERENCES students(id),
    class_id BIGINT NOT NULL REFERENCES classes(id),
    schedule_id BIGINT NOT NULL REFERENCES class_schedule(id),
    status TEXT NOT NULL CHECK (status IN ('present', 'late', 'absent', 'excused')),
    notes TEXT,
    recorded_by BIGINT NOT NULL REFERENCES teachers(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- =========
-- Alter existing tables
-- =========

-- Add homework reference to student works
ALTER TABLE student_works 
ADD COLUMN IF NOT EXISTS homework_id BIGINT REFERENCES homework_assignments(id);

-- =========
-- Indexes for performance
-- =========

-- Student performance indexes
CREATE INDEX IF NOT EXISTS idx_student_performance_student 
ON student_performance (student_id, evaluation_date DESC);

CREATE INDEX IF NOT EXISTS idx_student_performance_class 
ON student_performance (class_id, evaluation_date DESC);

-- Homework indexes
CREATE INDEX IF NOT EXISTS idx_homework_assignments_class 
ON homework_assignments (class_id, due_date DESC);

CREATE INDEX IF NOT EXISTS idx_student_works_homework 
ON student_works (homework_id) WHERE homework_id IS NOT NULL;

-- Class schedule indexes
CREATE INDEX IF NOT EXISTS idx_class_schedule_class 
ON class_schedule (class_id, day_of_week);

CREATE INDEX IF NOT EXISTS idx_class_schedule_effective 
ON class_schedule (class_id, effective_from, effective_to);

-- Attendance indexes
CREATE INDEX IF NOT EXISTS idx_student_attendance_student 
ON student_attendance (student_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_student_attendance_class 
ON student_attendance (class_id, created_at DESC);

-- =========
-- Views
-- =========

-- Parent communications view (last 6 months)
CREATE OR REPLACE VIEW v_parent_communications AS
SELECT 
    p.id AS parent_id,
    p.name AS parent_name,
    s.id AS student_id,
    s.name AS student_name,
    c.id AS class_id,
    c.name AS class_name,
    m.msgtime,
    m.content_text,
    m.conversation_id,
    CASE 
        WHEN m.room_id IS NOT NULL THEN 'group'
        ELSE 'direct'
    END AS communication_type,
    t.id AS teacher_id,
    t.name AS teacher_name
FROM parents p
JOIN student_parent_rel spr ON p.id = spr.parent_id
JOIN students s ON spr.student_id = s.id
LEFT JOIN classes c ON s.current_class_id = c.id
JOIN v_messages m ON (
    m.from_user_id = p.wechat_id 
    OR (
        m.room_id IN (
            SELECT room_id 
            FROM classes 
            WHERE id = s.current_class_id
        )
        AND m.from_user_id = p.wechat_id
    )
)
LEFT JOIN teachers t ON t.wechat_id = 
    CASE 
        WHEN m.room_id IS NULL THEN m.from_user_id
        ELSE NULL
    END
WHERE m.msgtime >= NOW() - INTERVAL '6 months';

-- Student performance summary view
CREATE OR REPLACE VIEW v_student_performance_summary AS
SELECT 
    s.id AS student_id,
    s.name AS student_name,
    c.id AS class_id,
    c.name AS class_name,
    COUNT(DISTINCT ha.id) AS total_homework_assigned,
    COUNT(DISTINCT sw.id) AS total_homework_submitted,
    ROUND(AVG(sp.attendance_rate)::numeric, 2) AS avg_attendance_rate,
    ROUND(AVG(sp.participation_score)::numeric, 2) AS avg_participation_score,
    ROUND(AVG(sp.behavior_score)::numeric, 2) AS avg_behavior_score,
    s.points AS total_points,
    s.profile_tags
FROM students s
LEFT JOIN classes c ON s.current_class_id = c.id
LEFT JOIN homework_assignments ha ON ha.class_id = c.id
LEFT JOIN student_works sw ON sw.student_id = s.id AND sw.homework_id = ha.id
LEFT JOIN student_performance sp ON sp.student_id = s.id
GROUP BY s.id, s.name, c.id, c.name, s.points, s.profile_tags;

-- Class performance summary view
CREATE OR REPLACE VIEW v_class_performance_summary AS
SELECT 
    c.id AS class_id,
    c.name AS class_name,
    t1.name AS main_teacher,
    t2.name AS advisor,
    COUNT(DISTINCT s.id) AS student_count,
    COUNT(DISTINCT ha.id) AS total_homework_assigned,
    ROUND(AVG(sp.attendance_rate)::numeric, 2) AS avg_attendance_rate,
    ROUND(AVG(sp.participation_score)::numeric, 2) AS avg_participation_score,
    ROUND(AVG(sp.behavior_score)::numeric, 2) AS avg_behavior_score
FROM classes c
LEFT JOIN teachers t1 ON c.main_teacher_id = t1.id
LEFT JOIN teachers t2 ON c.advisor_id = t2.id
LEFT JOIN students s ON s.current_class_id = c.id
LEFT JOIN homework_assignments ha ON ha.class_id = c.id
LEFT JOIN student_performance sp ON sp.class_id = c.id
WHERE c.is_active = true
GROUP BY c.id, c.name, t1.name, t2.name;
