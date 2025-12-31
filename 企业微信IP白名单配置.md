# 企业微信API - IP白名单配置指南

## ⚠️ 当前问题

调用企业微信API时返回错误:
```
errcode: 60020
errmsg: 'not allow to access from your ip'
from ip: 172.182.200.132
```

**原因**: 当前服务器IP(172.182.200.132)未在企业微信应用的可信IP白名单中。

## 🔧 解决方案

### 方案1: 添加服务器IP到白名单 (推荐)

#### 1. 登录企业微信管理后台
- 访问: https://work.weixin.qq.com/
- 使用企业管理员账号登录

#### 2. 进入应用管理
- 左侧菜单 → **应用管理**
- 找到你使用的应用 (对应Secret: S8UqG5CSPKWQEi7SmJTvPmLKGvRfuWDPQZOzQwdbajU)
- 点击进入应用详情

#### 3. 配置企业可信IP
- 找到 **"企业可信IP"** 或 **"开发者接口"** 设置区域
- 点击 **"配置"** 或 **"修改"**
- 添加IP地址: **172.182.200.132**
- 保存配置

#### 4. 验证配置
等待1-2分钟后,运行以下命令测试:
```bash
curl http://localhost:5004/api/test-wecom-connection
```

如果返回 `"status": "success"`,说明配置成功。

### 方案2: 使用代理服务器

如果无法直接配置IP白名单,可以使用已在白名单中的服务器作为代理:

1. 在白名单IP的服务器上部署代理服务
2. 当前服务器通过代理访问企业微信API

### 方案3: 本地开发测试

如果你的本地电脑IP已在白名单中:

1. 在本地运行 `wecom_id_mapper.py`
2. 本地访问 http://localhost:5004
3. 测试企业微信API功能

## 📊 常见的IP白名单配置位置

### 客户联系应用
1. 应用管理 → 客户联系
2. 点击 "API" 或 "开发者接口"
3. 找到 "企业可信IP" 配置

### 自建应用
1. 应用管理 → 应用 → 自建
2. 点击对应的应用
3. 在应用详情页找到 "开发者接口"
4. 配置 "企业可信IP"

### 通讯录同步
1. 管理工具 → 通讯录同步
2. 开启API接口同步
3. 配置可信IP

## ✅ 配置完成后的验证步骤

### 1. 测试API连接
```bash
curl http://localhost:5004/api/test-wecom-connection | python3 -m json.tool
```

期望输出:
```json
{
    "status": "success",
    "message": "企业微信API连接成功",
    "token_preview": "GlFyEohV4wK8CUOCo-7g..."
}
```

### 2. 测试获取单个用户
```bash
curl http://localhost:5004/api/fetch-wecom-name/user_id/wmqDzZEwAA08fvY0DPKVAcPP3XcmWEng | python3 -m json.tool
```

期望输出:
```json
{
    "status": "success",
    "name": "张三",
    "source": "external_contact",
    "extra_info": {...}
}
```

### 3. 批量获取用户名称
```bash
curl -X POST http://localhost:5004/api/batch-fetch-wecom-names \
  -H "Content-Type: application/json" \
  -d '{"id_type":"user_id","limit":10,"only_unmapped":true}' \
  | python3 -m json.tool
```

## 🔍 常见问题

### Q1: 配置了IP但仍然报错60020?
A:
- 等待2-5分钟让配置生效
- 确认配置的是正确的应用
- 检查IP地址是否输入正确 (172.182.200.132)
- 确认应用的Secret是否匹配

### Q2: 如何查看当前服务器IP?
A:
```bash
curl https://api.ipify.org
```

### Q3: 可以配置多个IP吗?
A: 可以,在IP配置框中每行一个IP地址,或用逗号分隔。

### Q4: 支持IP段吗?
A: 部分企业微信应用支持CIDR格式,如 `172.182.200.0/24`

### Q5: 动态IP怎么办?
A:
- 方案1: 使用固定IP的服务器
- 方案2: 配置IP段
- 方案3: 使用企业微信的OAuth授权方式(不需要IP白名单)

## 📞 联系支持

如果配置后仍有问题:
- 企业微信开放平台: https://open.work.weixin.qq.com/
- 开发者社区: https://developers.weixin.qq.com/community/business
- 错误码查询: https://open.work.weixin.qq.com/devtool/query?e=60020

## 📝 配置记录

| 时间 | IP地址 | 状态 | 备注 |
|------|--------|------|------|
| 2025-12-31 | 172.182.200.132 | ❌ 待配置 | 当前服务器IP |

配置完成后,请更新此表格。
