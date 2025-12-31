-- ========================================
-- DoitCRM 数据库初始化脚本
-- 用于阿里云生产环境部署
-- ========================================

-- 创建 wecom_id_mappings 表
CREATE TABLE IF NOT EXISTS wecom_id_mappings (
    id SERIAL PRIMARY KEY,
    id_type TEXT NOT NULL,                      -- 'room_id' 或 'user_id'
    original_id TEXT NOT NULL,                  -- 企业微信原始ID
    display_name TEXT,                          -- 显示名称（真实姓名/群组名）
    user_role TEXT,                             -- 'parent' 或 'teacher'（仅用户）
    notes TEXT,                                 -- 备注信息
    student_name TEXT,                          -- 学员姓名
    student_english_name TEXT,                  -- 学员英文名
    student_class_room_id TEXT,                 -- 班级对应的Room ID
    is_mapped BOOLEAN DEFAULT FALSE,            -- 是否已映射
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE(id_type, original_id)
);

-- 创建索引
CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_lookup
ON wecom_id_mappings(id_type, original_id);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_display
ON wecom_id_mappings(display_name);

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_role
ON wecom_id_mappings(user_role) WHERE user_role IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_wecom_id_mappings_student_class
ON wecom_id_mappings(student_class_room_id) WHERE student_class_room_id IS NOT NULL;

-- ========================================
-- 初始化数据提取 (从 wecom_chat_logs 自动提取 ID)
-- ========================================

-- 提取所有群组ID (使用 roomid 字段,注意不是 room_id)
INSERT INTO wecom_id_mappings (id_type, original_id)
SELECT DISTINCT 'room_id', roomid
FROM wecom_chat_logs
WHERE roomid IS NOT NULL AND roomid != ''
ON CONFLICT (id_type, original_id) DO NOTHING;

-- 提取所有用户ID (from_user_id)
INSERT INTO wecom_id_mappings (id_type, original_id)
SELECT DISTINCT 'user_id', from_user_id
FROM wecom_chat_logs
WHERE from_user_id IS NOT NULL AND from_user_id != ''
ON CONFLICT (id_type, original_id) DO NOTHING;

-- 提取 tolist 中的用户ID (私聊对象)
INSERT INTO wecom_id_mappings (id_type, original_id)
SELECT DISTINCT 'user_id', jsonb_array_elements_text(raw_data->'tolist')
FROM wecom_chat_logs
WHERE (roomid IS NULL OR roomid = '')
  AND raw_data ? 'tolist'
  AND jsonb_array_length(raw_data->'tolist') > 0
ON CONFLICT (id_type, original_id) DO NOTHING;

-- ========================================
-- 完成提示
-- ========================================
DO $$
DECLARE
    room_count INTEGER;
    user_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO room_count FROM wecom_id_mappings WHERE id_type = 'room_id';
    SELECT COUNT(*) INTO user_count FROM wecom_id_mappings WHERE id_type = 'user_id';

    RAISE NOTICE '数据库初始化完成!';
    RAISE NOTICE '提取的群组数量: %', room_count;
    RAISE NOTICE '提取的用户数量: %', user_count;
    RAISE NOTICE '总计: %', room_count + user_count;
END $$;
