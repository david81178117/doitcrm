#!/usr/bin/env python3
"""
家长沟通分析系统
- 从数据库提取家长的聊天记录
- 调用 Coze API 进行 LLM 分析
- 存储分析结果到数据库
"""
import argparse
import json
import os
import sys
from datetime import datetime, timedelta, timezone
from typing import List, Dict, Optional
import time

import psycopg2
import psycopg2.extras
import requests

# 数据库连接配置
DB_CONFIG = {
    'host': os.getenv('DB_HOST', 'localhost'),
    'database': os.getenv('DB_NAME', 'wechat_db'),
    'user': os.getenv('DB_USER', 'postgres'),
    'password': os.getenv('DB_PASSWORD', 'doit123'),
    'port': os.getenv('DB_PORT', '5432')
}

# Coze API 配置
COZE_API_ENDPOINT = os.getenv('COZE_API_ENDPOINT', 'https://api.coze.cn/v3/chat')
COZE_TOKEN = os.getenv('COZE_TOKEN', 'pat_s48QEakmtUKzi9C54JfycMcSTeke1lcwrUAzvhI4Igb3W3ikMvnDoWg9TYDJyLQ4')
COZE_BOT_ID = os.getenv('COZE_BOT_ID', '7588778847907119144')


def get_db_connection():
    """获取数据库连接"""
    return psycopg2.connect(**DB_CONFIG)


def get_wmq_users_list(min_text_messages: int = 5) -> List[Dict]:
    """
    获取 wmqDzZE 开头的用户列表及统计信息

    Args:
        min_text_messages: 最少文本消息数

    Returns:
        用户列表，包含 wechat_id, display_name, message_count 等
    """
    conn = get_db_connection()
    cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

    query = """
    SELECT
        wcl.from_user_id as wechat_id,
        wim.display_name,
        wim.user_role,
        wim.student_name,
        COUNT(*) as total_messages,
        COUNT(*) FILTER (WHERE wcl.msgtype='text') as text_messages,
        COUNT(*) FILTER (WHERE wcl.roomid IS NULL OR wcl.roomid = '') as direct_messages,
        COUNT(*) FILTER (WHERE wcl.roomid IS NOT NULL AND wcl.roomid <> '') as group_messages,
        MIN(wcl.msgtime) as first_message_time,
        MAX(wcl.msgtime) as last_message_time
    FROM wecom_chat_logs wcl
    LEFT JOIN wecom_id_mappings wim
        ON wcl.from_user_id = wim.original_id
        AND wim.id_type = 'user_id'
    WHERE wcl.from_user_id LIKE 'wmqDzZE%%'
    GROUP BY wcl.from_user_id, wim.display_name, wim.user_role, wim.student_name
    HAVING COUNT(*) FILTER (WHERE wcl.msgtype='text') >= %s
    ORDER BY text_messages DESC
    """

    cur.execute(query, (min_text_messages,))
    results = cur.fetchall()

    cur.close()
    conn.close()

    return [dict(row) for row in results]


def extract_user_text_messages(wechat_id: str, days_back: int = 90) -> List[Dict]:
    """
    提取指定用户的所有文本消息（包括一对一和群聊）

    Args:
        wechat_id: 企业微信用户ID
        days_back: 提取最近N天的消息

    Returns:
        消息列表，按时间排序
    """
    conn = get_db_connection()
    cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)

    query = """
    SELECT
        msgid,
        msgtime,
        from_user_id,
        roomid,
        content_payload->>'content' as content,
        CASE
            WHEN roomid IS NULL OR roomid = '' THEN 'direct'
            ELSE 'group'
        END as message_type
    FROM wecom_chat_logs
    WHERE from_user_id = %s
      AND msgtype = 'text'
      AND msgtime >= NOW() - INTERVAL '%s days'
      AND content_payload->>'content' IS NOT NULL
      AND LENGTH(content_payload->>'content') > 0
    ORDER BY msgtime ASC
    """

    cur.execute(query, (wechat_id, days_back))
    results = cur.fetchall()

    cur.close()
    conn.close()

    return [dict(row) for row in results]


