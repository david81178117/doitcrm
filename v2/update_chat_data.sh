#!/bin/bash
# 完整的聊天数据更新流程
# 1. 从 JSONL 导入到 public.wecom_chat_logs
# 2. 同步到 v2.wecom_chat_logs
#
# 使用方法：
# ./update_chat_data.sh [--jsonl /path/to/file.jsonl] [--conflict skip|update]

set -e  # 遇到错误立即退出

# 默认参数
JSONL_PATH="${JSONL_PATH:-/opt/wecom/decrypted_database_ready.jsonl}"
CONFLICT_MODE="update"
DB_NAME="wechat_db"
DB_USER="postgres"
DB_PASSWORD="${DB_PASSWORD:-doit123}"
ETL_SCRIPT="/root/wechatdata/scripts/wecom_etl.py"
SYNC_SCRIPT="/root/doitcrm/db/sync_chat_logs.sql"

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    case $1 in
        --jsonl)
            JSONL_PATH="$2"
            shift 2
            ;;
        --conflict)
            CONFLICT_MODE="$2"
            shift 2
            ;;
        *)
            echo "未知参数: $1"
            echo "使用方法: $0 [--jsonl FILE] [--conflict skip|update]"
            exit 1
            ;;
    esac
done

echo "========================================"
echo "聊天数据更新脚本"
echo "========================================"
echo "JSONL 文件: $JSONL_PATH"
echo "冲突策略: $CONFLICT_MODE"
echo "数据库: $DB_NAME"
echo "========================================"

# 检查文件是否存在
if [ ! -f "$JSONL_PATH" ]; then
    echo "错误: JSONL 文件不存在: $JSONL_PATH"
    exit 1
fi

if [ ! -f "$ETL_SCRIPT" ]; then
    echo "错误: ETL 脚本不存在: $ETL_SCRIPT"
    exit 1
fi

if [ ! -f "$SYNC_SCRIPT" ]; then
    echo "错误: 同步脚本不存在: $SYNC_SCRIPT"
    exit 1
fi

echo ""
echo "步骤 1/2: 导入 JSONL 数据到 public.wecom_chat_logs..."
echo "----------------------------------------"

export DATABASE_URL="postgresql://$DB_USER:$DB_PASSWORD@localhost/$DB_NAME"
python3 "$ETL_SCRIPT" --jsonl "$JSONL_PATH" --conflict "$CONFLICT_MODE"

if [ $? -ne 0 ]; then
    echo "错误: ETL 导入失败"
    exit 1
fi

echo ""
echo "步骤 2/2: 同步数据到 v2.wecom_chat_logs..."
echo "----------------------------------------"

cat "$SYNC_SCRIPT" | sudo -u postgres psql -d "$DB_NAME"

if [ $? -ne 0 ]; then
    echo "错误: 数据同步失败"
    exit 1
fi

echo ""
echo "========================================"
echo "✅ 数据更新完成！"
echo "========================================"
echo ""
echo "现在可以访问用户消息查询系统查看最新数据："
echo "http://101.200.135.82:5006/"
echo ""
