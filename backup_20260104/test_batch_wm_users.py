#!/usr/bin/env python3
"""
测试批量获取50个wm开头的外部联系人名称
"""
import requests
import json
import time

API_BASE = "http://localhost:5004"

def get_wm_users(limit=50):
    """获取wm开头的未映射用户列表"""
    response = requests.get(f"{API_BASE}/api/mappings/user_id")
    all_users = response.json()

    # 筛选wm开头且未映射的
    wm_users = [u for u in all_users if u['original_id'].startswith('wm') and not u['is_mapped']]
    return wm_users[:limit]

def batch_fetch_names(limit=50):
    """批量获取名称"""
    print(f"\n{'='*80}")
    print(f"开始批量获取 {limit} 个外部联系人名称")
    print(f"{'='*80}\n")

    # 先获取要处理的ID列表
    print("1️⃣  获取待处理的ID列表...")
    wm_users = get_wm_users(limit)
    print(f"   找到 {len(wm_users)} 个未映射的外部联系人\n")

    if not wm_users:
        print("✅ 所有外部联系人已映射完成!")
        return

    # 显示前10个ID
    print("   前10个ID预览:")
    for i, user in enumerate(wm_users[:10], 1):
        print(f"   {i:2}. {user['original_id']}")
    if len(wm_users) > 10:
        print(f"   ... 还有 {len(wm_users) - 10} 个\n")

    # 调用批量获取API
    print("2️⃣  调用企业微信API批量获取名称...")
    print(f"   ⏱️  预计需要 {len(wm_users) * 0.1:.1f} 秒 (每个0.1秒延迟)\n")

    start_time = time.time()

    response = requests.post(
        f"{API_BASE}/api/batch-fetch-wecom-names",
        json={
            'id_type': 'user_id',
            'limit': limit,
            'only_unmapped': True
        }
    )

    duration = time.time() - start_time
    result = response.json()

    # 显示结果
    print(f"\n{'='*80}")
    print(f"📊 批量获取完成!")
    print(f"{'='*80}")
    print(f"   状态: {result.get('status')}")
    print(f"   总数: {result.get('total')}")
    print(f"   ✅ 成功: {result.get('success_count')}")
    print(f"   ❌ 失败: {result.get('fail_count')}")
    print(f"   ⏱️  耗时: {duration:.1f} 秒")

    success_rate = (result.get('success_count', 0) / result.get('total', 1)) * 100 if result.get('total') else 0
    print(f"   📈 成功率: {success_rate:.1f}%")

    # 显示详细结果
    print(f"\n{'='*80}")
    print("详细结果:")
    print(f"{'='*80}\n")

    results = result.get('results', [])
    success_items = [r for r in results if r['status'] == 'success']
    failed_items = [r for r in results if r['status'] != 'success']

    # 显示成功的
    if success_items:
        print(f"✅ 成功获取的名称 ({len(success_items)}个):")
        for i, r in enumerate(success_items[:20], 1):
            id_short = r['id'][:30] + '...'
            print(f"   {i:2}. {id_short:<35} => {r['name']}")
        if len(success_items) > 20:
            print(f"   ... 还有 {len(success_items) - 20} 个成功项\n")

    # 显示失败的
    if failed_items:
        print(f"\n❌ 未能获取的ID ({len(failed_items)}个):")
        for i, r in enumerate(failed_items[:10], 1):
            id_short = r['id'][:30] + '...'
            print(f"   {i:2}. {id_short}")
        if len(failed_items) > 10:
            print(f"   ... 还有 {len(failed_items) - 10} 个失败项")

    print(f"\n{'='*80}\n")

    return result

def main():
    print("\n" + "="*80)
    print("企业微信外部联系人批量获取测试")
    print("="*80)

    # 测试API连接
    print("\n1. 测试API连接...")
    try:
        response = requests.get(f"{API_BASE}/api/test-wecom-connection")
        result = response.json()
        if result.get('status') == 'success':
            print(f"   ✅ {result.get('message')}")
        else:
            print(f"   ❌ {result.get('message')}")
            return
    except Exception as e:
        print(f"   ❌ API连接失败: {e}")
        return

    # 批量获取50个
    batch_fetch_names(50)

    print("\n✅ 测试完成!")
    print("\n提示: 如果成功率较低,可能的原因:")
    print("  1. 这些ID对应的客户已删除/离职")
    print("  2. Secret权限不足")
    print("  3. 继续执行多次,直到所有ID处理完成\n")

if __name__ == '__main__':
    main()