def format_messages_for_llm(messages: List[Dict], wechat_id: str) -> str:
    """
    将消息格式化为适合 LLM 分析的文本

    Args:
        messages: 消息列表
        wechat_id: 用户ID

    Returns:
        格式化后的文本
    """
    if not messages:
        return ""

    lines = []
    lines.append("# 家长沟通消息记录")
    lines.append("")
    lines.append("## 基本信息")
    lines.append(f"- 用户ID: {wechat_id}")
    lines.append(f"- 消息数量: {len(messages)}")
    lines.append(f"- 时间范围: {messages[0]['msgtime']} 至 {messages[-1]['msgtime']}")

    direct_count = sum(1 for m in messages if m['message_type'] == 'direct')
    group_count = sum(1 for m in messages if m['message_type'] == 'group')
    lines.append(f"- 一对一消息: {direct_count} 条")
    lines.append(f"- 群聊消息: {group_count} 条")
    lines.append("")
    lines.append("## 消息内容")
    lines.append("")

    for idx, msg in enumerate(messages, 1):
        msg_type_label = "【一对一】" if msg['message_type'] == 'direct' else "【群聊】"
        time_str = msg['msgtime'].strftime("%Y-%m-%d %H:%M:%S")
        lines.append(f"{idx}. {msg_type_label} {time_str}")
        lines.append(f"   {msg['content']}")
        lines.append("")

    return "\n".join(lines)


def build_analysis_prompt(messages_text: str) -> str:
    """
    构建发送给 Coze 的分析 Prompt

    Args:
        messages_text: 格式化后的消息文本

    Returns:
        完整的 prompt
    """
    prompt = f"""请你作为专业的教育机构客户分析师，分析以下家长的沟通消息记录。

{messages_text}

请从以下维度进行分析，并以JSON格式返回结果：

1. **主要关注点** (concerns): 识别家长最关心的问题
   - 每个关注点包含：category(类别), detail(具体描述), intensity(强度: high/medium/low), examples(示例消息片段列表，最多3条)
   - 关注类别包括但不限于：学习进度、作业质量、行为习惯、老师沟通、课堂表现、同学关系、身体健康、心理状态

2. **情绪态度** (emotions): 分析家长的整体情绪和态度
   - overall: 总体情绪倾向 (positive/neutral/negative/mixed)
   - details: 具体情绪列表，每项包含 type(情绪类型), intensity(0.0-1.0), context(触发上下文)
   - 情绪类型：满意、感激、焦虑、担忧、不满、期待、信任、失望

3. **沟通风格** (communication_style): 描述家长的沟通特征
   - 类型：主动型、被动型、合作型、要求型、观望型
   - 简要说明理由（50字以内）

4. **参与度** (engagement_level): 评估家长的参与程度
   - 级别：high/medium/low
   - 依据：消息频率、主动性、互动深度

5. **客户标签** (tags): 提取3-5个核心标签
   - 例如：["关注学习成绩", "积极配合", "高频互动", "关注细节", "情绪稳定"]
   - 标签要简洁、准确、有区分度

6. **分析摘要** (summary): 100-150字的整体评价
   - 概括家长的主要特点、沟通模式、关注重点
   - 提供教育机构的服务建议

请严格按照以下JSON格式返回：

```json
{{
  "concerns": [
    {{
      "category": "学习进度",
      "detail": "担心孩子数学成绩下降",
      "intensity": "high",
      "examples": ["最近数学测验怎么样？", "孩子说数学有点跟不上"]
    }}
  ],
  "emotions": {{
    "overall": "mixed",
    "details": [
      {{
        "type": "焦虑",
        "intensity": 0.7,
        "context": "对学习成绩的担忧"
      }}
    ]
  }},
  "communication_style": "主动型 - 经常主动询问孩子学习情况，积极寻求老师建议",
  "engagement_level": "high",
  "tags": ["关注学习成绩", "主动沟通", "配合度高", "关注细节", "情绪适度焦虑"],
  "summary": "该家长对孩子教育高度关注，沟通主动积极。主要关心学习成绩和课堂表现，情绪上略显焦虑但整体理性。与老师配合度高，经常寻求建议并积极反馈。建议保持定期沟通，及时反馈学生进展以缓解焦虑。"
}}
```

请开始分析。
"""
    return prompt


