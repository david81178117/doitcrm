# 家长沟通分析系统使用指南

## 概述

这个系统可以分析家长在企业微信中的聊天记录，提取关注点、情绪态度、沟通风格等信息，帮助教育机构更好地了解家长需求和提供个性化服务。

## 功能特点

- ✅ 自动提取家长的文本消息（一对一 + 群聊）
- ✅ 使用 Coze AI 进行智能分析
- ✅ 生成结构化的分析报告（关注点、情绪、标签、画像）
- ✅ 结果存储到数据库，支持后续查询
- ✅ 支持通过学生姓名关联查询家长分析

## 环境要求

- Python 3.8+
- PostgreSQL 数据库（已包含 wecom_chat_logs 表）
- Coze API 访问权限

## 快速开始

### 1. 安装依赖

```bash
pip install -r requirements.txt
```

### 2. 配置环境变量（可选）

系统会使用以下环境变量，如果不设置则使用默认值：

```bash
# 数据库配置
export DB_HOST=localhost
export DB_NAME=wechat_db
export DB_USER=postgres
export DB_PASSWORD=doit123
export DB_PORT=5432

# Coze API 配置
export COZE_API_ENDPOINT=https://api.coze.cn/v3/chat
export COZE_TOKEN=your_coze_token
export COZE_BOT_ID=your_bot_id
```

### 3. 初始化数据库表（仅首次运行）

```bash
docker exec -i postgres-wechat psql -U postgres -d wechat_db < parent_analysis_schema.sql
```

### 4. 运行分析

#### 交互式模式（推荐）

```bash
python3 parent_analyzer.py
```

运行后会显示可分析的用户列表，输入序号选择要分析的用户。

#### 命令行模式

```bash
# 分析指定用户
python3 parent_analyzer.py --user-id wmqDzZEwAAP2iMecDlSqAfD4MF32PfNw
```

## 分析结果

### 终端输出示例

```
================================================================================
分析结果 - 用户: 张三妈妈
================================================================================

【消息统计】
  总消息数: 156
  一对一消息: 3
  群聊消息: 153
  时间跨度: 45 天

【沟通风格】 主动型 - 经常在群内询问孩子学习情况，积极配合老师建议
【参与度】 HIGH

【客户标签】
  • 关注学习进度
  • 群内活跃
  • 配合度高
  • 关注细节
  • 情绪稳定

【主要关注点】
  • [HIGH] 学习进度: 关心孩子数学成绩和作业完成情况
  • [MEDIUM] 课堂表现: 询问孩子上课专注度

【情绪态度】 总体: POSITIVE
  • 感激 (强度: 0.8) - 感谢老师的帮助和指导
  • 期待 (强度: 0.6) - 期望孩子进步

【分析摘要】
  该家长对孩子教育高度关注，主要通过群聊参与互动...

================================================================================
```

### 数据库查询

分析结果会自动保存到数据库，可以通过以下方式查询：

#### 1. 查看所有分析记录

```sql
SELECT
    wechat_id,
    display_name,
    student_name,
    communication_style,
    engagement_level,
    auto_tags,
    analysis_date
FROM v_parent_analysis_with_mapping
ORDER BY analysis_date DESC
LIMIT 10;
```

#### 2. 通过学生姓名查询家长分析

```sql
SELECT *
FROM v_parent_analysis_with_mapping
WHERE student_name = '张小明'
ORDER BY analysis_date DESC
LIMIT 1;
```

#### 3. 查询高参与度家长

```sql
SELECT
    display_name,
    student_name,
    auto_tags,
    analysis_summary
FROM v_parent_analysis_with_mapping
WHERE engagement_level = 'high'
ORDER BY analysis_date DESC;
```

#### 4. 查询特定标签的家长

```sql
SELECT
    display_name,
    student_name,
    communication_style,
    auto_tags
FROM v_parent_analysis_with_mapping
WHERE auto_tags @> '["关注学习成绩"]'::jsonb
ORDER BY analysis_date DESC;
```

## 分析维度说明

### 1. 主要关注点 (primary_concerns)

识别家长最关心的问题，包括：
- **学习进度**: 成绩、考试、学习效果
- **作业质量**: 作业完成情况、质量
- **行为习惯**: 课堂纪律、生活习惯
- **老师沟通**: 与老师的互动需求
- **课堂表现**: 上课状态、参与度
- **同学关系**: 社交能力、同学互动
- **身体健康**: 健康状况关注
- **心理状态**: 情绪、压力关注

每个关注点包含：
- `category`: 类别
- `detail`: 具体描述
- `intensity`: 强度 (high/medium/low)
- `examples`: 示例消息片段

### 2. 情绪态度 (emotional_tone)

分析家长的整体情绪和具体情绪细节：
- **overall**: 总体倾向 (positive/neutral/negative/mixed)
- **details**: 具体情绪列表
  - `type`: 情绪类型（满意、感激、焦虑、担忧、不满、期待、信任、失望）
  - `intensity`: 强度 (0.0-1.0)
  - `context`: 触发上下文

