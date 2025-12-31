# DoitCRM 阿里云部署指南

## 概述

本文档介绍如何将 DoitCRM 用户消息查询系统和企微ID映射管理系统部署到阿里云生产环境。

## 系统要求

- **操作系统**: Linux (CentOS/Ubuntu)
- **Python**: 3.8+
- **PostgreSQL**: 12+
- **数据库**: wechat_db
- **网络**: 端口 5004, 5005 可用

## 部署架构

```
阿里云服务器
├── /root/wechatdata/          # ETL数据更新系统
│   ├── scripts/wecom_etl.py   # 数据导入脚本
│   └── ...
├── /root/doitcrm/             # CRM查询系统 (本次部署)
│   ├── wecom_id_mapper.py     # ID映射管理服务 (端口:5004)
│   ├── user_messages.py       # 消息查询服务 (端口:5005)
│   ├── logs/                  # 日志目录
│   └── ...
└── PostgreSQL                  # wechat_db 数据库
    ├── wecom_chat_logs         # 聊天记录表 (ETL写入)
    └── wecom_id_mappings       # ID映射表 (CRM读写)
```

## 关键技术差异

### 数据库字段名适配

开发环境代码已适配阿里云ETL脚本的字段名:

| 字段用途 | 开发环境 | 阿里云生产环境 | 状态 |
|---------|---------|--------------|------|
| 群组ID   | room_id | **roomid**  | ✅ 已适配 |
| 用户ID   | from_user_id | from_user_id | ✅ 一致 |
| 消息时间 | msgtime | msgtime | ✅ 一致 |

**重要**: 代码已全部修改为使用 `roomid` 字段。

## 快速部署 (推荐)

### 步骤1: 上传文件到阿里云

在**本地开发环境**执行:

```bash
# 打包部署文件
cd /workspaces/doitcrm
tar -czf doitcrm-deploy.tar.gz \
  wecom_id_mapper.py \
  wecom_id_mapper.html \
  user_messages.py \
  user_messages.html \
  requirements.txt \
  init_db.sql \
  deploy.sh \
  systemd/

# 上传到阿里云
scp doitcrm-deploy.tar.gz root@阿里云IP:/root/
```

### 步骤2: 在阿里云执行部署

SSH登录阿里云后执行:

```bash
# 解压部署包
cd /root
tar -xzf doitcrm-deploy.tar.gz -C /root/doitcrm/

# 进入部署目录
cd /root/doitcrm

# 执行一键部署
./deploy.sh
```

部署脚本会自动完成:
1. ✅ 检查环境依赖 (Python3, PostgreSQL)
2. ✅ 安装Python依赖包
3. ✅ 创建数据库表并自动提取ID
4. ✅ 创建日志目录
5. ✅ 安装systemd服务
6. ✅ 启动服务
7. ✅ 验证端口监听

### 步骤3: 验证部署

```bash
# 检查服务状态
systemctl status doitcrm-mapper
systemctl status doitcrm-messages

# 检查端口监听
netstat -tuln | grep -E "5004|5005"

# 查看日志
tail -f /root/doitcrm/logs/mapper.log
tail -f /root/doitcrm/logs/messages.log

# 测试API访问
curl http://localhost:5004/
curl http://localhost:5005/
```

## 手动部署步骤

如果自动部署失败,可以手动执行以下步骤:

### 1. 安装Python依赖

```bash
cd /root/doitcrm
pip3 install -r requirements.txt
```

### 2. 初始化数据库

```bash
export PGPASSWORD=doit123
psql -h localhost -U postgres -d wechat_db -f init_db.sql
```

### 3. 创建日志目录

```bash
mkdir -p /root/doitcrm/logs
chmod 755 /root/doitcrm/logs
```

### 4. 安装systemd服务

```bash
cp systemd/doitcrm-mapper.service /etc/systemd/system/
cp systemd/doitcrm-messages.service /etc/systemd/system/
systemctl daemon-reload
```

### 5. 启动服务

```bash
systemctl enable doitcrm-mapper
systemctl enable doitcrm-messages
systemctl start doitcrm-mapper
systemctl start doitcrm-messages
```

## 服务管理

### 查看服务状态

```bash
# 查看mapper服务状态
systemctl status doitcrm-mapper

# 查看messages服务状态
systemctl status doitcrm-messages

# 查看所有服务
systemctl status doitcrm-*
```

### 查看日志

```bash
# 实时查看mapper日志
tail -f /root/doitcrm/logs/mapper.log

# 实时查看messages日志
tail -f /root/doitcrm/logs/messages.log

# 查看错误日志
tail -f /root/doitcrm/logs/mapper.error.log
tail -f /root/doitcrm/logs/messages.error.log

# 使用journalctl查看systemd日志
journalctl -u doitcrm-mapper -f
journalctl -u doitcrm-messages -f
```

### 重启服务

```bash
# 重启单个服务
systemctl restart doitcrm-mapper
systemctl restart doitcrm-messages

# 重启所有服务
systemctl restart doitcrm-*
```

### 停止服务

```bash
# 停止单个服务
systemctl stop doitcrm-mapper
systemctl stop doitcrm-messages

# 停止所有服务
systemctl stop doitcrm-*
```

## 配置防火墙

如果需要外网访问,需要开放端口:

### CentOS/RHEL (firewalld)

```bash
firewall-cmd --permanent --add-port=5004/tcp
firewall-cmd --permanent --add-port=5005/tcp
firewall-cmd --reload
```

### Ubuntu (ufw)

```bash
ufw allow 5004/tcp
ufw allow 5005/tcp
ufw reload
```

### 阿里云安全组