def call_coze_api(prompt: str, user_id: str) -> Dict:
    """
    调用 Coze API 进行分析

    Args:
        prompt: 分析提示词
        user_id: 用户ID（用于会话标识）

    Returns:
        分析结果字典
    """
    headers = {
        'Authorization': f'Bearer {COZE_TOKEN}',
        'Content-Type': 'application/json'
    }

    payload = {
        'bot_id': COZE_BOT_ID,
        'user_id': user_id,
        'stream': True,
        'auto_save_history': False,
        'additional_messages': [
            {
                'role': 'user',
                'content': prompt,
                'content_type': 'text'
            }
        ]
    }

    start_time = time.time()

    try:
        print("正在调用 Coze API 分析...")
        response = requests.post(
            COZE_API_ENDPOINT,
            headers=headers,
            json=payload,
            timeout=120,
            stream=True
        )
        response.raise_for_status()

        # 处理流式返回（Coze API event-stream 格式）
        full_text = ""
        current_event = None

        for line in response.iter_lines():
            if not line:
                continue

            line_str = line.decode('utf-8')

            # 处理 event 行
            if line_str.startswith('event:'):
                current_event = line_str[6:].strip()
                continue

            # 处理 data 行
            if line_str.startswith('data:'):
                data_str = line_str[5:].strip()
                if data_str == '"[DONE]"' or data_str == '[DONE]':
                    break

                try:
                    data = json.loads(data_str)

                    # 提取 answer 类型的内容
                    if data.get('type') == 'answer':
                        content = data.get('content', '')

                        # delta 事件：增量内容
                        if current_event == 'conversation.message.delta':
                            full_text += content

                        # completed 事件：完整内容（使用这个作为最终结果）
                        elif current_event == 'conversation.message.completed':
                            full_text = content

                except json.JSONDecodeError:
                    continue

        duration_ms = int((time.time() - start_time) * 1000)
        print(f"API 调用完成，耗时 {duration_ms} ms")

        # 解析 JSON 结果
        result = parse_analysis_result(full_text)
        result['metadata'] = {
            'duration_ms': duration_ms,
            'bot_id': COZE_BOT_ID
        }

        return result

    except Exception as e:
        print(f"API 调用失败: {str(e)}", file=sys.stderr)
        raise


def parse_analysis_result(text: str) -> Dict:
    """
    解析 LLM 返回的分析结果

    Args:
        text: LLM 返回的文本

    Returns:
        解析后的字典
    """
    try:
        # 查找 JSON 代码块
        start_idx = text.find('```json')
        if start_idx != -1:
            start_idx = text.find('{', start_idx)
            end_idx = text.rfind('}')
            if start_idx != -1 and end_idx != -1:
                json_str = text[start_idx:end_idx+1]
                result = json.loads(json_str)
            else:
                result = json.loads(text)
        else:
            # 查找第一个 { 和最后一个 }
            start_idx = text.find('{')
            end_idx = text.rfind('}')
            if start_idx != -1 and end_idx != -1:
                json_str = text[start_idx:end_idx+1]
                result = json.loads(json_str)
            else:
                raise ValueError("未找到有效的JSON")

        # 添加原始文本
        result['raw_text'] = text

        return result

    except Exception as e:
        print(f"解析分析结果失败: {str(e)}", file=sys.stderr)
        # 返回默认结构
        return {
            'concerns': [],
            'emotions': {'overall': 'neutral', 'details': []},
            'communication_style': 'unknown',
            'engagement_level': 'medium',
            'tags': [],
            'summary': f'分析失败: {str(e)}',
            'raw_text': text,
            'parse_error': str(e)
        }


