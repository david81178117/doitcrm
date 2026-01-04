-- 校区管理综合仪表盘 - 数据库视图
-- 用于统计班级家长沟通情况和学员分布

-- 1. 班级家长沟通统计视图
CREATE OR REPLACE VIEW v2.v_class_parent_comm_stats AS
WITH parent_students AS (
    -- 获取每个班级的家长-学员关联
    SELECT
        s.class_id,
        s.id AS student_id,
        s.name AS student_name,
        s.status,
        m.id AS wecom_mapping_id,
        m.original_id AS parent_wecom_id,
        COALESCE(NULLIF(m.business_name, ''), NULLIF(m.wecom_nickname, ''), m.original_id) AS parent_name
    FROM v2.students s
    INNER JOIN v2.wecom_user_student_rel rel ON rel.student_id = s.id AND rel.is_primary = TRUE
    INNER JOIN v2.wecom_id_mappings m ON m.id = rel.wecom_id AND m.user_role = 'parent'
    WHERE s.class_id IS NOT NULL
),
parent_message_stats AS (
    -- 统计每个家长的消息数和最近消息时间
    SELECT
        ps.class_id,
        ps.parent_wecom_id,
        ps.parent_name,
        ps.student_name,
        ps.status AS student_status,
        COUNT(wcl.msgid) AS message_count,
        MAX(wcl.msgtime) AS last_message_time,
        MIN(wcl.msgtime) AS first_message_time
    FROM parent_students ps
    LEFT JOIN v2.wecom_chat_logs wcl
        ON wcl.msgtype = 'text'
        AND (
            -- 群聊消息
            (wcl.roomid IS NOT NULL AND wcl.roomid <> '' AND wcl.from_user_id = ps.parent_wecom_id)
            OR
            -- 私聊消息(双向)
            ((wcl.roomid IS NULL OR wcl.roomid = '') AND (wcl.from_user_id = ps.parent_wecom_id OR ps.parent_wecom_id = ANY(wcl.tolist)))
        )
    GROUP BY ps.class_id, ps.parent_wecom_id, ps.parent_name, ps.student_name, ps.status
)
SELECT
    c.id AS class_id,
    c.name AS class_name,
    c.room_id,
    l.id AS level_id,
    l.name AS level_name,
    sec.id AS section_id,
    sec.name AS section_name,
    c.teacher_wecom_id,
    c.head_teacher_wecom_id,
    c.start_time,
    c.end_time,
    c.course_progress,
    c.promotion,
    -- 班级统计
    COUNT(DISTINCT pms.parent_wecom_id) AS total_parents,
    COUNT(DISTINCT CASE WHEN pms.message_count > 0 THEN pms.parent_wecom_id END) AS active_parents,
    SUM(COALESCE(pms.message_count, 0))::INTEGER AS total_messages,
    MAX(pms.last_message_time) AS class_last_message_time,
    -- 活跃度指标
    COUNT(DISTINCT CASE
        WHEN pms.last_message_time >= NOW() - INTERVAL '7 days' THEN pms.parent_wecom_id
    END) AS active_7days,
    COUNT(DISTINCT CASE
        WHEN pms.last_message_time >= NOW() - INTERVAL '30 days' THEN pms.parent_wecom_id
    END) AS active_30days,
    -- 异常指标
    COUNT(DISTINCT CASE
        WHEN pms.last_message_time < NOW() - INTERVAL '30 days'
        OR pms.last_message_time IS NULL THEN pms.parent_wecom_id
    END) AS inactive_30days_count,
    COUNT(DISTINCT CASE
        WHEN pms.student_status IN ('已退费', '休学') THEN pms.parent_wecom_id
    END) AS churn_risk_count
FROM v2.classes c
INNER JOIN v2.levels l ON l.id = c.level_id
INNER JOIN v2.sections sec ON sec.id = l.section_id
LEFT JOIN parent_message_stats pms ON pms.class_id = c.id
WHERE c.is_active = TRUE
GROUP BY
    c.id, c.name, c.room_id, l.id, l.name,
    sec.id, sec.name, c.teacher_wecom_id, c.head_teacher_wecom_id,
    c.start_time, c.end_time, c.course_progress, c.promotion;

-- 2. 班级学员统计视图
CREATE OR REPLACE VIEW v2.v_class_student_stats AS
SELECT
    c.id AS class_id,
    c.name AS class_name,
    COUNT(*) AS total_students,
    COUNT(CASE WHEN s.status = '在读' THEN 1 END) AS active_students,
    COUNT(CASE WHEN s.status = '已退费' THEN 1 END) AS churned_students,
    COUNT(CASE WHEN s.status = '休学' THEN 1 END) AS paused_students,
    array_agg(
        json_build_object(
            'student_id', s.id,
            'student_name', s.name,
            'english_name', s.english_name,
            'status', s.status
        ) ORDER BY s.name
    ) AS students_detail
FROM v2.students s
INNER JOIN v2.classes c ON s.class_id = c.id
WHERE s.class_id IS NOT NULL
GROUP BY c.id, c.name;

-- 创建索引以提升查询性能
CREATE INDEX IF NOT EXISTS idx_chat_logs_from_time ON v2.wecom_chat_logs(from_user_id, msgtime);
CREATE INDEX IF NOT EXISTS idx_chat_logs_msgtype ON v2.wecom_chat_logs(msgtype);
CREATE INDEX IF NOT EXISTS idx_students_class_status ON v2.students(class_id, status);
CREATE INDEX IF NOT EXISTS idx_user_student_rel_primary ON v2.wecom_user_student_rel(student_id, is_primary);
