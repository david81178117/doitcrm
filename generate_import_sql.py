#!/usr/bin/env python3
"""
生成SQL导入脚本
从CSV读取数据,生成SQL语句用于导入
"""
import csv
import os
import sys
import subprocess
from collections import defaultdict

CSV_FILE = "/workspaces/doitcrm/v2/报读课程-表格 1.csv"
SQL_OUTPUT = "/workspaces/doitcrm/v2/import_students.sql"
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
                class_name = ','.join(parts[1:])
                class_mapping[class_name] = class_id

    return class_mapping


def escape_sql_string(s):
    """转义SQL字符串用于生成SQL文件"""
    if s is None:
        return 'NULL'
    # 替换单引号为两个单引号,并添加E''前缀处理特殊字符
    escaped = s.replace("\\", "\\\\").replace("'", "''")
    return f"'{escaped}'"


def main():
    print("=" * 60)
    print("生成SQL导入脚本")
    print("=" * 60)

    if not os.path.exists(CSV_FILE):
        print(f"❌ CSV文件不存在: {CSV_FILE}")
        return 1

    print(f"✓ CSV文件: {CSV_FILE}")

    # 统计
    stats = {
        'total': 0,
        'valid': 0,
        'skipped_no_class': 0,
        'skipped_class_not_found': 0
    }

    skipped_details = defaultdict(list)

    try:
        print("\n加载班级映射...")
        class_mapping = load_class_mapping()
        print(f"✓ 已加载 {len(class_mapping)} 个班级")

        print(f"\n生成SQL文件: {SQL_OUTPUT}")

        with open(SQL_OUTPUT, 'w', encoding='utf-8') as sql_file:
            # 写入SQL文件头
            sql_file.write("-- Auto-generated SQL for student import\n")
            sql_file.write("-- Generated from: 报读课程-表格 1.csv\n\n")
            sql_file.write("BEGIN;\n\n")

            # 读取CSV
            with open(CSV_FILE, 'r', encoding='utf-8') as csv_file:
                reader = csv.DictReader(csv_file)

                for row_num, row in enumerate(reader, start=2):
                    stats['total'] += 1

                    student_name = row.get('学员姓名', '').strip()
                    class_name = row.get('所在班级', '').strip()

                    # 跳过无效记录
                    if not student_name:
                        continue

                    if not class_name or class_name == '-':
                        stats['skipped_no_class'] += 1
                        continue

                    # 查找班级ID
                    class_id = class_mapping.get(class_name)
                    if not class_id:
                        stats['skipped_class_not_found'] += 1
                        skipped_details[f"班级不存在: {class_name}"].append(student_name)
                        continue

                    # 提取字段
                    phone = row.get('手机号', '').strip() or None
                    guardian_type = row.get('手机号身份', '').strip() or None
                    parent_name = row.get('家长姓名', '').strip() or None
                    school = row.get('学校', '').strip() or None
                    address = row.get('住址', '').strip() or None
                    id_card = row.get('学员身份证号码', '').strip() or None

                    stats['valid'] += 1

                    # 生成UPSERT SQL (使用PostgreSQL的INSERT ... ON CONFLICT)
                    sql_file.write(f"-- Row {row_num}: {student_name} @ {class_name}\n")

                    # 先尝试更新
                    update_sql = f"""UPDATE v2.students
SET phone = {escape_sql_string(phone)},
    primary_guardian_type = {escape_sql_string(guardian_type)},
    parent_name = {escape_sql_string(parent_name)},
    school = {escape_sql_string(school)},
    address = {escape_sql_string(address)},
    id_card = {escape_sql_string(id_card)},
    updated_at = NOW()
WHERE name = {escape_sql_string(student_name)}
  AND class_id = {class_id};

"""
                    sql_file.write(update_sql)

                    # 如果没有更新到(不存在),则插入
                    insert_sql = f"""INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT {escape_sql_string(student_name)}, {class_id}, {escape_sql_string(phone)}, {escape_sql_string(guardian_type)}, {escape_sql_string(parent_name)}, {escape_sql_string(school)}, {escape_sql_string(address)}, {escape_sql_string(id_card)}, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = {escape_sql_string(student_name)} AND class_id = {class_id}
);

"""
                    sql_file.write(insert_sql)

                    if stats['valid'] % 100 == 0:
                        print(f"  已生成 {stats['valid']} 条SQL语句...")

            # 写入SQL文件尾
            sql_file.write("\nCOMMIT;\n")

        print(f"\n✓ SQL文件生成完成: {SQL_OUTPUT}")

        # 打印统计
        print("\n" + "=" * 60)
        print("统计信息")
        print("=" * 60)
        print(f"CSV总记录数:         {stats['total']}")
        print(f"  ✓ 有效记录:        {stats['valid']}")
        print(f"  ⊘ 跳过(班级'-'):   {stats['skipped_no_class']}")
        print(f"  ⊘ 跳过(班级不存在): {stats['skipped_class_not_found']}")

        if skipped_details:
            print("\n跳过记录示例:")
            for reason, names in list(skipped_details.items())[:3]:
                print(f"\n  {reason}:")
                for name in names[:5]:
                    print(f"    - {name}")
                if len(names) > 5:
                    print(f"    ... 还有 {len(names) - 5} 个")

        return 0

    except Exception as e:
        print(f"\n❌ 错误: {e}")
        import traceback
        traceback.print_exc()
        return 1


if __name__ == "__main__":
    sys.exit(main())