def save_analysis_result(wechat_id: str, messages: List[Dict], analysis: Dict, metadata: Dict) -> int:
    """
    保存分析结果到数据库

    Args:
        wechat_id: 用户ID
        messages: 消息列表
        analysis: 分析结果
        metadata: 元数据

    Returns:
        分析记录ID
    """
    conn = get_db_connection()
    cur = conn.cursor()

    query = """
    INSERT INTO parent_communication_analysis (
        wechat_id, message_count, direct_message_count, group_message_count,
        date_range_start, date_range_end,
        primary_concerns, emotional_tone, communication_style, engagement_level,
        auto_tags, raw_analysis_text, analysis_summary,
        coze_bot_id, analysis_duration_ms
    ) VALUES (
        %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s
    )
    ON CONFLICT (wechat_id)
    DO UPDATE SET
        message_count = EXCLUDED.message_count,
        direct_message_count = EXCLUDED.direct_message_count,
        group_message_count = EXCLUDED.group_message_count,
        date_range_start = EXCLUDED.date_range_start,
        date_range_end = EXCLUDED.date_range_end,
        primary_concerns = EXCLUDED.primary_concerns,
        emotional_tone = EXCLUDED.emotional_tone,
        communication_style = EXCLUDED.communication_style,
        engagement_level = EXCLUDED.engagement_level,
        auto_tags = EXCLUDED.auto_tags,
        raw_analysis_text = EXCLUDED.raw_analysis_text,
        analysis_summary = EXCLUDED.analysis_summary,
        analysis_date = NOW(),
        updated_at = NOW()
    RETURNING id
    """

    direct_count = sum(1 for m in messages if m['message_type'] == 'direct')
    group_count = sum(1 for m in messages if m['message_type'] == 'group')

    cur.execute(query, (
        wechat_id,
        len(messages),
        direct_count,
        group_count,
        messages[0]['msgtime'] if messages else None,
        messages[-1]['msgtime'] if messages else None,
        psycopg2.extras.Json(analysis.get('concerns', [])),
        psycopg2.extras.Json(analysis.get('emotions', {})),
        analysis.get('communication_style'),
        analysis.get('engagement_level'),
        psycopg2.extras.Json(analysis.get('tags', [])),
        analysis.get('raw_text'),
        analysis.get('summary'),
        metadata.get('bot_id'),
        metadata.get('duration_ms')
    ))

    analysis_id = cur.fetchone()[0]
    conn.commit()

    cur.close()
    conn.close()

    return analysis_id


def display_analysis_result(wechat_id: str, display_name: str, analysis: Dict, stats: Dict):
    """
    在终端显示分析结果

    Args:
        wechat_id: 用户ID
        display_name: 显示名称
        analysis: 分析结果
        stats: 消息统计
    """
    print("\n" + "="*80)
    print(f"分析结果 - 用户: {display_name or wechat_id}")
    print("="*80)

    print(f"\n【消息统计】")
    print(f"  总消息数: {stats['total_count']}")
    print(f"  一对一消息: {stats['direct_count']}")
    print(f"  群聊消息: {stats['group_count']}")
    print(f"  时间跨度: {stats['date_range_days']} 天")

    print(f"\n【沟通风格】 {analysis.get('communication_style', 'N/A')}")
    print(f"【参与度】 {analysis.get('engagement_level', 'N/A').upper()}")

    print(f"\n【客户标签】")
    for tag in analysis.get('tags', []):
        print(f"  • {tag}")

    print(f"\n【主要关注点】")
    for concern in analysis.get('concerns', []):
        print(f"  • [{concern.get('intensity', '?').upper()}] {concern.get('category', '?')}: {concern.get('detail', '?')}")

    print(f"\n【情绪态度】 总体: {analysis.get('emotions', {}).get('overall', 'N/A').upper()}")
    for emotion in analysis.get('emotions', {}).get('details', []):
        print(f"  • {emotion.get('type', '?')} (强度: {emotion.get('intensity', 0):.1f}) - {emotion.get('context', '')}")

    print(f"\n【分析摘要】")
    print(f"  {analysis.get('summary', 'N/A')}")

    print("="*80 + "\n")


