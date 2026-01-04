#!/bin/bash
# 校区管理综合仪表盘 - 快速部署脚本

set -e  # 遇到错误立即退出

SERVER_HOST="101.200.135.82"
SERVER_USER="root"
SERVER_PASSWORD="6x86p3eB;"
REMOTE_DIR="/root/doitcrm"

echo "========================================="
echo "校区管理综合仪表盘 - 部署脚本"
echo "========================================="
echo ""

# 步骤1: 上传SQL文件
echo "[1/5] 上传数据库视图文件..."
sshpass -p "${SERVER_PASSWORD}" scp -o StrictHostKeyChecking=no \
  /workspaces/doitcrm/v2/db/campus_dashboard_views.sql \
  ${SERVER_USER}@${SERVER_HOST}:${REMOTE_DIR}/db/

echo "✓ SQL文件上传成功"
echo ""

# 步骤2: 创建数据库视图
echo "[2/5] 创建数据库视图..."
sshpass -p "${SERVER_PASSWORD}" ssh -o StrictHostKeyChecking=no ${SERVER_USER}@${SERVER_HOST} \
  "cp ${REMOTE_DIR}/db/campus_dashboard_views.sql /tmp/ && \
   cd /tmp && \
   sudo -u postgres psql -d wechat_db -f /tmp/campus_dashboard_views.sql 2>&1 | head -30"

echo "✓ 数据库视图创建成功"
echo ""

# 步骤3: 上传应用文件
echo "[3/5] 上传应用文件..."
sshpass -p "${SERVER_PASSWORD}" scp -o StrictHostKeyChecking=no \
  /workspaces/doitcrm/v2/campus_dashboard.py \
  /workspaces/doitcrm/v2/campus_dashboard.html \
  ${SERVER_USER}@${SERVER_HOST}:${REMOTE_DIR}/

echo "✓ 应用文件上传成功"
echo ""

# 步骤4: 创建systemd服务
echo "[4/5] 创建systemd服务..."
sshpass -p "${SERVER_PASSWORD}" ssh -o StrictHostKeyChecking=no ${SERVER_USER}@${SERVER_HOST} \
  "cat > /etc/systemd/system/doitcrm-dashboard.service << 'EOF'
[Unit]
Description=DoitCRM Campus Dashboard Service
After=network.target postgresql.service
Requires=postgresql.service
Documentation=https://github.com/doitcrm

[Service]
Type=simple
User=root
WorkingDirectory=/root/doitcrm
Environment=\"DB_NAME=wechat_db\"
Environment=\"DB_HOST=localhost\"
Environment=\"DB_USER=postgres\"
Environment=\"DB_PASSWORD=\"
Environment=\"PORT=5011\"
ExecStart=/usr/bin/python3 /root/doitcrm/campus_dashboard.py
Restart=always
RestartSec=3
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
EOF
"

echo "✓ systemd服务配置创建成功"
echo ""

# 步骤5: 启动服务
echo "[5/5] 启动服务..."
sshpass -p "${SERVER_PASSWORD}" ssh -o StrictHostKeyChecking=no ${SERVER_USER}@${SERVER_HOST} \
  "systemctl daemon-reload && \
   systemctl enable doitcrm-dashboard && \
   systemctl restart doitcrm-dashboard && \
   sleep 2 && \
   systemctl status doitcrm-dashboard --no-pager -l"

echo ""
echo "========================================="
echo "部署完成!"
echo "========================================="
echo ""
echo "访问地址: http://${SERVER_HOST}:5011"
echo ""
echo "查看日志: journalctl -u doitcrm-dashboard -f"
echo "停止服务: systemctl stop doitcrm-dashboard"
echo "重启服务: systemctl restart doitcrm-dashboard"
echo ""

# 测试服务是否正常
echo "正在测试服务..."
sleep 3
if curl -s "http://${SERVER_HOST}:5011/api/overview-stats" | grep -q "success"; then
    echo "✓ 服务测试成功!"
else
    echo "⚠ 服务可能未正常启动,请检查日志"
fi
