#!/usr/bin/env python3
"""
测试企业微信API集成功能
"""
import requests
import json

BASE_URL = "http://localhost:5004"

def test_api_connection():
    """测试企业微信API连接"""
    print("\n=== 测试1: 企业微信API连接 ===")
    response = requests.get(f"{BASE_URL}/api/test-wecom-connection")
    result = response.json()
    print(f"状态: {result.get('status')}")
    print(f"消息: {result.get('message')}")
    if result.get('status') == 'success':
        print(f"Token预览: {result.get('token_preview')}")
    return result.get('status') == 'success'

def test_fetch_single_name(id_type, original_id):
    """测试获取单个ID的名称"""
    print(f"\n=== 测试2: 获取单个{id_type}的名称 ===")
    print(f"ID: {original_id}")
    response = requests.get(f"{BASE_URL}/api/fetch-wecom-name/{id_type}/{original_id}")
    result = response.json()
    print(f"状态: {result.get('status')}")
    if result.get('status') == 'success':
        print(f"名称: {result.get('name')}")
        print(f"来源: {result.get('source')}")
        print(f"额外信息: {json.dumps(result.get('extra_info'), ensure_ascii=False, indent=2)}")
    else:
        print(f"消息: {result.get('message')}")
    return result

def test_batch_fetch(id_type='user_id', limit=5):
    """测试批量获取名称"""
    print(f"\n=== 测试3: 批量获取{id_type}名称 (限制{limit}个) ===")
    response = requests.post(
        f"{BASE_URL}/api/batch-fetch-wecom-names",
        json={
            'id_type': id_type,
            'limit': limit,
            'only_unmapped': True
        }
    )
    result = response.json()
    print(f"状态: {result.get('status')}")
    if result.get('status') == 'success':
        print(f"总数: {result.get('total')}")
        print(f"成功: {result.get('success_count')}")
        print(f"失败: {result.get('fail_count')}")
        print("\n详细结果:")
        for item in result.get('results', [])[:3]:  # 只显示前3个
            print(f"  - {item['id'][:20]}...: {item.get('name', 'N/A')} ({item['status']})")
    else:
        print(f"错误: {result.get('message')}")
    return result

if __name__ == '__main__':
    print("=" * 60)
    print("企业微信API集成功能测试")
    print("=" * 60)

    # 测试1: API连接
    if not test_api_connection():
        print("\n❌ API连接失败，请检查配置")
        exit(1)

    # 测试2: 获取单个用户名称 (需要替换为实际的ID)
    # 示例: test_fetch_single_name('user_id', 'wmqDzZEwAAP2iMecDlSqAfD4MF32PfNw')

    # 测试3: 批量获取
    # test_batch_fetch('user_id', 5)

    print("\n" + "=" * 60)
    print("✅ 所有测试完成!")
    print("=" * 60)
