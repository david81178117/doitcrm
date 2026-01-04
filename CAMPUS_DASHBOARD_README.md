# 校区管理综合仪表盘

## 概述

校区管理综合仪表盘是为行政校长设计的管理工具,提供整体运营数据视图,聚焦于家长沟通统计和异常提醒功能。

## 功能特性

### 1. 整体统计看板
- 总学员数 / 在读学员数
- 班级总数
- 段数和阶数
- 30天活跃家长数

### 2. 班级列表视图
- 按段/阶筛选班级
- 显示每个班级的:
  - 在读学员数
  - 家长总数
  - 30天家长活跃度
  - 最近沟通时间
  - 异常提醒标记

### 3. 沟通热力图
- 可视化展示各班级家长活跃度
- 颜色编码:
  - 绿色: 高活跃 (≥80%)
  - 黄色: 中活跃 (50-79%)
  - 橙色: 低活跃 (20-49%)
  - 红色: 不活跃 (<20%)

### 4. 异常提醒
- 30天无沟通家长列表
- 学员流失风险(已退费/休学)
- 支持一键跳转到用户消息查询页面

### 5. 班级详情
- 班级基本信息(段阶、上课时间、教师等)
- 学员列表及家长沟通统计
- 每个学员的:
  - 基本信息
  - 关联家长
  - 30天消息数
  - 最近沟通时间
  - 快捷操作(查看消息)

## 文件结构

```
/workspaces/doitcrm/v2/
├── campus_dashboard.py          # Flask后端服务
├── campus_dashboard.html        # 前端页面
└── db/
    └── campus_dashboard_views.sql  # 数据库视图定义
```

## 部署步骤

### 1. 创建数据库视图

在远程服务器上执行:

```bash
# SSH到服务器
ssh root@101.200.135.82

# 执行SQL脚本创建视图
sudo -u postgres psql -d wechat_db -f /root/doitcrm/db/campus_dashboard_views.sql
```

或者使用scp上传后执行:

```bash
# 本地执行 - 上传SQL文件
sshpass -p '6x86p3eB;' scp -o StrictHostKeyChecking=no \
  /workspaces/doitcrm/v2/db/campus_dashboard_views.sql \
  root@101.200.135.82:/root/doitcrm/db/

# SSH到服务器
sshpass -p '6x86p3eB;' ssh -o StrictHostKeyChecking=no root@101.200.135.82 \
  "cd /tmp && cp /root/doitcrm/db/campus_dashboard_views.sql . && \
   sudo -u postgres psql -d wechat_db -f /tmp/campus_dashboard_views.sql"
```

### 2. 上传程序文件

```bash
# 上传Python后端和HTML前端
sshpass -p '6x86p3eB;' scp -o StrictHostKeyChecking=no \
  /workspaces/doitcrm/v2/campus_dashboard.py \
  /workspaces/doitcrm/v2/campus_dashboard.html \
  root@101.200.135.82:/root/doitcrm/
```

### 3. 创建systemd服务

在服务器上创建 `/etc/systemd/system/doitcrm-dashboard.service`:

```ini
[Unit]
Description=DoitCRM Campus Dashboard Service
After=network.target postgresql.service
Requires=postgresql.service
Documentation=https://github.com/doitcrm

[Service]
Type=simple
User=root
WorkingDirectory=/root/doitcrm
Environment="DB_NAME=wechat_db"
Environment="DB_HOST=localhost"
Environment="DB_USER=postgres"
Environment="DB_PASSWORD="
Environment="PORT=5011"
ExecStart=/usr/bin/python3 /root/doitcrm/campus_dashboard.py
Restart=always
RestartSec=3
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
```

可以通过SSH远程创建:

```bash
sshpass -p '6x86p3eB;' ssh -o StrictHostKeyChecking=no root@101.200.135.82 \
  "cat > /etc/systemd/system/doitcrm-dashboard.service << 'EOF'
[Unit]
Description=DoitCRM Campus Dashboard Service
After=network.target postgresql.service
Requires=postgresql.service

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

[Install]
WantedBy=multi-user.target
EOF
"
```

### 4. 启动服务

```bash
sshpass -p '6x86p3eB;' ssh -o StrictHostKeyChecking=no root@101.200.135.82 \
  "systemctl daemon-reload && \
   systemctl enable doitcrm-dashboard && \
   systemctl start doitcrm-dashboard && \
   systemctl status doitcrm-dashboard"
```

### 5. 验证部署

访问: `http://101.200.135.82:5011`

检查服务状态:
```bash
sshpass -p '6x86p3eB;' ssh -o StrictHostKeyChecking=no root@101.200.135.82 \
  "systemctl status doitcrm-dashboard && \
   journalctl -u doitcrm-dashboard -n 20 --no-pager"
```

## 本地开发测试

### 1. 安装依赖

```bash
pip install flask psycopg2-binary
```

### 2. 启动服务

```bash
cd /workspaces/doitcrm/v2
DB_HOST=localhost DB_NAME=wechat_db PORT=5011 python3 campus_dashboard.py
```

### 3. 访问页面

打开浏览器访问: `http://localhost:5011`

## API文档

### GET /api/overview-stats
获取整体统计数据

