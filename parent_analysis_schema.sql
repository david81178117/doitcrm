-- ========================================
-- 家长沟通分析系统 - 数据库表结构
-- ========================================

-- 创建主分析结果表
CREATE TABLE IF NOT EXISTS parent_communication_analysis (
    id BIGSERIAL PRIMARY KEY,
    wechat_id TEXT NOT NULL,  -- 对应 wecom_id_mappings.original_id
    analysis_date TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    message_count INTEGER NOT NULL,
    direct_message_count INTEGER NOT NULL DEFAULT 0,
    group_message_count INTEGER NOT NULL DEFAULT 0,
    date_range_start TIMESTAMPTZ,
    date_range_end TIMESTAMPTZ,

    -- LLM分析结果
    primary_concerns JSONB,  -- 主要关注点 [{category, detail, intensity, examples}]
    emotional_tone JSONB,    -- 情绪态度 {overall, details}
    communication_style TEXT, -- 沟通风格
    engagement_level TEXT,    -- 参与度: high/medium/low
    auto_tags JSONB DEFAULT '[]'::jsonb,  -- 自动标签

    raw_analysis_text TEXT,   -- LLM原始返回
    analysis_summary TEXT,    -- 分析摘要

    -- 元数据
    coze_bot_id TEXT,
    analysis_duration_ms INTEGER,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 创建唯一索引（每个用户每天只有一条最新分析）
CREATE UNIQUE INDEX IF NOT EXISTS idx_pca_unique_daily
    ON parent_communication_analysis(wechat_id, (analysis_date::date));

-- 创建索引
CREATE INDEX IF NOT EXISTS idx_pca_wechat_id ON parent_communication_analysis(wechat_id);
CREATE INDEX IF NOT EXISTS idx_pca_analysis_date ON parent_communication_analysis(analysis_date DESC);
CREATE INDEX IF NOT EXISTS idx_pca_auto_tags ON parent_communication_analysis USING gin(auto_tags);
CREATE INDEX IF NOT EXISTS idx_pca_engagement ON parent_communication_analysis(engagement_level)
    WHERE engagement_level IS NOT NULL;

-- 创建与映射表关联的视图
CREATE OR REPLACE VIEW v_parent_analysis_with_mapping AS
SELECT
    pca.id,
    pca.wechat_id,
    pca.analysis_date,
    pca.message_count,
    pca.direct_message_count,
    pca.group_message_count,
    pca.date_range_start,
    pca.date_range_end,
    pca.primary_concerns,
    pca.emotional_tone,
    pca.communication_style,
    pca.engagement_level,
    pca.auto_tags,
    pca.analysis_summary,
    pca.created_at,
    -- 映射表字段
    wim.display_name,
    wim.user_role,
    wim.student_name,
    wim.student_english_name,
    wim.student_class_room_id
FROM parent_communication_analysis pca
LEFT JOIN wecom_id_mappings wim
    ON pca.wechat_id = wim.original_id
    AND wim.id_type = 'user_id';

-- 完成提示
DO $$
BEGIN
    RAISE NOTICE '家长沟通分析表创建完成！';
    RAISE NOTICE '表名: parent_communication_analysis';
    RAISE NOTICE '视图: v_parent_analysis_with_mapping';
END $$;
