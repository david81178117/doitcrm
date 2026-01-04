#!/usr/bin/env python3
"""
一次性CSV导入脚本 - 通过SSH在远程服务器上执行
将报读课程CSV数据导入到v2.students表
"""
import csv
import os
import sys
import subprocess
import json
from collections import defaultdict

CSV_FILE = "/workspaces/doitcrm/v2/报读课程-表格 1.csv"
SSH_PASSWORD = "6x86p3eB;"
SSH_HOST = "root@101.200.135.82"


def execute_remote_sql(sql):
    """在远程服务器上执行SQL"""
    cmd = [
        'sshpass', '-p', SSH_PASSWORD,
        'ssh', '-o', 'StrictHostKeyChecking=no', SSH_HOST,
        f"sudo -u postgres psql -d wechat_db -t -A -F',' -c \"{sql}\""
    ]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        raise Exception(f"SQL执行失败: {result.stderr}")
    return result.stdout


def load_class_mapping():
    """加载班级名称到ID的映射"""
    sql = "SELECT id, name FROM v2.classes WHERE is_active = true"
    output = execute_remote_sql(sql)

    class_mapping = {}
    for line in output.strip().split('\n'):
        if line:
            parts = line.split(',')
            if len(parts) >= 2:
                class_id = int(parts[0])
                class_name = ','.join(parts[1:])  # 处理包含逗号的班级名
                class_mapping[class_name] = class_id

    print(f"✓ 已加载 {len(class_mapping)} 个班级")
    return class_mapping


def process_csv_row(row, class_mapping):
    """处理单条CSV记录"""
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
        'class_name': class_name,
        'phone': phone,
        'primary_guardian_type': primary_guardian_type,
        'parent_name': parent_name,
        'school': school,
        'address': address,
        'id_card': id_card
    }, None


def escape_sql_string(s):
    """转义SQL字符串"""
    if s is None:
        return 'NULL'
    # 替换单引号为两个单引号
    return "'" + s.replace("'", "''") + "'"


def upsert_student_sql(data):
    """生成UPSERT SQL语句"""
    # 先查找是否存在
    check_sql = f"""
    SELECT id FROM v2.students
    WHERE name = {escape_sql_string(data['name'])}
    AND class_id = {data['class_id']}
    """

    try:
        output = execute_remote_sql(check_sql)
        student_id = output.strip()
    except:
        student_id = None

    if student_id:
        # UPDATE
        update_sql = f"""
        UPDATE v2.students
        SET phone = {escape_sql_string(data['phone'])},
            primary_guardian_type = {escape_sql_string(data['primary_guardian_type'])},
            parent_name = {escape_sql_string(data['parent_name'])},
            school = {escape_sql_string(data['school'])},
            address = {escape_sql_string(data['address'])},
            id_card = {escape_sql_string(data['id_card'])},
            updated_at = NOW()
        WHERE id = {student_id}
        """
        execute_remote_sql(update_sql)
        return 'updated', student_id
    else:
        # INSERT
        insert_sql = f"""
        INSERT INTO v2.students (
            name, class_id, phone, primary_guardian_type,
            parent_name, school, address, id_card, status
        ) VALUES (
            {escape_sql_string(data['name'])},
            {data['class_id']},
            {escape_sql_string(data['phone'])},
            {escape_sql_string(data['primary_guardian_type'])},
            {escape_sql_string(data['parent_name'])},
            {escape_sql_string(data['school'])},
            {escape_sql_string(data['address'])},
            {escape_sql_string(data['id_card'])},
            '在读'
        ) RETURNING id
        """
        output = execute_remote_sql(insert_sql)
        student_id = output.strip()
        return 'inserted', student_id


def main():
    """主函数"""
    print("=" * 60)
    print("CSV学生数据导入工具 (远程执行模式)")
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

    skipped_details = defaultdict(list)

    try:
        print("\n测试远程连接...")
        execute_remote_sql("SELECT 1")
        print("✓ 远程数据库连接成功")

        # 加载班级映射
        class_mapping = load_class_mapping()

        # 开始一个事务
        execute_remote_sql("BEGIN")

        # 读取并处理CSV
        print(f"\n开始处理CSV文件...")
        with open(CSV_FILE, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)

            for row_num, row in enumerate(reader, start=2):
                stats['total'] += 1

                # 处理CSV行
                data, error = process_csv_row(row, class_mapping)

                if error:
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
                action, student_id = upsert_student_sql(data)
                stats[action] += 1

                # 每50条打印进度
                if stats['total'] % 50 == 0:
                    print(f"  已处理 {stats['total']} 条记录 (更新:{stats['updated']}, 新增:{stats['inserted']})...")

        # 提交事务
        execute_remote_sql("COMMIT")
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

        # 打印跳过的详细信息(只显示前几个)
        if skipped_details:
            print("\n跳过记录详情(部分):")
            count = 0
            for reason, names in sorted(skipped_details.items()):
                if count >= 3:  # 只显示前3种原因
                    break
                print(f"\n  {reason}:")
                for name in names[:3]:  # 每种只显示3个例子
                    print(f"    - {name}")
                if len(names) > 3:
                    print(f"    ... 还有 {len(names) - 3} 个")
                count += 1

        # 查询字段填写率
        print("\n" + "=" * 60)
        print("字段填写率统计")
        print("=" * 60)
        stats_sql = """
        SELECT
            COUNT(*) as total,
            COUNT(phone) as has_phone,
            COUNT(primary_guardian_type) as has_guardian_type,
            COUNT(parent_name) as has_parent_name,
            COUNT(school) as has_school,
            COUNT(address) as has_address,
            COUNT(id_card) as has_id_card
        FROM v2.students
        WHERE updated_at > NOW() - INTERVAL '10 minutes'
        """
        output = execute_remote_sql(stats_sql)
        parts = output.strip().split(',')
        if len(parts) >= 7:
            total = int(parts[0])
            if total > 0:
                print(f"最近更新的学生: {total}")
                print(f"  有电话:         {parts[1]} ({int(parts[1])*100/total:.1f}%)")
                print(f"  有监护人类型:   {parts[2]} ({int(parts[2])*100/total:.1f}%)")
                print(f"  有家长姓名:     {parts[3]} ({int(parts[3])*100/total:.1f}%)")
                print(f"  有学校:         {parts[4]} ({int(parts[4])*100/total:.1f}%)")
                print(f"  有地址:         {parts[5]} ({int(parts[5])*100/total:.1f}%)")
                print(f"  有身份证:       {parts[6]} ({int(parts[6])*100/total:.1f}%)")

        # 监护人类型分布
        guardian_sql = """
        SELECT primary_guardian_type, COUNT(*)
        FROM v2.students
        WHERE primary_guardian_type IS NOT NULL
        GROUP BY primary_guardian_type
        ORDER BY COUNT(*) DESC
        """
        output = execute_remote_sql(guardian_sql)
        if output.strip():
            print("\n监护人类型分布:")
            for line in output.strip().split('\n'):
                if line:
                    parts = line.split(',')
                    if len(parts) >= 2:
                        print(f"  {parts[0]}: {parts[1]}")

        print("\n" + "=" * 60)
        print("✓ 导入完成!")
        print("=" * 60)

        return 0

    except Exception as e:
        print(f"\n❌ 错误: {e}")
        import traceback
        traceback.print_exc()
        try:
            execute_remote_sql("ROLLBACK")
            print("已回滚事务")
        except:
            pass
        return 1


if __name__ == "__main__":
    sys.exit(main())
