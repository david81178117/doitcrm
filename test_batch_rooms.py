#!/usr/bin/env python3
"""
批量获取企业微信群组(客户群)名称测试程序
"""
import requests
import json
import time
import os

# 配置
API_BASE = "http://localhost:5004"
WECOM_CONFIG = {
    'corp_id': 'ww3036e4989a99bb2d',
    'secret': 'S8UqG5CSPKWQEi7SmJTvPmLKGvRfuWDPQZOzQwdbajU',
}

# ============ 企业微信API函数 ============

def get_access_token():
    """获取企业微信access_token"""
    url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken"
    params = {
        'corpid': WECOM_CONFIG['corp_id'],
        'corpsecret': WECOM_CONFIG['secret']
    }

    try:
        response = requests.get(url, params=params, timeout=10)
        result = response.json()

        if result.get('errcode') == 0:
            print(f"✅ 获取access_token成功")
            return result['access_token']
        else:
            print(f"❌ 获取access_token失败: {result}")
            return None
    except Exception as e:
        print(f"❌ 获取access_token异常: {e}")
        return None


def get_group_chat_detail(access_token, chat_id):
    """
    获取客户群详情
    API文档: https://developer.work.weixin.qq.com/document/path/92122

    参数:
        access_token: 企业微信access_token
        chat_id: 客户群ID (wr开头)

    返回:
        成功: {'name': '群名称', 'owner': '群主userid', 'member_count': 成员数, ...}
        失败: None
    """
    url = "https://qyapi.weixin.qq.com/cgi-bin/externalcontact/groupchat/get"
    params = {
        'access_token': access_token
    }
    data = {
        'chat_id': chat_id,
        'need_name': 1  # 是否需要返回群成员的名字
    }

    try:
        response = requests.post(url, params=params, json=data, timeout=10)
        result = response.json()

        if result.get('errcode') == 0:
            group_chat = result.get('group_chat', {})
            return {
                'name': group_chat.get('name', ''),
                'owner': group_chat.get('owner', ''),
                'create_time': group_chat.get('create_time', 0),
                'notice': group_chat.get('notice', ''),
                'member_count': len(group_chat.get('member_list', [])),
                'admin_list': group_chat.get('admin_list', [])
            }
        else:
            errcode = result.get('errcode')
            errmsg = result.get('errmsg')

            # 常见错误码说明
            if errcode == 86004:
                print(f"   ⚠️  群不存在或已解散: {chat_id[:30]}")
            elif errcode == 60020:
                print(f"   ❌ IP白名单错误")
            elif errcode == 84061:
                print(f"   ⚠️  群已过期: {chat_id[:30]}")
            else:
                print(f"   ❌ 获取群详情失败 (errcode={errcode}): {errmsg}")

            return None
    except Exception as e:
        print(f"   ❌ 获取群详情异常: {e}")
        return None


# ============ 测试函数 ============

def test_single_room():
    """测试获取单个群组"""
    print("\n" + "="*80)
    print("测试1: 获取单个群组详情")
    print("="*80)

    # 获取access_token
    access_token = get_access_token()
    if not access_token:
        print("❌ 无法获取access_token，测试终止")
        return

    # 测试一个已知的群组ID (从数据库中的第一个)
    test_chat_id = "wrqDzZEwAA1pD1sr8s8nP9c_JSVW5j8w"

    print(f"\n正在获取群组: {test_chat_id}")
    group_info = get_group_chat_detail(access_token, test_chat_id)

    if group_info:
        print(f"\n✅ 成功获取群组信息:")
        print(f"   群名称: {group_info['name']}")
        print(f"   群主: {group_info['owner']}")
        print(f"   成员数: {group_info['member_count']}")
        print(f"   创建时间: {group_info['create_time']}")
        if group_info['notice']:
            print(f"   群公告: {group_info['notice'][:50]}...")
    else:
        print(f"\n❌ 未能获取群组信息")


def batch_fetch_rooms_from_db(limit=50):
    """从数据库批量获取群组并调用API"""
    print("\n" + "="*80)
    print(f"测试2: 批量获取 {limit} 个群组名称 (直接调用企业微信API)")
    print("="*80)

    # 获取access_token
    access_token = get_access_token()
    if not access_token:
        print("❌ 无法获取access_token，测试终止")
        return

    # 从本地API获取未映射的群组列表
    print("\n📋 获取未映射的群组列表...")
    try:
        response = requests.get(f"{API_BASE}/api/mappings/room_id")
        all_rooms = response.json()

        # 筛选未映射的群组
        unmapped_rooms = [r for r in all_rooms if not r.get('display_name') or r['display_name'] == '']
        print(f"   找到 {len(unmapped_rooms)} 个未映射的群组")

        # 限制数量
        rooms_to_process = unmapped_rooms[:limit]
        print(f"   本次处理: {len(rooms_to_process)} 个\n")

    except Exception as e:
        print(f"❌ 获取群组列表失败: {e}")
        return

    # 批量获取
    success_count = 0
    fail_count = 0
    results = []

    print("🚀 开始批量获取群组名称...\n")

    for i, room in enumerate(rooms_to_process, 1):
        chat_id = room['original_id']

        print(f"[{i}/{len(rooms_to_process)}] 正在获取: {chat_id[:40]}... ", end='')

        # 调用企业微信API
        group_info = get_group_chat_detail(access_token, chat_id)

        if group_info and group_info['name']:
            name = group_info['name']
            print(f"✅ {name}")
            success_count += 1
            results.append({
                'chat_id': chat_id,
                'name': name,
                'member_count': group_info['member_count'],
                'status': 'success'
            })
        else:
            print(f"❌ 获取失败")
            fail_count += 1
            results.append({
                'chat_id': chat_id,
                'name': None,
                'status': 'failed'
            })

        # 避免API调用过快
        time.sleep(0.1)

    # 显示结果统计
    print("\n" + "="*80)
    print("📊 批量获取完成!")
    print("="*80)
    print(f"   总数: {len(rooms_to_process)}")
    print(f"   ✅ 成功: {success_count}")
    print(f"   ❌ 失败: {fail_count}")
    print(f"   📈 成功率: {success_count/len(rooms_to_process)*100:.1f}%")

    # 显示成功获取的群组
    success_items = [r for r in results if r['status'] == 'success']
    if success_items:
        print(f"\n✅ 成功获取的群组 ({len(success_items)}个):")
        print("-" * 80)
        for i, item in enumerate(success_items[:20], 1):
            print(f"{i:2}. {item['name']:<30} (成员: {item['member_count']})")
        if len(success_items) > 20:
            print(f"... 还有 {len(success_items) - 20} 个成功项")

    return results