### 3. 沟通风格 (communication_style)

描述家长的沟通特征：
- **主动型**: 经常主动联系老师，询问情况
- **被动型**: 主要响应老师消息，较少主动
- **合作型**: 积极配合老师建议，互动良好
- **要求型**: 对服务有明确要求和期待
- **观望型**: 较少参与互动，观察为主

### 4. 参与度 (engagement_level)

评估家长的参与程度：
- **high**: 高参与度 - 频繁互动，积极参与
- **medium**: 中等参与度 - 适度互动
- **low**: 低参与度 - 较少参与

### 5. 客户标签 (auto_tags)

自动生成的 3-5 个核心标签，例如：
- "关注学习成绩"
- "积极配合"
- "高频互动"
- "关注细节"
- "情绪稳定/焦虑"

### 6. 分析摘要 (analysis_summary)

100-150 字的整体评价，包含：
- 家长的主要特点
- 沟通模式
- 关注重点
- 教育机构的服务建议

## 数据库表结构

### parent_communication_analysis 表

存储分析结果的主表：

| 字段 | 类型 | 说明 |
|------|------|------|
| id | BIGSERIAL | 主键 |
| wechat_id | TEXT | 企业微信用户ID |
| analysis_date | TIMESTAMPTZ | 分析时间 |
| message_count | INTEGER | 分析的消息总数 |
| direct_message_count | INTEGER | 一对一消息数 |
| group_message_count | INTEGER | 群聊消息数 |
| date_range_start | TIMESTAMPTZ | 消息时间范围开始 |
| date_range_end | TIMESTAMPTZ | 消息时间范围结束 |
| primary_concerns | JSONB | 主要关注点（JSON数组） |
| emotional_tone | JSONB | 情绪态度（JSON对象） |
| communication_style | TEXT | 沟通风格 |
| engagement_level | TEXT | 参与度 |
| auto_tags | JSONB | 自动标签（JSON数组） |
| raw_analysis_text | TEXT | LLM 原始返回 |
| analysis_summary | TEXT | 分析摘要 |
| coze_bot_id | TEXT | 使用的 Bot ID |
| analysis_duration_ms | INTEGER | 分析耗时（毫秒） |
| created_at | TIMESTAMPTZ | 创建时间 |
| updated_at | TIMESTAMPTZ | 更新时间 |

### v_parent_analysis_with_mapping 视图

关联分析结果和用户映射的视图，额外包含：
- `display_name`: 显示名称（真实姓名）
- `user_role`: 用户角色（parent/teacher）
- `student_name`: 关联的学生姓名
- `student_english_name`: 学生英文名
- `student_class_room_id`: 学生所在班级ID

## 常见问题

### Q1: 为什么有些用户没有显示名称？

A: 需要在 `wecom_id_mappings` 表中手动维护用户的映射关系。可以使用 `wecom_id_mapper.py` 网页系统进行管理。

### Q2: 如何关联学生和家长？

A: 在 `wecom_id_mappings` 表中，为家长用户设置 `student_name` 字段，即可通过学生姓名查询关联的家长分析。

### Q3: 分析需要多长时间？

A: 取决于消息数量和 Coze API 响应速度，通常 100-200 条消息需要 5-15 秒。

### Q4: 可以重复分析同一个用户吗？

A: 可以。每天每个用户只保留最新的一条分析记录（会自动更新）。

### Q5: 如何批量分析多个用户？

A: 目前需要逐个分析。未来版本会添加批量分析功能。

## 技术架构

```
┌─────────────────┐
│  wecom_chat_logs│  (企业微信聊天记录)
└────────┬────────┘
         │
         ├──> extract_user_text_messages()  (提取文本消息)
         │
         ├──> format_messages_for_llm()     (格式化)
         │
         ├──> build_analysis_prompt()       (构建Prompt)
         │
         ├──> call_coze_api()                (调用Coze API)
         │
         ├──> parse_analysis_result()       (解析结果)
         │
         └──> save_analysis_result()        (保存到数据库)
                      │
                      ▼
         ┌────────────────────────────┐
         │ parent_communication_analysis│
         └────────────────────────────┘
                      │
                      ├──> v_parent_analysis_with_mapping (视图)
                      │
                      └──> 供 API/服务查询
```

## 与现有系统的集成

本系统设计为与现有的企业微信ID映射系统无缝集成：

- 复用 `wecom_id_mappings` 表实现学生-家长映射
- 复用 `user_messages.py` 的消息提取逻辑
- 保持数据库连接配置一致
- 可轻松添加到现有 Flask 应用中作为 API endpoint

## 未来扩展

- [ ] 批量分析功能
- [ ] 增量更新（检测新消息自动重新分析）
- [ ] Flask API 集成
- [ ] 分析结果导出（PDF/Excel）
- [ ] 可视化仪表板
- [ ] 家长画像对比分析

## 支持

如有问题或建议，请联系开发团队。
