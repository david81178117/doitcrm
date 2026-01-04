#!/usr/bin/env python3
"""
一次性CSV导入脚本 - 将报读课程CSV数据导入到v2.students表
用途: 通过学员姓名+班级匹配,更新或插入学生记录
"""
import csv
import os
import sys
import psycopg2
import psycopg2.extras
from collections import defaultdict

# 数据库配置
DB_CONFIG = {
    "host": os.getenv("DB_HOST", "localhost"),
    "database": os.getenv("DB_NAME", "wechat_db"),
    "user": os.getenv("DB_USER", "postgres"),
    "password": os.getenv("DB_PASSWORD", ""),
    "port": os.getenv("DB_PORT", "5432"),
}

CSV_FILE = "/workspaces/doitcrm/v2/报读课程-表格 1.csv"


def get_db_connection():
    """建立数据库连接"""
    return psycopg2.connect(**DB_CONFIG)


def load_class_mapping(conn):
    """加载班级名称到ID的映射"""
    cur = conn.cursor()
    cur.execute("SELECT id, name FROM v2.classes WHERE is_active = true")
    class_mapping = {row[1]: row[0] for row in cur.fetchall()}
    cur.close()
    print(f"✓ 已加载 {len(class_mapping)} 个班级")
    return class_mapping


def process_csv_row(row, class_mapping):
    """
    处理单条CSV记录,返回处理后的数据或None

    返回格式: {
        'name': str,
        'class_id': int,
        'phone': str or None,
        'primary_guardian_type': str or None,
        'parent_name': str or None,
        'school': str or None,
        'address': str or None,
        'id_card': str or None
    }
    """
    student_name = row.get('学员姓名', '').strip()
    class_name = row.get('所在班级', '').strip()

    # 跳过无效记录
    if not student_name:
        return None, "学员姓名为空"

    if not class_name or class_name == '-':
        return None, f"班级无效: {class_name}"

    # 查找班级ID
    class_id = class_mapping.get(class_name)
    if not class_id:
        return None, f"班级不存在于数据库: {class_name}"

    # 提取并清理其他字段
    phone = row.get('手机号', '').strip() or None
    primary_guardian_type = row.get('手机号身份', '').strip() or None
    parent_name = row.get('家长姓名', '').strip() or None
    school = row.get('学校', '').strip() or None
    address = row.get('住址', '').strip() or None
    id_card = row.get('学员身份证号码', '').strip() or None

    return {
        'name': student_name,
        'class_id': class_id,
        'class_name': class_name,  # 仅用于日志
        'phone': phone,
        'primary_guardian_type': primary_guardian_type,
        'parent_name': parent_name,
        'school': school,
        'address': address,
        'id_card': id_card
    }, None


def upsert_student(cur, data):
    """
    更新或插入学生记录

    返回: ('updated', student_id) 或 ('inserted', student_id)
    """
    # 先查找是否已存在
    cur.execute(
        "SELECT id FROM v2.students WHERE name = %s AND class_id = %s",
        (data['name'], data['class_id'])
    )
    result = cur.fetchone()

    if result:
        # 存在则更新
        student_id = result[0]
        cur.execute("""
            UPDATE v2.students
            SET phone = %s,
                primary_guardian_type = %s,
                parent_name = %s,
                school = %s,
                address = %s,
                id_card = %s,
                updated_at = NOW()
            WHERE id = %s
        """, (
            data['phone'],
            data['primary_guardian_type'],
            data['parent_name'],
            data['school'],
            data['address'],
            data['id_card'],
            student_id
        ))
        return 'updated', student_id
    else:
        # 不存在则插入
        cur.execute("""
            INSERT INTO v2.students (
                name, class_id, phone, primary_guardian_type,
                parent_name, school, address, id_card, status
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, '在读')
            RETURNING id
        """, (
            data['name'],
            data['class_id'],
            data['phone'],
            data['primary_guardian_type'],
            data['parent_name'],
            data['school'],
            data['address'],
            data['id_card']
        ))
        student_id = cur.fetchone()[0]
        return 'inserted', student_id