在阿里云控制台添加安全组规则:
- 入方向规则: TCP 5004, 5005
- 授权对象: 0.0.0.0/0 (或指定IP段)

## 数据库管理

### 连接数据库

```bash
psql -h localhost -U postgres -d wechat_db
```

### 常用查询

```sql
-- 查看映射统计
SELECT id_type, COUNT(*) as count
FROM wecom_id_mappings
GROUP BY id_type;

-- 查看已映射的用户
SELECT original_id, display_name, user_role, student_name
FROM wecom_id_mappings
WHERE id_type = 'user_id' AND display_name IS NOT NULL
LIMIT 10;

-- 查看聊天记录数量
SELECT COUNT(*) FROM wecom_chat_logs;

-- 查看最新消息
SELECT from_user_id, roomid, msgtime, content_payload->>'content'
FROM wecom_chat_logs
ORDER BY msgtime DESC
LIMIT 5;
```

## 功能测试清单

### ID映射管理 (http://阿里云IP:5004)

- [ ] 访问首页,查看映射列表
- [ ] 点击"自动提取ID",验证从 wecom_chat_logs 提取ID
- [ ] 编辑一个用户映射,填写显示名称,保存
- [ ] 选择用户角色(家长/教师)
- [ ] 填写学员信息(姓名、英文名、班级)
- [ ] 测试搜索和筛选功能
- [ ] 测试导出SQL功能
- [ ] 验证数据库中数据已更新

### 消息查询 (http://阿里云IP:5005)

- [ ] 搜索用户姓名
- [ ] 选择用户,设置时间范围
- [ ] 查看消息列表(群聊和私聊)
- [ ] 验证消息按对话分组
- [ ] 点击"智能总结"按钮
- [ ] 验证 Dify API 调用成功
- [ ] 查看AI生成的总结内容

## 故障排查

### 服务无法启动

1. 检查日志:
   ```bash
   tail -100 /root/doitcrm/logs/mapper.error.log
   tail -100 /root/doitcrm/logs/messages.error.log
   ```

2. 检查端口占用:
   ```bash
   netstat -tuln | grep -E "5004|5005"
   lsof -i :5004
   lsof -i :5005
   ```

3. 检查数据库连接:
   ```bash
   psql -h localhost -U postgres -d wechat_db -c "SELECT 1"
   ```

### 数据查询失败

1. 验证字段名:
   ```sql
   -- 应该能查到数据
   SELECT COUNT(*) FROM wecom_chat_logs WHERE roomid IS NOT NULL;
   ```

2. 检查映射表:
   ```sql
   SELECT COUNT(*) FROM wecom_id_mappings;
   ```

3. 如果映射表为空,重新初始化:
   ```bash
   psql -h localhost -U postgres -d wechat_db -f init_db.sql
   ```

### AI总结失败

1. 检查 Dify API Key:
   ```bash
   grep DIFY_API_KEY /etc/systemd/system/doitcrm-messages.service
   ```

2. 测试API连接:
   ```bash
   curl -X POST https://api.dify.ai/v1/chat-messages \
     -H "Authorization: Bearer app-hcvzBDGOQrISnjioRfqRxF7K" \
     -H "Content-Type: application/json" \
     -d '{"inputs":{},"query":"test","response_mode":"blocking","user":"test"}'
   ```

## 环境变量配置

所有环境变量都在 systemd 服务文件中配置:

| 变量 | 默认值 | 说明 |
|-----|--------|-----|
| DB_HOST | localhost | 数据库主机 |
| DB_NAME | wechat_db | 数据库名称 |
| DB_USER | postgres | 数据库用户 |
| DB_PASSWORD | doit123 | 数据库密码 |
| DB_PORT | 5432 | 数据库端口 |
| DIFY_API_KEY | app-hcvzBDGOQrISnjioRfqRxF7K | Dify API密钥 |

修改环境变量后需要重启服务:

```bash
systemctl daemon-reload
systemctl restart doitcrm-*
```

## 性能优化

### 数据库连接池

修改 Python 代码,使用连接池(可选):

```python
# 安装 psycopg2-pool
pip3 install psycopg2-pool

# 在代码中使用
from psycopg2 import pool
connection_pool = pool.SimpleConnectionPool(1, 20, **DB_CONFIG)
```

### 日志轮转

配置 logrotate 防止日志文件过大:

```bash
cat > /etc/logrotate.d/doitcrm <<EOF
/root/doitcrm/logs/*.log {
    daily
    rotate 7
    compress
    delaycompress
    notifempty
    create 0644 root root
    sharedscripts
    postrotate
        systemctl reload doitcrm-* 2>/dev/null || true
    endscript
}
EOF
```

## 安全建议

1. **修改默认密码**: 部署后立即修改数据库密码
2. **使用环境变量**: 敏感信息不要硬编码
3. **配置HTTPS**: 生产环境使用Nginx反向代理+SSL证书
4. **限制访问IP**: 在安全组中只允许特定IP访问
5. **定期备份**: 备份 wecom_id_mappings 表数据

## 下一步优化

- [ ] 配置 Nginx 反向代理
- [ ] 申请SSL证书,启用HTTPS
- [ ] 接入监控系统(Prometheus/Grafana)
- [ ] 配置自动备份脚本
- [ ] 优化数据库索引
- [ ] 实现读写分离(如需要)

## 联系支持

遇到问题请查看:
- 日志文件: `/root/doitcrm/logs/`
- 部署计划: `/home/codespace/.claude/plans/precious-drifting-puzzle.md`
- GitHub Issues: (如有仓库)

---

**部署完成时间**: 预计 30-60 分钟
**建议首次部署时间**: 非业务高峰期
