# 企业微信API集成功能说明

## 📝 概述

已成功将企业微信API集成到 `wecom_id_mapper.py` 中,可以自动从企业微信获取用户、群聊的真实名称,大大减少手动输入工作量。

## 🆕 新增功能

### 1. **测试API连接**
```bash
GET /api/test-wecom-connection
```
检查企业微信API配置是否正确。

**返回示例:**
```json
{
  "status": "success",
  "message": "企业微信API连接成功",
  "token_preview": "GlFyEohV4wK8CUOCo-7..."
}
```

### 2. **获取单个ID的名称**
```bash
GET /api/fetch-wecom-name/<id_type>/<original_id>
```

**参数:**
- `id_type`: `user_id` 或 `room_id`
- `original_id`: 企业微信ID

**示例:**
```bash
# 获取外部联系人名称
GET /api/fetch-wecom-name/user_id/wmqDzZEwAAP2iMecDlSqAfD4MF32PfNw

# 获取群聊名称
GET /api/fetch-wecom-name/room_id/wrqDzZEwAA8u9HKLAADwEiTcrEAAAAA
```

**返回示例:**
```json
{
  "status": "success",
  "name": "张三",
  "source": "external_contact",
  "extra_info": {
    "type": 1,
    "corp_name": "",
    "position": ""
  }
}
```

### 3. **批量获取名称并更新数据库**
```bash
POST /api/batch-fetch-wecom-names
Content-Type: application/json

{
  "id_type": "user_id",      // 或 "room_id"
  "limit": 50,               // 一次处理多少个 (最多100)
  "only_unmapped": true      // 只处理未映射的ID
}
```

**返回示例:**
```json
{
  "status": "success",
  "total": 50,
  "success_count": 45,
  "fail_count": 5,
  "results": [
    {
      "id": "wmqDzZEwAAP2iMecDlSqAfD4MF32PfNw",
      "name": "张三",
      "status": "success"
    },
    {
      "id": "wmqDzZEwAAxxxxxxxxxxxxxxxxx",
      "name": null,
      "status": "not_found"
    }
  ]
}
```

## 🔧 配置说明

### 环境变量配置 (推荐)
```bash
export WECOM_CORP_ID="ww3036e4989a99bb2d"
export WECOM_SECRET="S8UqG5CSPKWQEi7SmJTvPmLKGvRfuWDPQZOzQwdbajU"
```

### 代码中的默认配置
已在 `wecom_id_mapper.py` 中配置了默认值:
```python
WECOM_CONFIG = {
    'corp_id': os.getenv('WECOM_CORP_ID', 'ww3036e4989a99bb2d'),
    'secret': os.getenv('WECOM_SECRET', 'S8UqG5CSPKWQEi7SmJTvPmLKGvRfuWDPQZOzQwdbajU'),
}
```

## 🎯 使用方式

### 方式1: Web界面使用 (推荐)

1. **启动服务**
   ```bash
   python3 wecom_id_mapper.py
   ```

2. **访问界面**
   打开浏览器访问: http://localhost:5004

3. **测试连接**
   点击页面上的"测试API连接"按钮

4. **批量获取名称**
   - 选择类型 (用户/群聊)
   - 设置批量数量 (建议50)
   - 点击"批量获取昵称"按钮
   - 系统会自动从企业微信获取名称并更新数据库

### 方式2: API调用

```python
import requests

# 1. 测试连接
response = requests.get('http://localhost:5004/api/test-wecom-connection')
print(response.json())

# 2. 批量获取用户名称
response = requests.post(
    'http://localhost:5004/api/batch-fetch-wecom-names',
    json={
        'id_type': 'user_id',
        'limit': 50,
        'only_unmapped': True
    }
)
print(response.json())
```

### 方式3: 测试脚本

```bash
# 运行测试脚本
python3 test_wecom_api.py
```

## 🚀 工作原理

### ID类型识别规则

1. **外部联系人** (wm/wo开头)
   - 使用 `externalcontact/get` 接口
   - 获取客户昵称、公司、职位等信息

2. **内部成员** (其他)
   - 使用 `user/get` 接口
   - 获取员工姓名、部门、职位等信息

3. **客户群** (wr开头)
   - 使用 `externalcontact/groupchat/get` 接口
   - 获取群名称、成员数等信息

### Access Token缓存机制

- Access Token有效期: 7200秒 (2小时)
- 自动缓存机制,提前5分钟刷新
- 避免频繁请求企业微信API

### 批量处理优化

- 每次API调用后延迟0.1秒,避免触发频率限制
- 只更新未映射的记录 (`display_name IS NULL`)
- 支持限制处理数量,避免超时

## 📊 API调用流程