**响应示例:**
```json
{
  "status": "success",
  "stats": {
    "total_students": 450,
    "active_students": 420,
    "total_classes": 35,
    "total_sections": 3,
    "total_levels": 7,
    "active_parents_30days": 380
  }
}
```

### GET /api/hierarchy-tree
获取段-阶-班级层级树

**响应示例:**
```json
{
  "status": "success",
  "hierarchy": [
    {
      "section_id": 1,
      "section_name": "一段",
      "section_order": 1,
      "levels": [
        {
          "level_id": 1,
          "level_name": "L1",
          "level_order": 1,
          "classes": [...]
        }
      ]
    }
  ]
}
```

### GET /api/class-stats
获取班级统计信息

**参数:**
- `section_id` (可选): 段ID
- `level_id` (可选): 阶ID

**响应示例:**
```json
{
  "status": "success",
  "data": [
    {
      "class_id": 101,
      "class_name": "周六上午班",
      "section_name": "一段",
      "level_name": "L1",
      "total_parents": 15,
      "active_parents": 12,
      "total_messages": 350,
      "active_30days": 10,
      "inactive_30days_count": 2,
      "churn_risk_count": 0
    }
  ]
}
```

### GET /api/class-details/<class_id>
获取班级详细信息

**响应示例:**
```json
{
  "status": "success",
  "data": {
    "id": 101,
    "name": "周六上午班",
    "section_name": "一段",
    "level_name": "L1",
    "teacher_name": "张老师",
    "students": [
      {
        "student_id": 1001,
        "student_name": "李明",
        "parent_name": "李爸爸",
        "message_count_30days": 25,
        "last_message_time": "2026-01-02T10:30:00",
        "days_since_last_contact": 1
      }
    ]
  }
}
```

### GET /api/alerts
获取异常提醒列表

**响应示例:**
```json
{
  "status": "success",
  "data": [
    {
      "alert_type": "no_contact_30days",
      "alert_category": "长期未沟通",
      "class_name": "周六上午班",
      "student_name": "李明",
      "parent_name": "李爸爸",
      "parent_wecom_id": "wmqDzZEw...",
      "last_contact_time": "2025-11-15T10:30:00",
      "priority": 3
    }
  ]
}
```

## 数据库视图说明

### v2.v_class_parent_comm_stats
班级家长沟通统计视图

**字段:**
- `class_id`: 班级ID
- `class_name`: 班级名称
- `level_name`: 阶名称
- `section_name`: 段名称
- `total_parents`: 总家长数
- `active_parents`: 活跃家长数
- `total_messages`: 总消息数
- `class_last_message_time`: 班级最近消息时间
- `active_7days`: 7天活跃家长数
- `active_30days`: 30天活跃家长数
- `inactive_30days_count`: 30天无沟通家长数
- `churn_risk_count`: 流失风险学员数

### v2.v_class_student_stats
班级学员统计视图

**字段:**
- `class_id`: 班级ID
- `total_students`: 总学员数
- `active_students`: 在读学员数
- `churned_students`: 已退费学员数
- `paused_students`: 休学学员数

## 与现有系统的集成

### 跳转到用户消息查询
点击"查看消息"按钮时,会跳转到用户消息查询页面:
```
/user_messages.html?user_id=<parent_wecom_id>&student_name=<student_name>
```

## 性能优化

### 数据库索引
视图创建脚本已包含以下索引:
- `idx_chat_logs_from_time`: 提升消息查询性能
- `idx_chat_logs_msgtype`: 按消息类型筛选
- `idx_students_class_status`: 学员状态查询
- `idx_user_student_rel_primary`: 主要家长关系查询

### 缓存建议
未来可以考虑:
- Redis缓存整体统计数据(有效期5分钟)
- 班级列表数据缓存(有效期10分钟)
- 异常提醒缓存(有效期15分钟)

## 故障排查

### 服务无法启动
```bash
# 查看日志
journalctl -u doitcrm-dashboard -n 50 --no-pager

# 检查端口占用
netstat -tuln | grep 5011

# 测试数据库连接
sudo -u postgres psql -d wechat_db -c "SELECT 1"
```

### 数据不显示
```bash
# 检查视图是否创建
sudo -u postgres psql -d wechat_db -c "\dv v2.*"

# 测试视图查询
sudo -u postgres psql -d wechat_db -c "SELECT COUNT(*) FROM v2.v_class_parent_comm_stats"
```

## 后续改进建议

1. **增加导出功能**: 支持导出班级报表为Excel/CSV
2. **添加时间范围选择**: 允许自定义统计时间范围
3. **图表可视化**: 使用Chart.js添加趋势图
4. **移动端优化**: 改进响应式布局
5. **实时通知**: 异常提醒推送到企业微信

## 技术栈

- **后端**: Python 3 + Flask
- **前端**: HTML5 + CSS3 + Vanilla JavaScript
- **数据库**: PostgreSQL 15
- **UI风格**: 与user_messages.html一致的紫色渐变主题

## 作者

DoitCRM团队

## 版本历史

- v1.0 (2026-01-03): 初始版本
  - 整体统计看板
  - 班级列表视图
  - 沟通热力图
  - 异常提醒
  - 班级详情模态框