def analyze_user_interactive():
    """
    交互式模式：选择用户并分析
    """
    print("正在获取用户列表...")
    users = get_wmq_users_list(min_text_messages=1)  # 修改为1条，包含更多用户

    if not users:
        print("未找到符合条件的用户（至少1条文本消息）")
        return

    # 显示用户列表
    print("\n" + "="*100)
    print(f"可分析的用户列表 (共 {len(users)} 个用户，至少 1 条文本消息)")
    print("="*100)
    print(f"{'序号':<6} {'用户ID':<35} {'显示名称':<15} {'学生姓名':<15} {'总消息':<8} {'文本':<8} {'一对一':<8} {'群聊':<8}")
    print("-"*100)

    for idx, user in enumerate(users, 1):
        print(f"{idx:<6} {user['wechat_id']:<35} {user['display_name'] or '-':<15} "
              f"{user['student_name'] or '-':<15} {user['total_messages']:<8} "
              f"{user['text_messages']:<8} {user['direct_messages']:<8} {user['group_messages']:<8}")

    print("="*100)

    # 用户选择
    while True:
        try:
            choice = input("\n请选择要分析的用户序号 (或输入'q'退出): ").strip()
            if choice.lower() == 'q':
                return

            idx = int(choice) - 1
            if 0 <= idx < len(users):
                selected_user = users[idx]
                break
            else:
                print("无效的序号，请重新输入")
        except ValueError:
            print("请输入有效的数字")

    # 执行分析
    analyze_user(selected_user['wechat_id'], selected_user.get('display_name'))


def analyze_user(wechat_id: str, display_name: Optional[str] = None):
    """
    分析指定用户

    Args:
        wechat_id: 用户ID
        display_name: 显示名称（可选）
    """
    print(f"\n开始分析用户: {display_name or wechat_id}")

    # 1. 提取消息
    print("正在提取消息...")
    messages = extract_user_text_messages(wechat_id, days_back=90)

    if not messages:
        print(f"用户 {wechat_id} 无可分析的消息")
        return

    print(f"提取到 {len(messages)} 条文本消息")

    # 2. 格式化消息
    messages_text = format_messages_for_llm(messages, wechat_id)

    stats = {
        'total_count': len(messages),
        'direct_count': sum(1 for m in messages if m['message_type'] == 'direct'),
        'group_count': sum(1 for m in messages if m['message_type'] == 'group'),
        'date_range_days': (messages[-1]['msgtime'] - messages[0]['msgtime']).days if len(messages) > 1 else 0
    }

    # 3. 构建 Prompt
    prompt = build_analysis_prompt(messages_text)

    # 4. 调用 LLM 分析
    try:
        analysis_result = call_coze_api(prompt, wechat_id)
        print("分析完成！")

        # 5. 保存结果
        print("正在保存分析结果...")
        metadata = analysis_result.get('metadata', {})
        analysis_id = save_analysis_result(wechat_id, messages, analysis_result, metadata)
        print(f"分析结果已保存，ID: {analysis_id}")

        # 6. 显示结果
        display_analysis_result(wechat_id, display_name, analysis_result, stats)

    except Exception as e:
        print(f"分析过程出错: {str(e)}", file=sys.stderr)
        import traceback
        traceback.print_exc()


def main():
    """主入口"""
    parser = argparse.ArgumentParser(description='家长沟通分析系统')
    parser.add_argument('--user-id', help='指定要分析的用户ID')

    args = parser.parse_args()

    if args.user_id:
        # 命令行模式
        analyze_user(args.user_id)
    else:
        # 交互式模式
        analyze_user_interactive()


if __name__ == '__main__':
    main()