def batch_fetch_via_api(limit=50):
    """使用本地API批量获取"""
    print("\n" + "="*80)
    print(f"测试3: 通过本地API批量获取群组 (推荐方式)")
    print("="*80)

    print("\n📞 调用本地API: POST /api/batch-fetch-wecom-names")
    print(f"   参数: id_type=room_id, limit={limit}\n")

    try:
        response = requests.post(
            f"{API_BASE}/api/batch-fetch-wecom-names",
            json={
                'id_type': 'room_id',
                'limit': limit,
                'only_unmapped': True
            },
            timeout=300  # 5分钟超时
        )

        result = response.json()

        print("="*80)
        print("📊 批量获取完成!")
        print("="*80)
        print(f"   状态: {result.get('status')}")
        print(f"   总数: {result.get('total')}")
        print(f"   ✅ 成功: {result.get('success_count')}")
        print(f"   ❌ 失败: {result.get('fail_count')}")

        if result.get('total', 0) > 0:
            success_rate = (result.get('success_count', 0) / result.get('total')) * 100
            print(f"   📈 成功率: {success_rate:.1f}%")

        # 显示详细结果
        results = result.get('results', [])
        success_items = [r for r in results if r['status'] == 'success']

        if success_items:
            print(f"\n✅ 成功获取的群组 ({len(success_items)}个):")
            print("-" * 80)
            for i, item in enumerate(success_items[:20], 1):
                print(f"{i:2}. {item['name']}")
            if len(success_items) > 20:
                print(f"... 还有 {len(success_items) - 20} 个")

        return result

    except Exception as e:
        print(f"❌ API调用失败: {e}")
        return None


def main():
    print("\n" + "="*80)
    print("企业微信客户群批量获取测试程序")
    print("="*80)
    print("\n本程序演示三种获取群组名称的方式:")
    print("  1. 直接调用企业微信API获取单个群组")
    print("  2. 批量调用企业微信API (从数据库读取ID)")
    print("  3. 通过本地Flask API批量获取 (推荐)")
    print("\n" + "="*80)

    # 测试API连接
    print("\n🔍 测试本地API连接...")
    try:
        response = requests.get(f"{API_BASE}/api/test-wecom-connection", timeout=5)
        result = response.json()
        if result.get('status') == 'success':
            print(f"   ✅ {result.get('message')}")
        else:
            print(f"   ❌ {result.get('message')}")
            print("\n⚠️  请先启动 wecom_id_mapper.py 服务!")
            return
    except Exception as e:
        print(f"   ❌ 无法连接到本地API: {e}")
        print("\n⚠️  请先启动 wecom_id_mapper.py 服务!")
        return

    # 选择测试方式
    print("\n" + "="*80)
    print("请选择测试方式:")
    print("  1) 测试单个群组 (验证API是否可用)")
    print("  2) 批量获取50个群组 (直接调用企业微信API)")
    print("  3) 批量获取50个群组 (通过本地API - 推荐)")
    print("  4) 批量获取所有群组 (通过本地API)")
    print("="*80)

    choice = input("\n请输入选项 [1-4]: ").strip()

    if choice == '1':
        test_single_room()
    elif choice == '2':
        batch_fetch_rooms_from_db(50)
    elif choice == '3':
        batch_fetch_via_api(50)
    elif choice == '4':
        # 获取总数
        try:
            response = requests.get(f"{API_BASE}/api/stats")
            stats = response.json()
            total_unmapped = stats['rooms']['unmapped']
            print(f"\n📊 当前未映射群组总数: {total_unmapped}")
            confirm = input(f"确认要获取全部 {total_unmapped} 个群组吗? [y/N]: ").strip().lower()
            if confirm == 'y':
                batch_fetch_via_api(total_unmapped)
            else:
                print("已取消")
        except Exception as e:
            print(f"❌ 获取统计信息失败: {e}")
    else:
        print("❌ 无效选项")

    print("\n✅ 测试完成!\n")


if __name__ == '__main__':
    main()
