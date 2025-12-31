# 企业微信API配置记录

## ✅ 当前配置状态

### 1. 企业微信应用信息
- **企业ID (CorpID)**: ww3036e4989a99bb2d
- **应用Secret**: S8UqG5CSPKWQEi7SmJTvPmLKGvRfuWDPQZOzQwdbajU
- **配置状态**: ✅ 已配置

### 2. IP白名单配置

| 环境 | IP地址 | 状态 | 用途 | 备注 |
|------|--------|------|------|------|
| 本地Mac (临时测试) | **38.60.206.109** | ✅ 已配置并测试通过 | 本地开发测试 | 家庭/公司宽带IP,可能会变化 |
| GitHub Codespaces | 172.182.200.132 | ❌ 不推荐 | 云端开发环境 | IP不固定,每次启动可能变化 |
| 阿里云生产服务器 | 待配置 | ⏳ 待添加 | 生产环境 | 固定IP,推荐用于生产 |

### 3. 测试验证

#### 本地Mac测试 (38.60.206.109)
```bash
# 测试时间: 2025-12-31
# 测试结果: ✅ 通过
curl https://api.ipify.org
# 返回: 38.60.206.109
```

## 📋 API功能清单

### 已集成的API接口

1. **GET /api/test-wecom-connection**
   - 测试企业微信API连接
   - 验证access_token获取

2. **GET /api/fetch-wecom-name/\<id_type\>/\<original_id\>**
   - 获取单个ID的真实名称
   - 支持: 外部联系人(wm/wo)、内部成员、群聊(wr)

3. **POST /api/batch-fetch-wecom-names**
   - 批量获取名称并自动更新数据库
   - 参数: id_type, limit, only_unmapped

### 支持的ID类型

| ID类型 | 前缀 | 企业微信API | 示例 |
|--------|------|-------------|------|
| 外部联系人(微信) | wm | externalcontact/get | wmqDzZEwAA... |
| 外部联系人(企微) | wo | externalcontact/get | woqDzZEwAA... |
| 内部成员 | 其他 | user/get | ChenNa, YuanGong01 |
| 客户群 | wr | externalcontact/groupchat/get | wrqDzZEwAA... |

## 🚀 使用指南

### 在本地Mac上运行

1. **启动服务**
   ```bash
   cd /path/to/doitcrm
   python3 wecom_id_mapper.py
   ```

2. **访问界面**
   - 打开浏览器: http://localhost:5004
   - 测试API连接
   - 批量获取名称

3. **测试API**
   ```bash
   # 测试连接
   curl http://localhost:5004/api/test-wecom-connection

   # 批量获取10个用户名称
   curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
     -H "Content-Type: application/json" \
     -d '{"id_type":"user_id","limit":10,"only_unmapped":true}'
   ```

### 部署到阿里云生产环境 (推荐)

1. **获取阿里云服务器IP**
   ```bash
   # 登录阿里云服务器
   curl https://api.ipify.org
   ```

2. **在企业微信后台添加该IP**
   - 登录: https://work.weixin.qq.com/
   - 应用管理 → 找到对应应用
   - 配置企业可信IP → 添加阿里云服务器IP

3. **部署代码**
   ```bash
   # 上传代码到阿里云
   scp wecom_id_mapper.py user@aliyun-ip:/path/to/app/

   # 启动服务
   python3 wecom_id_mapper.py
   ```

## ⚠️ 注意事项

### IP白名单管理

1. **本地IP可能变化**
   - 家庭宽带/公司网络的IP可能定期变化
   - 如果API突然失败(错误60020),检查IP是否变化
   - 重新获取IP: `curl https://api.ipify.org`
   - 在企业微信后台更新IP白名单

2. **GitHub Codespaces不适合生产**
   - IP每次启动都可能变化
   - 仅用于代码开发,不用于API测试

3. **生产环境使用固定IP**
   - 阿里云ECS、腾讯云CVM等云服务器有固定公网IP
   - 配置一次即可长期使用

### API调用限制

1. **频率限制**
   - 当前代码已设置0.1秒延迟
   - 避免并发调用过多

2. **权限要求**
   - 确保Secret对应的应用有以下权限:
     - 客户联系 (获取外部联系人)
     - 通讯录 (获取成员信息)
     - 客户群 (获取群聊信息)

## 📊 数据统计

### 当前映射表数据 (2025-12-31)

- **用户总数**: 1130
  - 已映射: 2
  - 未映射: 1128
  - 其中外部联系人: 1049

- **群聊总数**: 121
  - 已映射: 0
  - 未映射: 121

### 批量处理建议

推荐分批处理:
```bash
# 第一批: 50个用户
curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
  -H "Content-Type: application/json" \
  -d '{"id_type":"user_id","limit":50,"only_unmapped":true}'

# 等待完成后,继续下一批
# 重复执行直到所有用户处理完成

# 处理群聊
curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
  -H "Content-Type: application/json" \
  -d '{"id_type":"room_id","limit":50,"only_unmapped":true}'
```

## 🔗 相关文档

- [企业微信API文档](https://developer.work.weixin.qq.com/document/)
- [IP白名单配置详细指南](./企业微信IP白名单配置.md)
- [API使用说明](./README_WECOM_API.md)

## 📝 更新日志

### 2025-12-31
- ✅ 完成企业微信API集成
- ✅ 添加本地Mac IP白名单 (38.60.206.109)
- ✅ 测试通过所有API接口
- ⏳ 待添加阿里云生产服务器IP

---

**维护人员**: 请在每次修改IP配置后更新此文档
