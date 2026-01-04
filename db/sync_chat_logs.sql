-- 增量同步聊天记录从 public.wecom_chat_logs 到 v2.wecom_chat_logs
-- 只插入新消息，已存在的 msgid 会被跳过
--
-- 使用方法：
-- psql -U postgres -d wechat_db -f sync_chat_logs.sql

BEGIN;

INSERT INTO v2.wecom_chat_logs (
    msgid, action, msgtype, msgtime, from_user_id, roomid,
    tolist, content_payload, raw_data, created_at
)
SELECT
    msgid, action, msgtype, msgtime, from_user_id, roomid,
    tolist, content_payload, raw_data, created_at
FROM public.wecom_chat_logs
ON CONFLICT (msgid) DO NOTHING;

-- 显示同步结果
DO $$
DECLARE
    public_count INTEGER;
    v2_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO public_count FROM public.wecom_chat_logs;
    SELECT COUNT(*) INTO v2_count FROM v2.wecom_chat_logs;

    RAISE NOTICE '========================================';
    RAISE NOTICE '同步完成！';
    RAISE NOTICE 'public.wecom_chat_logs: % 条记录', public_count;
    RAISE NOTICE 'v2.wecom_chat_logs: % 条记录', v2_count;
    RAISE NOTICE '========================================';
END $$;

COMMIT;