def main():
    """主函数"""
    print("=" * 60)
    print("CSV学生数据导入工具")
    print("=" * 60)

    # 检查CSV文件
    if not os.path.exists(CSV_FILE):
        print(f"❌ CSV文件不存在: {CSV_FILE}")
        return 1

    print(f"✓ CSV文件: {CSV_FILE}")

    # 统计变量
    stats = {
        'total': 0,
        'updated': 0,
        'inserted': 0,
        'skipped_no_name': 0,
        'skipped_no_class': 0,
        'skipped_class_not_found': 0
    }

    skipped_details = defaultdict(list)  # 记录跳过的详情

    try:
        # 连接数据库
        print("\n连接数据库...")
        conn = get_db_connection()
        print("✓ 数据库连接成功")

        # 加载班级映射
        class_mapping = load_class_mapping(conn)

        # 开始事务
        cur = conn.cursor()

        # 读取并处理CSV
        print(f"\n开始处理CSV文件...")
        with open(CSV_FILE, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)

            for row_num, row in enumerate(reader, start=2):  # 行号从2开始(1是header)
                stats['total'] += 1

                # 处理CSV行
                data, error = process_csv_row(row, class_mapping)

                if error:
                    # 记录跳过原因
                    if "学员姓名为空" in error:
                        stats['skipped_no_name'] += 1
                    elif "班级无效" in error or "班级不存在" in error:
                        if "班级无效" in error:
                            stats['skipped_no_class'] += 1
                        else:
                            stats['skipped_class_not_found'] += 1
                        skipped_details[error].append(row.get('学员姓名', '(无名字)'))
                    continue

                # 执行UPSERT
                action, student_id = upsert_student(cur, data)
                stats[action] += 1

                # 每100条打印进度
                if stats['total'] % 100 == 0:
                    print(f"  已处理 {stats['total']} 条记录...")

        # 提交事务
        conn.commit()
        print("\n✓ 数据已成功提交到数据库")

        # 打印统计报告
        print("\n" + "=" * 60)
        print("导入统计报告")
        print("=" * 60)
        print(f"CSV总记录数:      {stats['total']}")
        print(f"  ✓ 更新记录:     {stats['updated']} (已存在的学生)")
        print(f"  ✓ 新增记录:     {stats['inserted']} (新学生)")
        print(f"  ⊘ 跳过(无姓名): {stats['skipped_no_name']}")
        print(f"  ⊘ 跳过(班级'-'): {stats['skipped_no_class']}")
        print(f"  ⊘ 跳过(班级不存在): {stats['skipped_class_not_found']}")

        # 打印跳过的详细信息
        if skipped_details:
            print("\n跳过记录详情:")
            for reason, names in sorted(skipped_details.items()):
                print(f"\n  {reason}:")
                for name in names[:5]:  # 只显示前5个
                    print(f"    - {name}")
                if len(names) > 5:
                    print(f"    ... 还有 {len(names) - 5} 个")

        # 查询字段填写率
        print("\n" + "=" * 60)
        print("字段填写率统计")
        print("=" * 60)
        cur.execute("""
            SELECT
                COUNT(*) as total,
                COUNT(phone) as has_phone,
                COUNT(primary_guardian_type) as has_guardian_type,
                COUNT(parent_name) as has_parent_name,
                COUNT(school) as has_school,
                COUNT(address) as has_address,
                COUNT(id_card) as has_id_card
            FROM v2.students
            WHERE updated_at > NOW() - INTERVAL '5 minutes'
        """)
        row = cur.fetchone()
        if row and row[0] > 0:
            total = row[0]
            print(f"最近更新的学生: {total}")
            print(f"  有电话:         {row[1]} ({row[1]*100/total:.1f}%)")
            print(f"  有监护人类型:   {row[2]} ({row[2]*100/total:.1f}%)")
            print(f"  有家长姓名:     {row[3]} ({row[3]*100/total:.1f}%)")
            print(f"  有学校:         {row[4]} ({row[4]*100/total:.1f}%)")
            print(f"  有地址:         {row[5]} ({row[5]*100/total:.1f}%)")
            print(f"  有身份证:       {row[6]} ({row[6]*100/total:.1f}%)")

        # 监护人类型分布
        cur.execute("""
            SELECT primary_guardian_type, COUNT(*)
            FROM v2.students
            WHERE primary_guardian_type IS NOT NULL
            GROUP BY primary_guardian_type
            ORDER BY COUNT(*) DESC
        """)
        guardian_dist = cur.fetchall()
        if guardian_dist:
            print("\n监护人类型分布:")
            for guardian_type, count in guardian_dist:
                print(f"  {guardian_type}: {count}")

        cur.close()
        conn.close()

        print("\n" + "=" * 60)
        print("✓ 导入完成!")
        print("=" * 60)

        return 0

    except Exception as e:
        print(f"\n❌ 错误: {e}")
        import traceback
        traceback.print_exc()
        if 'conn' in locals():
            conn.rollback()
            conn.close()
        return 1


if __name__ == "__main__":
    sys.exit(main())
