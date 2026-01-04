#!/bin/bash
# 企业微信ID映射系统 - 快速启动脚本

set -e

echo "================================================"
echo "  企业微信ID映射管理系统 - 快速启动"
echo "================================================"

# 检测当前IP
echo ""
echo "正在检测当前公网IP..."
CURRENT_IP=$(curl -s https://api.ipify.org)
echo "✅ 当前公网IP: $CURRENT_IP"

# IP白名单提示
echo ""
echo "⚠️  IP白名单检查"
echo "   请确认企业微信后台已配置以下IP:"
echo "   IP地址: $CURRENT_IP"
echo ""

# 检查Python依赖
echo "检查Python依赖..."
if ! python3 -c "import psycopg2, requests, flask" 2>/dev/null; then
    echo "❌ 缺少必要的Python包"
    echo "正在安装依赖..."
    pip install -q psycopg2-binary requests flask
    echo "✅ 依赖安装完成"
else
    echo "✅ Python依赖已满足"
fi

# 检查数据库连接
echo ""
echo "测试数据库连接..."
if python3 -c "
import psycopg2
try:
    conn = psycopg2.connect(host='localhost', database='wechat_db', user='postgres', password='doit123', port='5432')
    conn.close()
    print('✅ 数据库连接成功')
except Exception as e:
    print(f'❌ 数据库连接失败: {e}')
    exit(1)
" 2>/dev/null; then
    echo "数据库检查通过"
else
    echo "⚠️  数据库连接失败，请检查配置"
fi

# 提示选择服务
echo ""
echo "================================================"
echo "请选择要启动的服务:"
echo "  1) wecom_id_mapper (企业微信ID映射) - 端口 5004"
echo "  2) user_messages (用户消息查询) - 端口 5005"
echo "  3) parent_analyzer (家长沟通分析) - 交互式"
echo "  4) 全部启动 (1+2)"
echo "  5) 退出"
echo "================================================"

read -p "请输入选项 [1-5]: " choice

case $choice in
    1)
        echo ""
        echo "🚀 启动企业微信ID映射服务..."
        echo "   访问地址: http://localhost:5004"
        echo "   按 Ctrl+C 停止服务"
        echo ""
        python3 wecom_id_mapper.py
        ;;
    2)
        echo ""
        echo "🚀 启动用户消息查询服务..."
        echo "   访问地址: http://localhost:5005"
        echo "   按 Ctrl+C 停止服务"
        echo ""
        python3 user_messages.py
        ;;
    3)
        echo ""
        echo "🚀 启动家长沟通分析工具..."
        echo ""
        python3 parent_analyzer.py
        ;;
    4)
        echo ""
        echo "🚀 启动所有服务..."
        echo "   企业微信ID映射: http://localhost:5004"
        echo "   用户消息查询: http://localhost:5005"
        echo ""
        echo "启动服务中..."
        python3 wecom_id_mapper.py &
        PID1=$!
        sleep 2
        python3 user_messages.py &
        PID2=$!

        echo ""
        echo "✅ 所有服务已启动"
        echo "   PID: $PID1 (wecom_id_mapper)"
        echo "   PID: $PID2 (user_messages)"
        echo ""
        echo "按 Ctrl+C 停止所有服务"

        # 等待用户中断
        trap "kill $PID1 $PID2 2>/dev/null; echo ''; echo '服务已停止'; exit 0" INT
        wait
        ;;
    5)
        echo "退出"
        exit 0
        ;;
    *)
        echo "❌ 无效选项"
        exit 1
        ;;
esac
