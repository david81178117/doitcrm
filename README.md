# 教育机构CRM系统增强文档

本文档详细说明了CRM系统的数据库增强功能，包括新增的表结构、视图和查询示例。

## 项目总览

完整的数据库结构与开发参考请见：`PROJECT_OVERVIEW.md`
ER 图与字段字典：`ERD.mmd`、`DATA_DICTIONARY.csv`

## 核心功能增强

### 1. 学生表现追踪
- 新增 `student_performance` 表
- 记录出勤率、课堂参与度、行为评分
- 支持教师评语和定期评估

### 2. 作业管理系统
- 新增 `homework_assignments` 表
- 关联群聊消息ID，方便追踪作业布置情况
- 完整的作业提交状态跟踪

### 3. 教师专长管理
- 新增 `teacher_specializations` 表
- 记录教师专业领域和级别
- 便于合理分配教学资源

### 4. 班级课程表
- 新增 `class_schedule` 表
- 灵活的时间段设置
- 支持课程有效期管理

### 5. 考勤系统
- 新增 `student_attendance` 表
- 详细的出勤状态记录
- 关联课程表自动化管理

## 数据视图

### 1. 家长沟通视图 (v_parent_communications)
- 整合群聊和私聊记录
- 自动筛选近6个月通讯记录
- 关联学生和班级信息

### 2. 学生表现总结视图 (v_student_performance_summary)
- 汇总作业完成情况
- 平均出勤率和表现评分
- 积分和标签系统集成

### 3. 班级表现总结视图 (v_class_performance_summary)
- 班级整体表现指标
- 作业完成统计
- 学生出勤概况

## 常用查询示例

### 1. 学生综合信息查询
```sql
-- 见 example_queries.sql 示例1
-- 包含：基本信息、表现评估、任课教师专长、课程表
```

### 2. 作业完成情况
```sql
-- 见 example_queries.sql 示例2
-- 包含：作业提交状态、得分、是否逾期
```

### 3. 家长沟通记录
```sql
-- 见 example_queries.sql 示例3
-- 包含：群聊和私聊记录、时间线
```

### 4. 学生考勤记录
```sql
-- 见 example_queries.sql 示例4
-- 包含：出勤状态、课程信息、记录教师
```

## 性能优化

### 1. 索引优化
- 学生表现查询优化
- 作业相关查询优化
- 课程表查询优化
- 考勤记录查询优化

### 2. 视图优化
- 预计算常用统计数据
- 优化关联查询性能
- 自动数据聚合

## 标签系统使用建议

在 students 表的 profile_tags JSONB 字段中，建议包含以下类型的标签：

```json
{
  "learning_style": "视觉型",
  "special_needs": ["需要额外辅导"],
  "interests": ["数学竞赛", "编程"],
  "parent_preference": "微信沟通",
  "payment_status": "正常",
  "risk_level": "低",
  "custom_tags": ["重点关注", "优秀学员"]
}
```

## 使用指南

1. 执行 schema_enhancement.sql 创建新的表结构和视图
2. 参考 example_queries.sql 中的示例进行数据查询
3. 根据业务需求适当调整查询参数

## 注意事项

1. 定期维护学生表现记录
2. 及时更新课程表信息
3. 保持标签系统的规范使用
4. 定期检查家长沟通情况
5. 关注学生转班对表现的影响

## 未来优化方向

1. 添加学生目标追踪系统
2. 增强家长反馈机制
3. 整合学习资源管理
4. 开发教师工作量分析
5. 优化班级资源分配






DoitCRM v2 项目功能概览
核心架构
v2 是一个基于企业微信的教育CRM系统，用于管理学员、班级、教师和家长的聊天记录与业务数据。
1. 数据导入与ETL (scripts/wecom_etl.py)
将企业微信 JSONL 格式聊天日志导入 PostgreSQL
支持冲突处理策略（跳过/更新）
提取消息元数据：msgid、时间、发送者、群组、消息类型、内容等
2. 企业微信ID映射服务 (wecom_id_mapper.py + wecom_id_mapper.html)
端口: 5004 功能:
从聊天日志中提取所有用户ID和群组ID
通过企业微信API批量获取昵称（外部联系人、内部成员、群聊）
手动映射用户到业务实体：
家长 → 学员关联
教师/班主任角色标记
群组命名
支持按关键词、群组、时间范围筛选
学员花名册关联（从 v2.students 选择学员）
3. 用户消息查询系统 (user_messages.py + user_messages.html)
端口: 5006 功能:
统一搜索: 按用户名/学员名/用户ID搜索家长或教师
多维筛选: 按段（一段/二段/三段）、阶（L1-L7）、班级、学员、教师、班主任筛选
消息展示: 按会话分组（群聊/私聊）显示消息，支持时间范围查询
AI智能总结:
单用户消息总结（调用 Coze API）
多用户批量分析（支持家长模式和教师模式）
学员信息编辑: 直接在查询界面关联/更新学员信息
4. 花名册导入服务 (roster.py + roster.html)
端口: 5010 功能:
CSV 格式花名册导入（矩阵结构：列=班级，行=学员/教师/时间等）
自动解析：
班级信息（名称、段/阶、群ID、主教老师、班主任、上课时间、课程进度、升班情况）
学员信息（姓名、英文名、状态：在读/退课/休学）
智能匹配：通过 room_id 或班级名自动关联
新增/更新班级和学员数据到 v2.classes 和 v2.students
5. 数据库架构
核心表结构:
db/schema.sql
wecom_chat_logs: 企业微信聊天记录原始数据
wecom_id_mappings: ID映射表（user_id/room_id → 业务名称/角色）
students: 学员表（姓名、英文名、班级、状态）
wecom_user_student_rel: 用户-学员关系（家长-孩子关联）
db/hierarchy.sql
v2.sections: 段表（一段/二段/三段）
v2.levels: 阶表（L1-L7）
v2.classes: 班级表（关联阶、群组ID、教师、上课时间等）
v2.v_student_hierarchy: 层级视图（学员→班级→阶→段）
db/migrate_legacy_to_v2.sql
从旧版架构迁移数据到 v2 schema
6. 技术特性
Flask 后端 API + 单页面 HTML 前端
PostgreSQL 存储（JSONB字段存储聊天内容）
企业微信API集成（通过 corpid/secret 获取通讯录数据）
Coze AI集成（智能总结家长/教师聊天内容）
时间范围查询（默认30天，可自定义）
批量操作（批量获取昵称、批量分析用户）
主要业务流程
使用 wecom_etl.py 导入企业微信聊天日志
使用 wecom_id_mapper.py:8081 批量获取昵称并标记角色
使用 roster.py:5010 导入学员花名册（班级+学员）
在 wecom_id_mapper.py:406 将家长ID关联到学员
在 user_messages.py:553 查询家长/教师消息并生成AI总结报告
这是一个完整的教育机构CRM系统，核心功能是将企业微信聊天数据转化为结构化的业务洞察。
