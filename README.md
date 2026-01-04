# DoitCRM - 企业微信聊天日志管理系统

企业微信聊天记录分析和管理系统，包含 ID 映射、消息查询、花名册管理、校区数据看板等功能。

## 📚 项目文档

- [快速使用指南](快速使用指南.md) - 快速上手指南
- [数据更新说明](数据更新说明.md) - 数据同步和更新流程
- [校区数据看板说明](CAMPUS_DASHBOARD_README.md) - 校区数据可视化看板
- [企业微信API配置记录](企业微信API配置记录.md) - API 配置说明
- [企业微信IP白名单配置](企业微信IP白名单配置.md) - IP 白名单设置
- [企业微信群组权限问题说明](企业微信群组权限问题说明.md) - 权限问题排查

## 🚀 核心功能

### 1. 企业微信 ID 映射服务 (wecom_id_mapper)
- **端口**: 5004
- **功能**: 将企业微信 ID 映射到真实姓名和角色
- **启动**: `python3 wecom_id_mapper.py`
- **访问**: http://localhost:5004

### 2. 用户消息查询服务 (user_messages)
- **端口**: 5006
- **功能**: 查询和分析用户聊天消息
- **启动**: `PORT=5006 python3 user_messages.py`
- **访问**: http://localhost:5006

### 3. 花名册导入服务 (roster)
- **端口**: 5010
- **功能**: CSV 花名册上传、编辑、导出
- **启动**: `PORT=5010 python3 roster.py`
- **访问**: http://localhost:5010

### 4. 校区数据看板 (campus_dashboard)
- **端口**: 5011
- **功能**: 各校区数据可视化分析
- **启动**: `PORT=5011 python3 campus_dashboard.py`
- **访问**: http://localhost:5011

## 🗄️ 数据库结构

### 核心表

**wecom_chat_logs** (聊天日志原始数据)
- `msgid`, `action`, `msgtype`, `msgtime`, `from_user_id`, `roomid`, `tolist`, `content_payload`, `raw_data`, `created_at`

**wecom_id_mappings** (业务映射表)
- `id_type`, `original_id`, `wecom_nickname`, `business_name`, `user_role`, `notes`, `profile`, `is_mapped`, `created_at`, `updated_at`
- `user_role` 枚举: `parent`, `teacher`, `head_teacher`, `advisor`

**students** (学生信息)
- `name`, `english_name`, `class_room_id`, `status`, `created_at`, `updated_at`

**wecom_user_student_rel** (微信用户-学生关系)
- `wecom_id`, `student_id`, `relation`, `is_primary`, `created_at`
- `relation` 枚举: `mother`, `father`, `guardian`, `other`

### 数据库脚本

所有 SQL 脚本位于 `db/` 目录：
- `schema.sql` - 核心表结构
- `hierarchy.sql` - 层级关系表
- `migrate_legacy_to_v2.sql` - 旧版数据迁移
- `sync_chat_logs.sql` - 聊天日志同步
- `campus_dashboard_views.sql` - 校区看板视图

## ⚙️ 环境配置

```bash
# 数据库配置
export DB_NAME="wechat_db"
export DB_HOST="localhost"
export DB_PORT="5432"
export DB_USER="postgres"
export DB_PASSWORD="doit123"

# 企业微信 API (可选)
export WECOM_CORP_ID="your_corp_id"
export WECOM_SECRET="your_secret"
```

## 📦 安装依赖

```bash
pip install -r requirements.txt
```

## 🔧 辅助工具

- `generate_import_sql.py` - 生成学生导入 SQL
- `import_student_csv.py` - CSV 学生数据导入
- `update_chat_data.sh` - 聊天数据更新脚本
- `deploy_campus_dashboard.sh` - 校区看板部署脚本

## 📁 项目结构

```
doitcrm/
├── db/                          # 数据库脚本
├── scripts/                     # 辅助脚本
├── backup_20260104/            # 旧版本备份
├── wecom_id_mapper.py          # ID映射服务
├── user_messages.py            # 消息查询服务
├── roster.py                   # 花名册服务
├── campus_dashboard.py         # 校区看板服务
└── requirements.txt            # Python依赖
```

## 🚀 快速开始

### 本地开发

1. 配置环境变量
2. 安装依赖: `pip install -r requirements.txt`
3. 启动所需服务，例如: `python3 user_messages.py`

### 云服务器部署

使用 systemd 服务管理，详见各服务的部署脚本。

服务名称:
- `doitcrm-mapper.service` - ID映射服务
- `doitcrm-messages.service` - 消息查询服务
- `doitcrm-roster.service` - 花名册服务

## 📝 开发流程

1. 在 Codespace 中开发和测试
2. 测试通过后提交到 GitHub
3. 部署到云服务器 (101.200.135.82)

## 🔄 数据同步

定期运行 `update_chat_data.sh` 同步聊天日志数据。

详细说明请参考 [数据更新说明.md](数据更新说明.md)。

## 💡 业务流程

### 完整数据处理流程

1. **数据导入** - 使用 `scripts/wecom_etl.py` 导入企业微信 JSONL 格式聊天日志
   - 支持冲突处理策略（跳过/更新）
   - 提取消息元数据：msgid、时间、发送者、群组、消息类型、内容等

2. **ID 映射** - 使用 `wecom_id_mapper.py` (端口 5004) 批量获取昵称并标记角色
   - 从聊天日志中提取所有用户ID和群组ID
   - 通过企业微信API批量获取昵称（外部联系人、内部成员、群聊）
   - 手动映射用户到业务实体（家长→学员关联、教师/班主任角色标记）

3. **花名册导入** - 使用 `roster.py` (端口 5010) 导入学员花名册
   - CSV 格式花名册导入（矩阵结构：列=班级，行=学员/教师/时间等）
   - 自动解析班级和学员信息
   - 智能匹配并更新到数据库

4. **消息查询与分析** - 使用 `user_messages.py` (端口 5006) 查询和分析
   - 统一搜索：按用户名/学员名/用户ID搜索家长或教师
   - 多维筛选：按段、阶、班级、学员、教师、班主任筛选
   - AI智能总结：调用 Coze API 生成消息总结报告
   - 学员信息编辑：直接在查询界面关联/更新学员信息

5. **数据看板** - 使用 `campus_dashboard.py` (端口 5011) 查看校区数据分析

## 🎯 技术特性

- **后端**: Flask API
- **前端**: 单页面 HTML + 原生 JavaScript
- **数据库**: PostgreSQL (JSONB字段存储聊天内容)
- **集成**: 企业微信 API + Coze AI API
- **功能**: 时间范围查询、批量操作、实时数据更新

## 🚧 未来规划

1. 添加学生目标追踪系统
2. 增强家长反馈机制
3. 整合学习资源管理
4. 开发教师工作量分析
5. 优化班级资源分配

## 📞 技术支持

如有问题，请查看相关文档或联系开发团队。
