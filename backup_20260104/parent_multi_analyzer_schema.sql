-- ========================================
-- 多角度家长分析系统 - 数据库Schema变更
-- 为 wecom_id_mappings 添加 "阶" 和 "段" 字段
-- ========================================

-- 添加阶和段字段
ALTER TABLE wecom_id_mappings
ADD COLUMN IF NOT EXISTS student_level TEXT,    -- 阶（L1, L2, L3, L4, L5, L6, L7）
ADD COLUMN IF NOT EXISTS student_section TEXT;  -- 段（一段, 二段, 三段）

-- 添加索引以提升筛选性能
CREATE INDEX IF NOT EXISTS idx_student_level ON wecom_id_mappings(student_level)
  WHERE student_level IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_student_section ON wecom_id_mappings(student_section)
  WHERE student_section IS NOT NULL;

-- 创建视图简化多维度筛选查询
CREATE OR REPLACE VIEW v_user_filter_info AS
SELECT
    original_id as wechat_id,
    display_name,
    user_role,
    student_name,
    student_english_name,
    student_class_room_id,
    student_level,
    student_section,
    -- 消息统计（用于排序）
    (SELECT COUNT(*) FROM wecom_chat_logs WHERE from_user_id = wecom_id_mappings.original_id) as message_count,
    (SELECT COUNT(*) FROM wecom_chat_logs WHERE from_user_id = wecom_id_mappings.original_id AND msgtype = 'text') as text_message_count
FROM wecom_id_mappings
WHERE id_type = 'user_id';

-- 完成提示
DO $$
BEGIN
    RAISE NOTICE '多角度家长分析系统 - 数据库变更完成！';
    RAISE NOTICE '  - 新增字段: student_level (阶)';
    RAISE NOTICE '  - 新增字段: student_section (段)';
    RAISE NOTICE '  - 新增索引: idx_student_level, idx_student_section';
    RAISE NOTICE '  - 新增视图: v_user_filter_info';
    RAISE NOTICE '';
    RAISE NOTICE '层级关系：';
    RAISE NOTICE '  - 段: 一段(L1-L3)、二段(L4-L5)、三段(L6-L7)';
    RAISE NOTICE '  - 阶: L1, L2, L3, L4, L5, L6, L7';
    RAISE NOTICE '  - 班级: student_class_room_id';
END $$;