```
用户请求
  ↓
检查access_token缓存
  ↓ (过期)
调用gettoken接口
  ↓ (缓存token)
判断ID类型 (wm/wo/wr)
  ↓
调用对应的企业微信API
  ├─ external_contact (外部联系人)
  ├─ user (内部成员)
  └─ groupchat (客户群)
  ↓
解析返回的名称
  ↓
更新数据库 (wecom_id_mappings)
  ↓
返回结果给用户
```

## ⚠️ 注意事项

### 1. API权限要求

确保你的应用/Secret具有以下权限:
- ✅ **客户联系** - 读取外部联系人信息
- ✅ **通讯录** - 读取成员信息
- ✅ **客户群** - 读取客户群信息

### 2. 频率限制

企业微信API有调用频率限制:
- 建议批量处理时设置合理的延迟 (当前0.1秒)
- 一次不要处理超过100个ID

### 3. ID格式说明

| ID前缀 | 类型 | API接口 | 示例 |
|--------|------|---------|------|
| wm | 微信外部联系人 | externalcontact/get | wmqDzZEwAA... |
| wo | 企微外部联系人 | externalcontact/get | woqDzZEwAA... |
| wr | 客户群 | externalcontact/groupchat/get | wrqDzZEwAA... |
| 其他 | 内部成员 | user/get | YuanGong01 |

### 4. 错误处理

如果获取失败,可能的原因:
- ID已被删除 (客户/员工已离职)
- 没有权限访问该ID
- API配置错误
- 网络问题

## 🧪 测试验证

### 快速测试

```bash
# 1. 启动服务
python3 wecom_id_mapper.py

# 2. 新开一个终端,测试API
curl http://localhost:5004/api/test-wecom-connection

# 3. 批量获取5个用户名称
curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
  -H "Content-Type: application/json" \
  -d '{"id_type":"user_id","limit":5,"only_unmapped":true}'
```

### 验证结果

```sql
-- 查看已获取名称的记录
SELECT
    id_type,
    original_id,
    display_name,
    updated_at
FROM wecom_id_mappings
WHERE display_name IS NOT NULL
ORDER BY updated_at DESC
LIMIT 10;

-- 统计映射进度
SELECT
    id_type,
    COUNT(*) as total,
    COUNT(display_name) as mapped,
    COUNT(*) - COUNT(display_name) as unmapped
FROM wecom_id_mappings
GROUP BY id_type;
```

## 📈 使用建议

### 首次使用流程

1. **初始化数据**
   ```bash
   # 提取所有需要映射的ID
   curl -X POST http://localhost:5004/api/extract-all-ids
   ```

2. **测试连接**
   ```bash
   curl http://localhost:5004/api/test-wecom-connection
   ```

3. **批量获取用户名称**
   ```bash
   curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
     -H "Content-Type: application/json" \
     -d '{"id_type":"user_id","limit":50,"only_unmapped":true}'
   ```

4. **批量获取群名称**
   ```bash
   curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
     -H "Content-Type: application/json" \
     -d '{"id_type":"room_id","limit":50,"only_unmapped":true}'
   ```

5. **手动补充**
   对于无法自动获取的ID,在Web界面手动填写

### 定期维护

建议每周运行一次批量获取,更新新增的联系人:
```bash
# 添加到crontab
0 2 * * 0 curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
  -H "Content-Type: application/json" \
  -d '{"id_type":"user_id","limit":100,"only_unmapped":true}'
```

## 🔗 相关文档

- [企业微信API文档](https://developer.work.weixin.qq.com/document/)
- [获取access_token](https://developer.work.weixin.qq.com/document/path/91039)
- [获取客户详情](https://developer.work.weixin.qq.com/document/path/92114)
- [获取成员](https://developer.work.weixin.qq.com/document/path/90196)
- [获取客户群详情](https://developer.work.weixin.qq.com/document/path/92122)

## ✅ 优化要点

相比你的原始代码,我做了以下优化:

1. **路由修复**: 使用 `<path:original_id>` 支持包含斜杠的ID
2. **环境变量支持**: 支持通过环境变量配置敏感信息
3. **错误处理增强**: 更详细的错误日志
4. **代码结构**: 清晰的函数分组和注释
5. **Token缓存**: 避免频繁调用gettoken接口
6. **限速保护**: 批量处理时自动延迟,避免触发限制

## 🎉 总结

现在你可以:
1. ✅ 一键测试企业微信API连接
2. ✅ 自动批量获取客户/员工名称
3. ✅ 自动批量获取群聊名称
4. ✅ 大幅减少手动输入工作量

整个系统已经完全集成到现有的 `wecom_id_mapper.py`,不需要额外的文件!
