-- Auto-generated SQL for student import
-- Generated from: 报读课程-表格 1.csv

BEGIN;

-- Row 2: Shawn吴乔炫 @ 凤凰44班
UPDATE v2.students
SET phone = '13765147683',
    primary_guardian_type = '妈妈',
    parent_name = '吴霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Shawn吴乔炫'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Shawn吴乔炫', 59, '13765147683', '妈妈', '吴霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Shawn吴乔炫' AND class_id = 59
);

-- Row 3: Star谢硕语 @ 凤凰44班
UPDATE v2.students
SET phone = '13037874881',
    primary_guardian_type = '妈妈',
    parent_name = '颜文希',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Star谢硕语'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Star谢硕语', 59, '13037874881', '妈妈', '颜文希', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Star谢硕语' AND class_id = 59
);

-- Row 4: Momo张莫一 @ 凤凰44班
UPDATE v2.students
SET phone = '15599503994',
    primary_guardian_type = '妈妈',
    parent_name = '杨虹钰',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Momo张莫一'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Momo张莫一', 59, '15599503994', '妈妈', '杨虹钰', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Momo张莫一' AND class_id = 59
);

-- Row 5: Tommy张瑾尚 @ 凤凰44班
UPDATE v2.students
SET phone = '18396939647',
    primary_guardian_type = '妈妈',
    parent_name = '张菊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Tommy张瑾尚'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Tommy张瑾尚', 59, '18396939647', '妈妈', '张菊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Tommy张瑾尚' AND class_id = 59
);

-- Row 6: Max 莫轶景 @ 凤凰44班
UPDATE v2.students
SET phone = '15185120696',
    primary_guardian_type = '妈妈',
    parent_name = '宋婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Max 莫轶景'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Max 莫轶景', 59, '15185120696', '妈妈', '宋婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Max 莫轶景' AND class_id = 59
);

-- Row 7: Annie 薛逸安 @ 凤凰44班
UPDATE v2.students
SET phone = '18081220308',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '师大幼儿园',
    address = '云岩区九华路中央公园',
    id_card = '520103201906260421',
    updated_at = NOW()
WHERE name = 'Annie 薛逸安'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Annie 薛逸安', 59, '18081220308', '妈妈', NULL, '师大幼儿园', '云岩区九华路中央公园', '520103201906260421', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Annie 薛逸安' AND class_id = 59
);

-- Row 8: Yorick彭裕豪 @ 凤凰44班
UPDATE v2.students
SET phone = '18984042726',
    primary_guardian_type = '妈妈',
    parent_name = '谢佩芸',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Yorick彭裕豪'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Yorick彭裕豪', 59, '18984042726', '妈妈', '谢佩芸', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Yorick彭裕豪' AND class_id = 59
);

-- Row 9: Mico陈沐娴 @ 凤凰44班
UPDATE v2.students
SET phone = '19985669966',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '实验小学',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Mico陈沐娴'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Mico陈沐娴', 59, '19985669966', NULL, NULL, '实验小学', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Mico陈沐娴' AND class_id = 59
);

-- Row 10: Judy尹溪玥 @ 凤凰44班
UPDATE v2.students
SET phone = '18198260151',
    primary_guardian_type = '妈妈',
    parent_name = '吴晓丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Judy尹溪玥'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Judy尹溪玥', 59, '18198260151', '妈妈', '吴晓丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Judy尹溪玥' AND class_id = 59
);

-- Row 11: Hami陈羿然 @ 凤凰44班
UPDATE v2.students
SET phone = '13985420542',
    primary_guardian_type = '妈妈',
    parent_name = '吴羿儒',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Hami陈羿然'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Hami陈羿然', 59, '13985420542', '妈妈', '吴羿儒', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Hami陈羿然' AND class_id = 59
);

-- Row 12: Mark马瑞洋 @ 凤凰44班
UPDATE v2.students
SET phone = '15185076814',
    primary_guardian_type = '妈妈',
    parent_name = '林芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Mark马瑞洋'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Mark马瑞洋', 59, '15185076814', '妈妈', '林芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Mark马瑞洋' AND class_id = 59
);

-- Row 13: Leo付龙浩 @ 凤凰44班
UPDATE v2.students
SET phone = '18111966716',
    primary_guardian_type = '妈妈',
    parent_name = '张婷婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Leo付龙浩'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Leo付龙浩', 59, '18111966716', '妈妈', '张婷婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Leo付龙浩' AND class_id = 59
);

-- Row 14: Freya李书涵 @ 凤凰44班
UPDATE v2.students
SET phone = '13618599949',
    primary_guardian_type = '妈妈',
    parent_name = '文梦琦',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Freya李书涵'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Freya李书涵', 59, '13618599949', '妈妈', '文梦琦', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Freya李书涵' AND class_id = 59
);

-- Row 15: Esme陈漪迪 @ 凤凰44班
UPDATE v2.students
SET phone = '13078580417',
    primary_guardian_type = '妈妈',
    parent_name = '苏奕丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Esme陈漪迪'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Esme陈漪迪', 59, '13078580417', '妈妈', '苏奕丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Esme陈漪迪' AND class_id = 59
);

-- Row 16: Ginny张静好 @ 凤凰44班
UPDATE v2.students
SET phone = '18648466234',
    primary_guardian_type = '妈妈',
    parent_name = '卢静',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ginny张静好'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ginny张静好', 59, '18648466234', '妈妈', '卢静', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ginny张静好' AND class_id = 59
);

-- Row 17: Lulu谢睎仪 @ 凤凰44班
UPDATE v2.students
SET phone = '18798021006',
    primary_guardian_type = '妈妈',
    parent_name = '刘倩',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Lulu谢睎仪'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Lulu谢睎仪', 59, '18798021006', '妈妈', '刘倩', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Lulu谢睎仪' AND class_id = 59
);

-- Row 18: Ethan吴弘毅 @ 凤凰44班
UPDATE v2.students
SET phone = '13608569620',
    primary_guardian_type = '妈妈',
    parent_name = '雷寒琼',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ethan吴弘毅'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ethan吴弘毅', 59, '13608569620', '妈妈', '雷寒琼', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ethan吴弘毅' AND class_id = 59
);

-- Row 19: Lele张哲偕 @ 凤凰44班
UPDATE v2.students
SET phone = '15885501333',
    primary_guardian_type = '妈妈',
    parent_name = '郭敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Lele张哲偕'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Lele张哲偕', 59, '15885501333', '妈妈', '郭敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Lele张哲偕' AND class_id = 59
);

-- Row 20: Jason叶邦佐 @ 凤凰44班
UPDATE v2.students
SET phone = '18984125948',
    primary_guardian_type = '妈妈',
    parent_name = '赵丹娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jason叶邦佐'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jason叶邦佐', 59, '18984125948', '妈妈', '赵丹娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jason叶邦佐' AND class_id = 59
);

-- Row 21: Grace黄雅澜 @ 凤凰44班
UPDATE v2.students
SET phone = '15985126833',
    primary_guardian_type = '妈妈',
    parent_name = '成文烨',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Grace黄雅澜'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Grace黄雅澜', 59, '15985126833', '妈妈', '成文烨', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Grace黄雅澜' AND class_id = 59
);

-- Row 22: Ella李栩潇 @ 凤凰44班
UPDATE v2.students
SET phone = '18108512126',
    primary_guardian_type = '爸爸',
    parent_name = '徐光红',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ella李栩潇'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ella李栩潇', 59, '18108512126', '爸爸', '徐光红', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ella李栩潇' AND class_id = 59
);

-- Row 23: Ariel刘冠昀 @ 凤凰44班
UPDATE v2.students
SET phone = '18685410925',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ariel刘冠昀'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ariel刘冠昀', 59, '18685410925', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ariel刘冠昀' AND class_id = 59
);

-- Row 24: Amy韩锦沂 @ 凤凰44班
UPDATE v2.students
SET phone = '18239188733',
    primary_guardian_type = '妈妈',
    parent_name = '柴燕燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Amy韩锦沂'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Amy韩锦沂', 59, '18239188733', '妈妈', '柴燕燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Amy韩锦沂' AND class_id = 59
);

-- Row 25: Auric金墨同 @ 凤凰44班
UPDATE v2.students
SET phone = '18188107447',
    primary_guardian_type = '妈妈',
    parent_name = '曾姝雅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Auric金墨同'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Auric金墨同', 59, '18188107447', '妈妈', '曾姝雅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Auric金墨同' AND class_id = 59
);

-- Row 26: Anny魏陈栎琦 @ 凤凰44班
UPDATE v2.students
SET phone = '13984050033',
    primary_guardian_type = '妈妈',
    parent_name = '陈微',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Anny魏陈栎琦'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Anny魏陈栎琦', 59, '13984050033', '妈妈', '陈微', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Anny魏陈栎琦' AND class_id = 59
);

-- Row 27: 孙紫凌Sunny @ 麒麟13班
UPDATE v2.students
SET phone = '18608507133',
    primary_guardian_type = '爸爸',
    parent_name = '刘源',
    school = '贵阳市实验小学',
    address = '云岩区贵开路',
    id_card = '520103201508063625',
    updated_at = NOW()
WHERE name = '孙紫凌Sunny'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙紫凌Sunny', 73, '18608507133', '爸爸', '刘源', '贵阳市实验小学', '云岩区贵开路', '520103201508063625', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙紫凌Sunny' AND class_id = 73
);

-- Row 28: 陈柯伊 Kaylee @ 凤凰43班
UPDATE v2.students
SET phone = '13539495431',
    primary_guardian_type = '妈妈',
    parent_name = '陈颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈柯伊 Kaylee'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈柯伊 Kaylee', 58, '13539495431', '妈妈', '陈颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈柯伊 Kaylee' AND class_id = 58
);

-- Row 54: 廖可可Coco @ 麒麟08班
UPDATE v2.students
SET phone = '18984100823',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = '林城美的时代',
    id_card = '520103201312151623',
    updated_at = NOW()
WHERE name = '廖可可Coco'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '廖可可Coco', 69, '18984100823', NULL, NULL, NULL, '林城美的时代', '520103201312151623', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '廖可可Coco' AND class_id = 69
);

-- Row 76: 周佳玉Judy @ 麒麟08班
UPDATE v2.students
SET phone = '18188106626',
    primary_guardian_type = NULL,
    parent_name = '罗明英',
    school = '太慈桥小学',
    address = '花果园',
    id_card = '520103201201161220',
    updated_at = NOW()
WHERE name = '周佳玉Judy'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周佳玉Judy', 69, '18188106626', NULL, '罗明英', '太慈桥小学', '花果园', '520103201201161220', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周佳玉Judy' AND class_id = 69
);

-- Row 77: 王紫宸 William @ 麒麟08班
UPDATE v2.students
SET phone = '13984377777',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王紫宸 William'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王紫宸 William', 69, '13984377777', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王紫宸 William' AND class_id = 69
);

-- Row 78: 潘轼坤George @ 麒麟08班
UPDATE v2.students
SET phone = '18008500880',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '贵阳市实验小学',
    address = '云岩区飞山街',
    id_card = '520103201301112012',
    updated_at = NOW()
WHERE name = '潘轼坤George'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '潘轼坤George', 69, '18008500880', NULL, NULL, '贵阳市实验小学', '云岩区飞山街', '520103201301112012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '潘轼坤George' AND class_id = 69
);

-- Row 79: 施沐格Lily @ 麒麟08班
UPDATE v2.students
SET phone = '13985463283',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '花溪第二小学',
    address = NULL,
    id_card = '520113201206190824花溪区保利溪湖',
    updated_at = NOW()
WHERE name = '施沐格Lily'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '施沐格Lily', 69, '13985463283', NULL, NULL, '花溪第二小学', NULL, '520113201206190824花溪区保利溪湖', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '施沐格Lily' AND class_id = 69
);

-- Row 80: 王昱祁 Roy @ 麒麟08班
UPDATE v2.students
SET phone = '13688509947',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '北京朝阳区实验小学',
    address = '保利凤凰湾',
    id_card = '520102201212071611',
    updated_at = NOW()
WHERE name = '王昱祁 Roy'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王昱祁 Roy', 69, '13688509947', NULL, NULL, '北京朝阳区实验小学', '保利凤凰湾', '520102201212071611', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王昱祁 Roy' AND class_id = 69
);

-- Row 81: 章鐘尹Yoyo @ 麒麟08班
UPDATE v2.students
SET phone = '18985129585',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = '花果园',
    id_card = '520103201205243223',
    updated_at = NOW()
WHERE name = '章鐘尹Yoyo'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '章鐘尹Yoyo', 69, '18985129585', NULL, NULL, NULL, '花果园', '520103201205243223', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '章鐘尹Yoyo' AND class_id = 69
);

-- Row 82: 谢汐辰Jack @ 麒麟08班
UPDATE v2.students
SET phone = '13984190575',
    primary_guardian_type = NULL,
    parent_name = '姚琨',
    school = NULL,
    address = NULL,
    id_card = '520103201302275219',
    updated_at = NOW()
WHERE name = '谢汐辰Jack'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢汐辰Jack', 69, '13984190575', NULL, '姚琨', NULL, NULL, '520103201302275219', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢汐辰Jack' AND class_id = 69
);

-- Row 83: 金罗正泰Tyson @ 麒麟08班
UPDATE v2.students
SET phone = '18676723330',
    primary_guardian_type = '妈妈',
    parent_name = '罗茜',
    school = '省府路小学',
    address = '中央公园',
    id_card = '520103201302263613',
    updated_at = NOW()
WHERE name = '金罗正泰Tyson'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '金罗正泰Tyson', 69, '18676723330', '妈妈', '罗茜', '省府路小学', '中央公园', '520103201302263613', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '金罗正泰Tyson' AND class_id = 69
);

-- Row 84: 贺姝涵Mary @ 麒麟08班
UPDATE v2.students
SET phone = '13984045600',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = '观山湖区',
    id_card = '52013201208234445',
    updated_at = NOW()
WHERE name = '贺姝涵Mary'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '贺姝涵Mary', 69, '13984045600', NULL, NULL, NULL, '观山湖区', '52013201208234445', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '贺姝涵Mary' AND class_id = 69
);

-- Row 85: 贺泽龙 Clarence @ 麒麟08班
UPDATE v2.students
SET phone = '13518506669',
    primary_guardian_type = NULL,
    parent_name = '朱琳',
    school = NULL,
    address = '中天世纪新城组团',
    id_card = '520102201210062033',
    updated_at = NOW()
WHERE name = '贺泽龙 Clarence'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '贺泽龙 Clarence', 69, '13518506669', NULL, '朱琳', NULL, '中天世纪新城组团', '520102201210062033', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '贺泽龙 Clarence' AND class_id = 69
);

-- Row 86: 陈奕汐 Celia @ 麒麟08班
UPDATE v2.students
SET phone = '13885331020',
    primary_guardian_type = NULL,
    parent_name = '王珂',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈奕汐 Celia'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈奕汐 Celia', 69, '13885331020', NULL, '王珂', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈奕汐 Celia' AND class_id = 69
);

-- Row 87: 郭子铭Steven @ 麒麟08班
UPDATE v2.students
SET phone = '13595160715',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '省府路小学',
    address = NULL,
    id_card = '520103201110080812',
    updated_at = NOW()
WHERE name = '郭子铭Steven'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭子铭Steven', 69, '13595160715', NULL, NULL, '省府路小学', NULL, '520103201110080812', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭子铭Steven' AND class_id = 69
);

-- Row 88: 罗雅心 Ada @ 麒麟08班
UPDATE v2.students
SET phone = '18985117873',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '实验小学',
    address = '保利云山',
    id_card = '520103201211104828',
    updated_at = NOW()
WHERE name = '罗雅心 Ada'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗雅心 Ada', 69, '18985117873', NULL, NULL, '实验小学', '保利云山', '520103201211104828', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗雅心 Ada' AND class_id = 69
);

-- Row 89: 李徐观自Ziven @ 麒麟08班
UPDATE v2.students
SET phone = '18984850814',
    primary_guardian_type = NULL,
    parent_name = '徐嘉',
    school = NULL,
    address = '凤凰湾',
    id_card = '520103201209020414',
    updated_at = NOW()
WHERE name = '李徐观自Ziven'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李徐观自Ziven', 69, '18984850814', NULL, '徐嘉', NULL, '凤凰湾', '520103201209020414', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李徐观自Ziven' AND class_id = 69
);

-- Row 90: 丁小淇Anna @ 麒麟08班
UPDATE v2.students
SET phone = '15885011108',
    primary_guardian_type = NULL,
    parent_name = '罗媛',
    school = '新世界国际学校',
    address = '观山湖区金阳',
    id_card = '520113201206191229',
    updated_at = NOW()
WHERE name = '丁小淇Anna'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '丁小淇Anna', 69, '15885011108', NULL, '罗媛', '新世界国际学校', '观山湖区金阳', '520113201206191229', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '丁小淇Anna' AND class_id = 69
);

-- Row 91: 陈思羽Fairy @ 麒麟08班
UPDATE v2.students
SET phone = '18108519410',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = '520103201211050428',
    updated_at = NOW()
WHERE name = '陈思羽Fairy'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈思羽Fairy', 69, '18108519410', NULL, NULL, NULL, NULL, '520103201211050428', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈思羽Fairy' AND class_id = 69
);

-- Row 165: 樊子睿Leon @ 麒麟15班
UPDATE v2.students
SET phone = '18685008877',
    primary_guardian_type = '爸爸',
    parent_name = '宋剑宏',
    school = '新世界小学',
    address = '观山湖区融创樾府',
    id_card = '520103201402160419',
    updated_at = NOW()
WHERE name = '樊子睿Leon'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '樊子睿Leon', 75, '18685008877', '爸爸', '宋剑宏', '新世界小学', '观山湖区融创樾府', '520103201402160419', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '樊子睿Leon' AND class_id = 75
);

-- Row 185: 唐吴诗瑜Sherry @ 麒麟15班
UPDATE v2.students
SET phone = '18984320211',
    primary_guardian_type = '妈妈',
    parent_name = '唐音',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '唐吴诗瑜Sherry'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐吴诗瑜Sherry', 75, '18984320211', '妈妈', '唐音', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐吴诗瑜Sherry' AND class_id = 75
);

-- Row 186: 杨子墨Fiona @ 麒麟15班
UPDATE v2.students
SET phone = '15329907077',
    primary_guardian_type = '妈妈',
    parent_name = '邹婧暘',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨子墨Fiona'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨子墨Fiona', 75, '15329907077', '妈妈', '邹婧暘', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨子墨Fiona' AND class_id = 75
);

-- Row 187: 朱梓熙Ada @ 麒麟15班
UPDATE v2.students
SET phone = '18085071710',
    primary_guardian_type = '妈妈',
    parent_name = '王孝君',
    school = '花果园一小',
    address = '花果园',
    id_card = '520103201404127225',
    updated_at = NOW()
WHERE name = '朱梓熙Ada'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱梓熙Ada', 75, '18085071710', '妈妈', '王孝君', '花果园一小', '花果园', '520103201404127225', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱梓熙Ada' AND class_id = 75
);

-- Row 188: 张姚博文Vincent @ 麒麟15班
UPDATE v2.students
SET phone = '18685158819',
    primary_guardian_type = '妈妈',
    parent_name = '姚文红',
    school = '北师大附小',
    address = '观山湖金华园',
    id_card = '520111201402286011',
    updated_at = NOW()
WHERE name = '张姚博文Vincent'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张姚博文Vincent', 75, '18685158819', '妈妈', '姚文红', '北师大附小', '观山湖金华园', '520111201402286011', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张姚博文Vincent' AND class_id = 75
);

-- Row 189: 伍思洁Amy @ 麒麟15班
UPDATE v2.students
SET phone = '18685181615',
    primary_guardian_type = '妈妈',
    parent_name = '赵青',
    school = '南明小学',
    address = NULL,
    id_card = '520102201304061226',
    updated_at = NOW()
WHERE name = '伍思洁Amy'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '伍思洁Amy', 75, '18685181615', '妈妈', '赵青', '南明小学', NULL, '520102201304061226', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '伍思洁Amy' AND class_id = 75
);

-- Row 190: 徐骁Leo @ 麒麟15班
UPDATE v2.students
SET phone = '18798063282',
    primary_guardian_type = '爸爸',
    parent_name = '肖耀华',
    school = '实验二小',
    address = '贵州医科大学',
    id_card = '500243201605102596',
    updated_at = NOW()
WHERE name = '徐骁Leo'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐骁Leo', 75, '18798063282', '爸爸', '肖耀华', '实验二小', '贵州医科大学', '500243201605102596', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐骁Leo' AND class_id = 75
);

-- Row 191: 袁子曦Angela @ 麒麟15班
UPDATE v2.students
SET phone = '18685859998',
    primary_guardian_type = '妈妈',
    parent_name = '阮桂兰',
    school = '省府路小学',
    address = '云岩区富水北路',
    id_card = '520201201506190041',
    updated_at = NOW()
WHERE name = '袁子曦Angela'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁子曦Angela', 75, '18685859998', '妈妈', '阮桂兰', '省府路小学', '云岩区富水北路', '520201201506190041', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁子曦Angela' AND class_id = 75
);

-- Row 192: 宋若依Rosa @ 麒麟15班
UPDATE v2.students
SET phone = '18685030165',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '宋若依Rosa'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋若依Rosa', 75, '18685030165', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋若依Rosa' AND class_id = 75
);

-- Row 193: 刘心悦Candy @ 麒麟15班
UPDATE v2.students
SET phone = '13765071803',
    primary_guardian_type = '妈妈',
    parent_name = '刘宝瑞',
    school = '世纪城小学',
    address = '世纪城龙凯苑',
    id_card = '520103201309129222',
    updated_at = NOW()
WHERE name = '刘心悦Candy'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘心悦Candy', 75, '13765071803', '妈妈', '刘宝瑞', '世纪城小学', '世纪城龙凯苑', '520103201309129222', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘心悦Candy' AND class_id = 75
);

-- Row 194: 蒲臻皓Brain @ 麒麟15班
UPDATE v2.students
SET phone = '18085115397',
    primary_guardian_type = '妈妈',
    parent_name = '蒲俊鹏',
    school = '云岩区第四小学',
    address = '花果园半山小镇',
    id_card = '431227201504300078',
    updated_at = NOW()
WHERE name = '蒲臻皓Brain'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒲臻皓Brain', 75, '18085115397', '妈妈', '蒲俊鹏', '云岩区第四小学', '花果园半山小镇', '431227201504300078', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒲臻皓Brain' AND class_id = 75
);

-- Row 195: 宋颖珊Susan @ 麒麟15班
UPDATE v2.students
SET phone = '13809437699',
    primary_guardian_type = '妈妈',
    parent_name = '宋光娅',
    school = '中天北京小学',
    address = '中天花园',
    id_card = '520103201605180241',
    updated_at = NOW()
WHERE name = '宋颖珊Susan'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋颖珊Susan', 75, '13809437699', '妈妈', '宋光娅', '中天北京小学', '中天花园', '520103201605180241', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋颖珊Susan' AND class_id = 75
);

-- Row 196: 刘周行Martin @ 麒麟15班
UPDATE v2.students
SET phone = '13885139601',
    primary_guardian_type = '爸爸',
    parent_name = '刘兵',
    school = '花溪万科一小',
    address = '小河万科',
    id_card = '520114201403031634',
    updated_at = NOW()
WHERE name = '刘周行Martin'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘周行Martin', 75, '13885139601', '爸爸', '刘兵', '花溪万科一小', '小河万科', '520114201403031634', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘周行Martin' AND class_id = 75
);

-- Row 197: 陆文泽Jack @ 麒麟15班
UPDATE v2.students
SET phone = '13765069511',
    primary_guardian_type = '妈妈',
    parent_name = '文其莹',
    school = '省府路小学',
    address = '云岩区宝山北路',
    id_card = '522701201411031215',
    updated_at = NOW()
WHERE name = '陆文泽Jack'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陆文泽Jack', 75, '13765069511', '妈妈', '文其莹', '省府路小学', '云岩区宝山北路', '522701201411031215', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陆文泽Jack' AND class_id = 75
);

-- Row 198: 唐浩蓝Tim @ 麒麟15班
UPDATE v2.students
SET phone = '18985189033',
    primary_guardian_type = '妈妈',
    parent_name = '邱洪',
    school = '云岩区枫丹白露小学',
    address = '南明区后坝路',
    id_card = '522328201405070814',
    updated_at = NOW()
WHERE name = '唐浩蓝Tim'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐浩蓝Tim', 75, '18985189033', '妈妈', '邱洪', '云岩区枫丹白露小学', '南明区后坝路', '522328201405070814', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐浩蓝Tim' AND class_id = 75
);

-- Row 199: 马钲越Zane @ 麒麟15班
UPDATE v2.students
SET phone = '13984388222',
    primary_guardian_type = '妈妈',
    parent_name = '马松',
    school = '南明小学',
    address = '南明区观风巷',
    id_card = '520102201412011613',
    updated_at = NOW()
WHERE name = '马钲越Zane'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马钲越Zane', 75, '13984388222', '妈妈', '马松', '南明小学', '南明区观风巷', '520102201412011613', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马钲越Zane' AND class_id = 75
);

-- Row 200: 司羽涵Sam @ 麒麟15班
UPDATE v2.students
SET phone = '13765124900',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '贵阳普瑞学校',
    address = '观山湖区碧海观山小区',
    id_card = '520103201208109054',
    updated_at = NOW()
WHERE name = '司羽涵Sam'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '司羽涵Sam', 75, '13765124900', '妈妈', NULL, '贵阳普瑞学校', '观山湖区碧海观山小区', '520103201208109054', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '司羽涵Sam' AND class_id = 75
);

-- Row 201: 陈云笛Andy @ 麒麟15班
UPDATE v2.students
SET phone = '13885119147',
    primary_guardian_type = '妈妈',
    parent_name = '杨燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈云笛Andy'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈云笛Andy', 75, '13885119147', '妈妈', '杨燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈云笛Andy' AND class_id = 75
);

-- Row 202: 陈婉妤Chen @ 麒麟15班
UPDATE v2.students
SET phone = '13765012917',
    primary_guardian_type = '妈妈',
    parent_name = '冯静',
    school = '花果园第二小学',
    address = '花果园二期',
    id_card = '520102201406301227',
    updated_at = NOW()
WHERE name = '陈婉妤Chen'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈婉妤Chen', 75, '13765012917', '妈妈', '冯静', '花果园第二小学', '花果园二期', '520102201406301227', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈婉妤Chen' AND class_id = 75
);

-- Row 203: 金语同Vivi @ 麒麟15班
UPDATE v2.students
SET phone = '18188107447',
    primary_guardian_type = '妈妈',
    parent_name = '曾姝雅',
    school = '省府路小学',
    address = '南明区万科翡翠滨江',
    id_card = '520103201508130824',
    updated_at = NOW()
WHERE name = '金语同Vivi'
  AND class_id = 75;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '金语同Vivi', 75, '18188107447', '妈妈', '曾姝雅', '省府路小学', '南明区万科翡翠滨江', '520103201508130824', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '金语同Vivi' AND class_id = 75
);

-- Row 204: 闫璟熙York @ 凤凰28班
UPDATE v2.students
SET phone = '18711080063',
    primary_guardian_type = '妈妈',
    parent_name = '夏千惠',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '闫璟熙York'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '闫璟熙York', 43, '18711080063', '妈妈', '夏千惠', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '闫璟熙York' AND class_id = 43
);

-- Row 205: 向泉熹Shirley @ 凤凰28班
UPDATE v2.students
SET phone = '13984412282',
    primary_guardian_type = '妈妈',
    parent_name = '刘宇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '向泉熹Shirley'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '向泉熹Shirley', 43, '13984412282', '妈妈', '刘宇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '向泉熹Shirley' AND class_id = 43
);

-- Row 206: 熊艺涵 Mia @ 凤凰28班
UPDATE v2.students
SET phone = '13684998997',
    primary_guardian_type = '妈妈',
    parent_name = '潘婕',
    school = '中天北京小学',
    address = '贵阳市中天花园',
    id_card = '520103201604180223',
    updated_at = NOW()
WHERE name = '熊艺涵 Mia'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '熊艺涵 Mia', 43, '13684998997', '妈妈', '潘婕', '中天北京小学', '贵阳市中天花园', '520103201604180223', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '熊艺涵 Mia' AND class_id = 43
);

-- Row 207: 章旖宸 Nemo @ 凤凰28班
UPDATE v2.students
SET phone = '18685134811',
    primary_guardian_type = '妈妈',
    parent_name = '廖欢',
    school = '贵阳市第一实验小学',
    address = '观山湖',
    id_card = '520103201609183626',
    updated_at = NOW()
WHERE name = '章旖宸 Nemo'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '章旖宸 Nemo', 43, '18685134811', '妈妈', '廖欢', '贵阳市第一实验小学', '观山湖', '520103201609183626', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '章旖宸 Nemo' AND class_id = 43
);

-- Row 208: 武禹睿Ray @ 凤凰28班
UPDATE v2.students
SET phone = '13511904594',
    primary_guardian_type = '爸爸',
    parent_name = '蔡丹',
    school = '实验小学',
    address = '大营坡中大国际',
    id_card = '520103201703305212',
    updated_at = NOW()
WHERE name = '武禹睿Ray'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '武禹睿Ray', 43, '13511904594', '爸爸', '蔡丹', '实验小学', '大营坡中大国际', '520103201703305212', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '武禹睿Ray' AND class_id = 43
);

-- Row 209: 魏源霆Jackson @ 凤凰28班
UPDATE v2.students
SET phone = '15085909815',
    primary_guardian_type = '妈妈',
    parent_name = '江柳乐',
    school = '华麟学校',
    address = '云岩区水东路万科玲珑湾',
    id_card = '520103201705078033',
    updated_at = NOW()
WHERE name = '魏源霆Jackson'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '魏源霆Jackson', 43, '15085909815', '妈妈', '江柳乐', '华麟学校', '云岩区水东路万科玲珑湾', '520103201705078033', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '魏源霆Jackson' AND class_id = 43
);

-- Row 210: 伍思橙Remy @ 凤凰28班
UPDATE v2.students
SET phone = '18685039028',
    primary_guardian_type = '妈妈',
    parent_name = '赵青',
    school = '南明小学',
    address = NULL,
    id_card = '520102201610281219',
    updated_at = NOW()
WHERE name = '伍思橙Remy'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '伍思橙Remy', 43, '18685039028', '妈妈', '赵青', '南明小学', NULL, '520102201610281219', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '伍思橙Remy' AND class_id = 43
);

-- Row 211: 张羡清Judy @ 凤凰28班
UPDATE v2.students
SET phone = '13078516010',
    primary_guardian_type = '妈妈',
    parent_name = '王娟',
    school = '实验二小',
    address = '云岩区银海嘉怡花园',
    id_card = '520103201804038029',
    updated_at = NOW()
WHERE name = '张羡清Judy'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张羡清Judy', 43, '13078516010', '妈妈', '王娟', '实验二小', '云岩区银海嘉怡花园', '520103201804038029', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张羡清Judy' AND class_id = 43
);

-- Row 212: 王师邈Stella @ 凤凰28班
UPDATE v2.students
SET phone = '13560245169',
    primary_guardian_type = '妈妈',
    parent_name = '罗均丽',
    school = '观山湖一小',
    address = '观山湖一号',
    id_card = '52032120161027422X',
    updated_at = NOW()
WHERE name = '王师邈Stella'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王师邈Stella', 43, '13560245169', '妈妈', '罗均丽', '观山湖一小', '观山湖一号', '52032120161027422X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王师邈Stella' AND class_id = 43
);

-- Row 213: 文星琳Linn @ 凤凰28班
UPDATE v2.students
SET phone = '18984571391',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '文星琳Linn'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '文星琳Linn', 43, '18984571391', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '文星琳Linn' AND class_id = 43
);

-- Row 214: 韩嘉怡Luna @ 凤凰28班
UPDATE v2.students
SET phone = '18786101851',
    primary_guardian_type = '妈妈',
    parent_name = '张晗',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '韩嘉怡Luna'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韩嘉怡Luna', 43, '18786101851', '妈妈', '张晗', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韩嘉怡Luna' AND class_id = 43
);

-- Row 215: 张子锐Jerry @ 麒麟13班
UPDATE v2.students
SET phone = '18798071008',
    primary_guardian_type = '妈妈',
    parent_name = '张林芳',
    school = '省府路小学',
    address = '天誉城',
    id_card = '520103201506204412',
    updated_at = NOW()
WHERE name = '张子锐Jerry'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张子锐Jerry', 73, '18798071008', '妈妈', '张林芳', '省府路小学', '天誉城', '520103201506204412', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张子锐Jerry' AND class_id = 73
);

-- Row 216: 赵昱棋Yuki @ 麒麟13班
UPDATE v2.students
SET phone = '13765006000',
    primary_guardian_type = '妈妈',
    parent_name = '姜蓓',
    school = '北师大附小',
    address = NULL,
    id_card = '520103201401291222',
    updated_at = NOW()
WHERE name = '赵昱棋Yuki'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵昱棋Yuki', 73, '13765006000', '妈妈', '姜蓓', '北师大附小', NULL, '520103201401291222', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵昱棋Yuki' AND class_id = 73
);

-- Row 217: 况若汐Zola @ 凤凰28班
UPDATE v2.students
SET phone = '15285110441',
    primary_guardian_type = '妈妈',
    parent_name = '冯德平',
    school = '第八幼儿园',
    address = '文昌北路',
    id_card = '50103201806281827',
    updated_at = NOW()
WHERE name = '况若汐Zola'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '况若汐Zola', 43, '15285110441', '妈妈', '冯德平', '第八幼儿园', '文昌北路', '50103201806281827', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '况若汐Zola' AND class_id = 43
);

-- Row 218: 姬芸锦Yulia @ 凤凰28班
UPDATE v2.students
SET phone = '17785605373',
    primary_guardian_type = '妈妈',
    parent_name = '辛柳金',
    school = '北京市朝阳区实验小学',
    address = '南明区保利凤凰湾',
    id_card = '17785605373',
    updated_at = NOW()
WHERE name = '姬芸锦Yulia'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '姬芸锦Yulia', 43, '17785605373', '妈妈', '辛柳金', '北京市朝阳区实验小学', '南明区保利凤凰湾', '17785605373', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '姬芸锦Yulia' AND class_id = 43
);

-- Row 219: 刘舒窈Lusinda @ 凤凰28班
UPDATE v2.students
SET phone = '15180890328',
    primary_guardian_type = '妈妈',
    parent_name = '徐利芳',
    school = '南明小学',
    address = '南明区盛世花城',
    id_card = '520102201702091244',
    updated_at = NOW()
WHERE name = '刘舒窈Lusinda'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘舒窈Lusinda', 43, '15180890328', '妈妈', '徐利芳', '南明小学', '南明区盛世花城', '520102201702091244', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘舒窈Lusinda' AND class_id = 43
);

-- Row 220: 胡钦雄Louis @ 凤凰28班
UPDATE v2.students
SET phone = '13608536999',
    primary_guardian_type = '妈妈',
    parent_name = '楼丽',
    school = '贵阳市第三幼儿园',
    address = '富水南路恒丰一品',
    id_card = '520102201806291611',
    updated_at = NOW()
WHERE name = '胡钦雄Louis'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡钦雄Louis', 43, '13608536999', '妈妈', '楼丽', '贵阳市第三幼儿园', '富水南路恒丰一品', '520102201806291611', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡钦雄Louis' AND class_id = 43
);

-- Row 221: 牟超然Kipper @ 凤凰28班
UPDATE v2.students
SET phone = '18300880085',
    primary_guardian_type = '妈妈',
    parent_name = '颜璐',
    school = '第三幼儿园',
    address = NULL,
    id_card = '520102201710091616',
    updated_at = NOW()
WHERE name = '牟超然Kipper'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '牟超然Kipper', 43, '18300880085', '妈妈', '颜璐', '第三幼儿园', NULL, '520102201710091616', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '牟超然Kipper' AND class_id = 43
);

-- Row 222: 罗梓涵Hyman @ 凤凰28班
UPDATE v2.students
SET phone = '18786057826',
    primary_guardian_type = '妈妈',
    parent_name = '何霞',
    school = '南明区尚义路小学',
    address = '南明区太慈桥',
    id_card = '520103201705240416',
    updated_at = NOW()
WHERE name = '罗梓涵Hyman'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗梓涵Hyman', 43, '18786057826', '妈妈', '何霞', '南明区尚义路小学', '南明区太慈桥', '520103201705240416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗梓涵Hyman' AND class_id = 43
);

-- Row 223: 任庆丰Felix @ 凤凰28班
UPDATE v2.students
SET phone = '13984168161',
    primary_guardian_type = '妈妈',
    parent_name = '尹亚琴',
    school = '乌当区实验小学',
    address = '乌当区保利紫薇郡',
    id_card = '520112201608043812',
    updated_at = NOW()
WHERE name = '任庆丰Felix'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '任庆丰Felix', 43, '13984168161', '妈妈', '尹亚琴', '乌当区实验小学', '乌当区保利紫薇郡', '520112201608043812', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '任庆丰Felix' AND class_id = 43
);

-- Row 224: 涂煜桐Noy @ 凤凰28班
UPDATE v2.students
SET phone = '13809400133',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '白云区爱迪幼儿园',
    address = '中天托斯卡纳',
    id_card = '520103201711210440',
    updated_at = NOW()
WHERE name = '涂煜桐Noy'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '涂煜桐Noy', 43, '13809400133', '妈妈', NULL, '白云区爱迪幼儿园', '中天托斯卡纳', '520103201711210440', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '涂煜桐Noy' AND class_id = 43
);

-- Row 225: 黄沐晨Orange @ 凤凰28班
UPDATE v2.students
SET phone = '15085962615',
    primary_guardian_type = '妈妈',
    parent_name = '陈洪英',
    school = '省府路小学',
    address = '云岩区正新街',
    id_card = '520103201704036413',
    updated_at = NOW()
WHERE name = '黄沐晨Orange'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄沐晨Orange', 43, '15085962615', '妈妈', '陈洪英', '省府路小学', '云岩区正新街', '520103201704036413', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄沐晨Orange' AND class_id = 43
);

-- Row 226: 金奕燊Eason @ 凤凰28班
UPDATE v2.students
SET phone = '18685690932',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = '520115201804251239',
    updated_at = NOW()
WHERE name = '金奕燊Eason'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '金奕燊Eason', 43, '18685690932', '妈妈', NULL, NULL, NULL, '520115201804251239', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '金奕燊Eason' AND class_id = 43
);

-- Row 227: 周文煜Anna @ 麒麟13班
UPDATE v2.students
SET phone = '13985414450',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '新世界国际学校',
    address = '华润',
    id_card = '520181201309305221',
    updated_at = NOW()
WHERE name = '周文煜Anna'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周文煜Anna', 73, '13985414450', '妈妈', NULL, '新世界国际学校', '华润', '520181201309305221', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周文煜Anna' AND class_id = 73
);

-- Row 228: 仇晟辰Given @ 凤凰28班
UPDATE v2.students
SET phone = '13984011121',
    primary_guardian_type = '妈妈',
    parent_name = '周长英',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '仇晟辰Given'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '仇晟辰Given', 43, '13984011121', '妈妈', '周长英', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '仇晟辰Given' AND class_id = 43
);

-- Row 229: 饶芷瑞Connie @ 麒麟13班
UPDATE v2.students
SET phone = '13985548226',
    primary_guardian_type = '妈妈',
    parent_name = '冯梅',
    school = NULL,
    address = '观山湖新世界御湖',
    id_card = '52010320130919282X',
    updated_at = NOW()
WHERE name = '饶芷瑞Connie'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '饶芷瑞Connie', 73, '13985548226', '妈妈', '冯梅', NULL, '观山湖新世界御湖', '52010320130919282X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '饶芷瑞Connie' AND class_id = 73
);

-- Row 230: 曹语哲Ethan @ 凤凰28班
UPDATE v2.students
SET phone = '13885075664',
    primary_guardian_type = '妈妈',
    parent_name = '杨露',
    school = '林泉小学',
    address = NULL,
    id_card = '510103201609065611',
    updated_at = NOW()
WHERE name = '曹语哲Ethan'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹语哲Ethan', 43, '13885075664', '妈妈', '杨露', '林泉小学', NULL, '510103201609065611', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹语哲Ethan' AND class_id = 43
);

-- Row 231: 雷靓秋Rachel @ 麒麟13班
UPDATE v2.students
SET phone = '15885033557',
    primary_guardian_type = '妈妈',
    parent_name = '张兰',
    school = '实验二小',
    address = '云岩区',
    id_card = '520103201210276740',
    updated_at = NOW()
WHERE name = '雷靓秋Rachel'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '雷靓秋Rachel', 73, '15885033557', '妈妈', '张兰', '实验二小', '云岩区', '520103201210276740', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '雷靓秋Rachel' AND class_id = 73
);

-- Row 232: 罗雅玥Amy @ 麒麟13班
UPDATE v2.students
SET phone = '18985117873',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '实验小学',
    address = '保利云山',
    id_card = '520103201510214824',
    updated_at = NOW()
WHERE name = '罗雅玥Amy'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗雅玥Amy', 73, '18985117873', NULL, NULL, '实验小学', '保利云山', '520103201510214824', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗雅玥Amy' AND class_id = 73
);

-- Row 233: 蔡宜辰Esther @ 凤凰28班
UPDATE v2.students
SET phone = '18185106019',
    primary_guardian_type = '妈妈',
    parent_name = '马丽',
    school = '贵阳市第五幼儿园',
    address = '金宇紫林广场',
    id_card = '520103201801075246',
    updated_at = NOW()
WHERE name = '蔡宜辰Esther'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蔡宜辰Esther', 43, '18185106019', '妈妈', '马丽', '贵阳市第五幼儿园', '金宇紫林广场', '520103201801075246', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蔡宜辰Esther' AND class_id = 43
);

-- Row 234: 刘睿康Arnet @ 麒麟13班
UPDATE v2.students
SET phone = '13984128385',
    primary_guardian_type = '妈妈',
    parent_name = '袁建英',
    school = '华麟小学',
    address = '中天世纪新城',
    id_card = '520103201311252019',
    updated_at = NOW()
WHERE name = '刘睿康Arnet'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘睿康Arnet', 73, '13984128385', '妈妈', '袁建英', '华麟小学', '中天世纪新城', '520103201311252019', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘睿康Arnet' AND class_id = 73
);

-- Row 235: 汪一诚Alex @ 麒麟13班
UPDATE v2.students
SET phone = '15285625202',
    primary_guardian_type = '妈妈',
    parent_name = '张凯琳',
    school = '芳草地国际学校',
    address = '未来方舟',
    id_card = '520112201507254215',
    updated_at = NOW()
WHERE name = '汪一诚Alex'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汪一诚Alex', 73, '15285625202', '妈妈', '张凯琳', '芳草地国际学校', '未来方舟', '520112201507254215', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汪一诚Alex' AND class_id = 73
);

-- Row 236: 郭裕宸Lucas @ 凤凰28班
UPDATE v2.students
SET phone = '18985543520',
    primary_guardian_type = '妈妈',
    parent_name = '浦世兰',
    school = '南明区幼儿园',
    address = '市南路',
    id_card = '52010220171105127X',
    updated_at = NOW()
WHERE name = '郭裕宸Lucas'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭裕宸Lucas', 43, '18985543520', '妈妈', '浦世兰', '南明区幼儿园', '市南路', '52010220171105127X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭裕宸Lucas' AND class_id = 43
);

-- Row 237: 宋铠迪Unicorn @ 麒麟13班
UPDATE v2.students
SET phone = '18685040219',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '华东师范大学附属贵阳学校',
    address = '南浦大厦',
    id_card = '520102201605081220',
    updated_at = NOW()
WHERE name = '宋铠迪Unicorn'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋铠迪Unicorn', 73, '18685040219', '妈妈', NULL, '华东师范大学附属贵阳学校', '南浦大厦', '520102201605081220', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋铠迪Unicorn' AND class_id = 73
);

-- Row 238: 杨诺西Cherry @ 麒麟13班
UPDATE v2.students
SET phone = '13765020731',
    primary_guardian_type = NULL,
    parent_name = '冯宁利',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨诺西Cherry'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨诺西Cherry', 73, '13765020731', NULL, '冯宁利', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨诺西Cherry' AND class_id = 73
);

-- Row 239: 舒子琪Meggie @ 麒麟13班
UPDATE v2.students
SET phone = '18685010255',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '南明小学',
    address = '宝山南路',
    id_card = '520103201408206721',
    updated_at = NOW()
WHERE name = '舒子琪Meggie'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '舒子琪Meggie', 73, '18685010255', NULL, NULL, '南明小学', '宝山南路', '520103201408206721', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '舒子琪Meggie' AND class_id = 73
);

-- Row 240: 杨正淏Ryan @ 麒麟13班
UPDATE v2.students
SET phone = '13608570165',
    primary_guardian_type = NULL,
    parent_name = '胡方芳',
    school = '省府路小学',
    address = '陕西路',
    id_card = '520103201506284416',
    updated_at = NOW()
WHERE name = '杨正淏Ryan'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨正淏Ryan', 73, '13608570165', NULL, '胡方芳', '省府路小学', '陕西路', '520103201506284416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨正淏Ryan' AND class_id = 73
);

-- Row 241: 李芷睿Vicky @ 麒麟13班
UPDATE v2.students
SET phone = '18786662666',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '中天北京小学',
    address = '未来方舟',
    id_card = '520382201407290024',
    updated_at = NOW()
WHERE name = '李芷睿Vicky'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李芷睿Vicky', 73, '18786662666', NULL, NULL, '中天北京小学', '未来方舟', '520382201407290024', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李芷睿Vicky' AND class_id = 73
);

-- Row 242: 袁艺溪Amy Y @ 麒麟13班
UPDATE v2.students
SET phone = '18166757805',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '新力学校',
    address = '乌当区',
    id_card = '520112201407182023',
    updated_at = NOW()
WHERE name = '袁艺溪Amy Y'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁艺溪Amy Y', 73, '18166757805', NULL, NULL, '新力学校', '乌当区', '520112201407182023', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁艺溪Amy Y' AND class_id = 73
);

-- Row 243: 陈皓燃Shawn @ 麒麟13班
UPDATE v2.students
SET phone = '13595015139',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈皓燃Shawn'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈皓燃Shawn', 73, '13595015139', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈皓燃Shawn' AND class_id = 73
);

-- Row 244: 胡夏苒Gene @ 麒麟13班
UPDATE v2.students
SET phone = '13032277737',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = '520103201407274810',
    updated_at = NOW()
WHERE name = '胡夏苒Gene'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡夏苒Gene', 73, '13032277737', '妈妈', NULL, NULL, NULL, '520103201407274810', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡夏苒Gene' AND class_id = 73
);

-- Row 245: 陈睿涵Bruce @ 麒麟13班
UPDATE v2.students
SET phone = '18302625615',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈睿涵Bruce'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈睿涵Bruce', 73, '18302625615', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈睿涵Bruce' AND class_id = 73
);

-- Row 246: 陈姝涵Alicia @ 麒麟13班
UPDATE v2.students
SET phone = '18302625615',
    primary_guardian_type = '妈妈',
    parent_name = '李牧子',
    school = '南明小学',
    address = '盛世花城',
    id_card = '520102201405131625',
    updated_at = NOW()
WHERE name = '陈姝涵Alicia'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈姝涵Alicia', 73, '18302625615', '妈妈', '李牧子', '南明小学', '盛世花城', '520102201405131625', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈姝涵Alicia' AND class_id = 73
);

-- Row 247: 陈子昂Chiristian @ 麒麟13班
UPDATE v2.students
SET phone = '13639255666',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈子昂Chiristian'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈子昂Chiristian', 73, '13639255666', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈子昂Chiristian' AND class_id = 73
);

-- Row 248: 陈麟宇Albert @ 麒麟13班
UPDATE v2.students
SET phone = '18198571357',
    primary_guardian_type = NULL,
    parent_name = '李齐涛',
    school = '华麟小学',
    address = '中天世纪新城六组团',
    id_card = '520114201310180438',
    updated_at = NOW()
WHERE name = '陈麟宇Albert'
  AND class_id = 73;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈麟宇Albert', 73, '18198571357', NULL, '李齐涛', '华麟小学', '中天世纪新城六组团', '520114201310180438', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈麟宇Albert' AND class_id = 73
);

-- Row 275: 杨芯蕊Angel @ 麒麟17班
UPDATE v2.students
SET phone = '13648506846',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '云岩四小',
    address = '贵阳市花果园W2区',
    id_card = '522731201505216147',
    updated_at = NOW()
WHERE name = '杨芯蕊Angel'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨芯蕊Angel', 77, '13648506846', '妈妈', NULL, '云岩四小', '贵阳市花果园W2区', '522731201505216147', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨芯蕊Angel' AND class_id = 77
);

-- Row 276: 周易峰Mike @ 麒麟17班
UPDATE v2.students
SET phone = '18275057637',
    primary_guardian_type = '妈妈',
    parent_name = '罗显暇',
    school = '清镇市红枫三小',
    address = '清镇市云梦小镇',
    id_card = '520181201411272112',
    updated_at = NOW()
WHERE name = '周易峰Mike'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周易峰Mike', 77, '18275057637', '妈妈', '罗显暇', '清镇市红枫三小', '清镇市云梦小镇', '520181201411272112', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周易峰Mike' AND class_id = 77
);

-- Row 277: 周书扬Bella @ 麒麟17班
UPDATE v2.students
SET phone = '13985111999',
    primary_guardian_type = '妈妈',
    parent_name = '程玲',
    school = '华东师范大学贵阳附属学校',
    address = '金阳南路睿力上城',
    id_card = '520102201503151224',
    updated_at = NOW()
WHERE name = '周书扬Bella'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周书扬Bella', 77, '13985111999', '妈妈', '程玲', '华东师范大学贵阳附属学校', '金阳南路睿力上城', '520102201503151224', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周书扬Bella' AND class_id = 77
);

-- Row 278: 张玉桐Angie @ 麒麟17班
UPDATE v2.students
SET phone = '13985566941',
    primary_guardian_type = '妈妈',
    parent_name = '周利还',
    school = '实验小学',
    address = '云岩区中华北路测绘二院',
    id_card = '5201122016022553624',
    updated_at = NOW()
WHERE name = '张玉桐Angie'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张玉桐Angie', 77, '13985566941', '妈妈', '周利还', '实验小学', '云岩区中华北路测绘二院', '5201122016022553624', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张玉桐Angie' AND class_id = 77
);

-- Row 279: 严家霁Jessica @ 麒麟17班
UPDATE v2.students
SET phone = '15519572107',
    primary_guardian_type = '爸爸',
    parent_name = '严兴诚',
    school = '贵阳市实验小学',
    address = '贵阳市威清路',
    id_card = '520103201505132824',
    updated_at = NOW()
WHERE name = '严家霁Jessica'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '严家霁Jessica', 77, '15519572107', '爸爸', '严兴诚', '贵阳市实验小学', '贵阳市威清路', '520103201505132824', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '严家霁Jessica' AND class_id = 77
);

-- Row 280: 赵珺妍Junian @ 麒麟17班
UPDATE v2.students
SET phone = '18198279570',
    primary_guardian_type = '妈妈',
    parent_name = '赵娴',
    school = '省府路小学',
    address = '黔灵东路',
    id_card = '520103201407270828',
    updated_at = NOW()
WHERE name = '赵珺妍Junian'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵珺妍Junian', 77, '18198279570', '妈妈', '赵娴', '省府路小学', '黔灵东路', '520103201407270828', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵珺妍Junian' AND class_id = 77
);

-- Row 281: 张辰予Jenny @ 麒麟17班
UPDATE v2.students
SET phone = '15851076589',
    primary_guardian_type = '妈妈',
    parent_name = '丁振梅',
    school = '省府路小学',
    address = '宏业阳光佳居',
    id_card = '320902201512100026',
    updated_at = NOW()
WHERE name = '张辰予Jenny'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张辰予Jenny', 77, '15851076589', '妈妈', '丁振梅', '省府路小学', '宏业阳光佳居', '320902201512100026', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张辰予Jenny' AND class_id = 77
);

-- Row 282: 帅坤灵Bella S @ 麒麟17班
UPDATE v2.students
SET phone = '18984838663',
    primary_guardian_type = '妈妈',
    parent_name = '刘杉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '帅坤灵Bella S'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '帅坤灵Bella S', 77, '18984838663', '妈妈', '刘杉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '帅坤灵Bella S' AND class_id = 77
);

-- Row 283: 刘振宇Jacky @ 麒麟17班
UPDATE v2.students
SET phone = '18084479358',
    primary_guardian_type = '妈妈',
    parent_name = '徐丽飞',
    school = '贵定一小',
    address = '贵定县',
    id_card = '522723201412251111',
    updated_at = NOW()
WHERE name = '刘振宇Jacky'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘振宇Jacky', 77, '18084479358', '妈妈', '徐丽飞', '贵定一小', '贵定县', '522723201412251111', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘振宇Jacky' AND class_id = 77
);

-- Row 284: 吴培妍Karen @ 麒麟17班
UPDATE v2.students
SET phone = '18085086703',
    primary_guardian_type = '妈妈',
    parent_name = '冯杨',
    school = '花五小',
    address = '花果园',
    id_card = '522328201507280249',
    updated_at = NOW()
WHERE name = '吴培妍Karen'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴培妍Karen', 77, '18085086703', '妈妈', '冯杨', '花五小', '花果园', '522328201507280249', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴培妍Karen' AND class_id = 77
);

-- Row 285: 王云迹Richard @ 麒麟17班
UPDATE v2.students
SET phone = '18985546607',
    primary_guardian_type = '妈妈',
    parent_name = '陈佳',
    school = '实验二小天誉城分校',
    address = '天誉城',
    id_card = '520103201412254814',
    updated_at = NOW()
WHERE name = '王云迹Richard'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王云迹Richard', 77, '18985546607', '妈妈', '陈佳', '实验二小天誉城分校', '天誉城', '520103201412254814', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王云迹Richard' AND class_id = 77
);

-- Row 286: 李芊仪Qilaya @ 麒麟17班
UPDATE v2.students
SET phone = '18785076618',
    primary_guardian_type = '妈妈',
    parent_name = '张露',
    school = '花一实',
    address = '小河黔江路',
    id_card = '52010320140826012X',
    updated_at = NOW()
WHERE name = '李芊仪Qilaya'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李芊仪Qilaya', 77, '18785076618', '妈妈', '张露', '花一实', '小河黔江路', '52010320140826012X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李芊仪Qilaya' AND class_id = 77
);

-- Row 287: 韦瑾浩Max @ 麒麟17班
UPDATE v2.students
SET phone = '13765144037',
    primary_guardian_type = '妈妈',
    parent_name = '朱虹',
    school = '尚义路小学',
    address = '方源广场',
    id_card = '520102201605213019',
    updated_at = NOW()
WHERE name = '韦瑾浩Max'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韦瑾浩Max', 77, '13765144037', '妈妈', '朱虹', '尚义路小学', '方源广场', '520102201605213019', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韦瑾浩Max' AND class_id = 77
);

-- Row 288: 王韩黔辉Frank @ 麒麟17班
UPDATE v2.students
SET phone = '13608578400',
    primary_guardian_type = '妈妈',
    parent_name = '韩祥君',
    school = '普瑞学校',
    address = '华润悦府',
    id_card = '520115201601072011',
    updated_at = NOW()
WHERE name = '王韩黔辉Frank'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王韩黔辉Frank', 77, '13608578400', '妈妈', '韩祥君', '普瑞学校', '华润悦府', '520115201601072011', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王韩黔辉Frank' AND class_id = 77
);

-- Row 289: 王云琪Rachel @ 麒麟17班
UPDATE v2.students
SET phone = '18985036836',
    primary_guardian_type = '妈妈',
    parent_name = '陈佳',
    school = '实验二小',
    address = '天誉城',
    id_card = '520103201412254822',
    updated_at = NOW()
WHERE name = '王云琪Rachel'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王云琪Rachel', 77, '18985036836', '妈妈', '陈佳', '实验二小', '天誉城', '520103201412254822', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王云琪Rachel' AND class_id = 77
);

-- Row 290: 吴昱含Seven @ 麒麟17班
UPDATE v2.students
SET phone = '18685101311',
    primary_guardian_type = '妈妈',
    parent_name = '邹沁钰',
    school = '实验二小天誉分校',
    address = '云岩区天誉城',
    id_card = '520103201510054816',
    updated_at = NOW()
WHERE name = '吴昱含Seven'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴昱含Seven', 77, '18685101311', '妈妈', '邹沁钰', '实验二小天誉分校', '云岩区天誉城', '520103201510054816', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴昱含Seven' AND class_id = 77
);

-- Row 291: 李业扬Charles @ 麒麟17班
UPDATE v2.students
SET phone = '18153110449',
    primary_guardian_type = '妈妈',
    parent_name = '杨珍',
    school = '贵阳市实验小学',
    address = '观山东路天誉城',
    id_card = '520103201503104838',
    updated_at = NOW()
WHERE name = '李业扬Charles'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李业扬Charles', 77, '18153110449', '妈妈', '杨珍', '贵阳市实验小学', '观山东路天誉城', '520103201503104838', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李业扬Charles' AND class_id = 77
);

-- Row 292: 江欣凝Shirley @ 麒麟17班
UPDATE v2.students
SET phone = '13312225055',
    primary_guardian_type = '妈妈',
    parent_name = '李立',
    school = '贵阳市实验小学',
    address = '云岩区银海元隆',
    id_card = '520114201602101826',
    updated_at = NOW()
WHERE name = '江欣凝Shirley'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '江欣凝Shirley', 77, '13312225055', '妈妈', '李立', '贵阳市实验小学', '云岩区银海元隆', '520114201602101826', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '江欣凝Shirley' AND class_id = 77
);

-- Row 293: 杨博恺Borg @ 麒麟17班
UPDATE v2.students
SET phone = '13511930611',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '华麟双龙校区',
    address = NULL,
    id_card = '520102201703141637',
    updated_at = NOW()
WHERE name = '杨博恺Borg'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨博恺Borg', 77, '13511930611', NULL, NULL, '华麟双龙校区', NULL, '520102201703141637', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨博恺Borg' AND class_id = 77
);

-- Row 294: 何勇贤Spencer @ 麒麟17班
UPDATE v2.students
SET phone = '13984130559',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '清镇犁倭幼儿园',
    address = '清镇市犁倭中学',
    id_card = '520181201705045230',
    updated_at = NOW()
WHERE name = '何勇贤Spencer'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何勇贤Spencer', 77, '13984130559', NULL, NULL, '清镇犁倭幼儿园', '清镇市犁倭中学', '520181201705045230', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何勇贤Spencer' AND class_id = 77
);

-- Row 295: 勾瑾熙Jessie @ 麒麟17班
UPDATE v2.students
SET phone = '18786067057',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '西南大学贵阳实验学校',
    address = '观山湖区融创樾府',
    id_card = '520325201511203421',
    updated_at = NOW()
WHERE name = '勾瑾熙Jessie'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '勾瑾熙Jessie', 77, '18786067057', NULL, NULL, '西南大学贵阳实验学校', '观山湖区融创樾府', '520325201511203421', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '勾瑾熙Jessie' AND class_id = 77
);

-- Row 296: 邓嘉懿Donna @ 麒麟17班
UPDATE v2.students
SET phone = '18685417949',
    primary_guardian_type = '妈妈',
    parent_name = '汪静',
    school = '新东门小学',
    address = '宝山北路',
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邓嘉懿Donna'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邓嘉懿Donna', 77, '18685417949', '妈妈', '汪静', '新东门小学', '宝山北路', NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邓嘉懿Donna' AND class_id = 77
);

-- Row 297: 冯徐跃Shine @ 麒麟17班
UPDATE v2.students
SET phone = '15286009925',
    primary_guardian_type = '妈妈',
    parent_name = '徐金花',
    school = '贵师大贵安附属小学',
    address = '花溪碧桂园印象花溪',
    id_card = '500109201409132116',
    updated_at = NOW()
WHERE name = '冯徐跃Shine'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '冯徐跃Shine', 77, '15286009925', '妈妈', '徐金花', '贵师大贵安附属小学', '花溪碧桂园印象花溪', '500109201409132116', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '冯徐跃Shine' AND class_id = 77
);

-- Row 298: 戴语汐Siboo @ 麒麟17班
UPDATE v2.students
SET phone = '18652853366',
    primary_guardian_type = '妈妈',
    parent_name = '罗艳梅',
    school = '省府路小学',
    address = '北京西路金龙星岛国际',
    id_card = '320106201608243668',
    updated_at = NOW()
WHERE name = '戴语汐Siboo'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '戴语汐Siboo', 77, '18652853366', '妈妈', '罗艳梅', '省府路小学', '北京西路金龙星岛国际', '320106201608243668', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '戴语汐Siboo' AND class_id = 77
);

-- Row 299: 范子诚Allen @ 麒麟17班
UPDATE v2.students
SET phone = '18212006601',
    primary_guardian_type = '妈妈',
    parent_name = '范安然',
    school = '实验二小',
    address = '云岩区',
    id_card = '52010320150702523X',
    updated_at = NOW()
WHERE name = '范子诚Allen'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '范子诚Allen', 77, '18212006601', '妈妈', '范安然', '实验二小', '云岩区', '52010320150702523X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '范子诚Allen' AND class_id = 77
);

-- Row 300: 周熹乐 Rika @ 凤凰50班
UPDATE v2.students
SET phone = '13984897276',
    primary_guardian_type = '妈妈',
    parent_name = '旷芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周熹乐 Rika'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周熹乐 Rika', 65, '13984897276', '妈妈', '旷芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周熹乐 Rika' AND class_id = 65
);

-- Row 301: 左浩辰 Charlie @ 凤凰50班
UPDATE v2.students
SET phone = '15985167190',
    primary_guardian_type = '妈妈',
    parent_name = '张清',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '左浩辰 Charlie'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '左浩辰 Charlie', 65, '15985167190', '妈妈', '张清', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '左浩辰 Charlie' AND class_id = 65
);

-- Row 302: 邹凯伊 Mia @ 凤凰50班
UPDATE v2.students
SET phone = '18285093946',
    primary_guardian_type = '妈妈',
    parent_name = '杜春兰',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邹凯伊 Mia'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹凯伊 Mia', 65, '18285093946', '妈妈', '杜春兰', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹凯伊 Mia' AND class_id = 65
);

-- Row 303: 翁艺宁 Elaine @ 凤凰50班
UPDATE v2.students
SET phone = '18302616367',
    primary_guardian_type = '妈妈',
    parent_name = '胥芳萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '翁艺宁 Elaine'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '翁艺宁 Elaine', 65, '18302616367', '妈妈', '胥芳萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '翁艺宁 Elaine' AND class_id = 65
);

-- Row 304: 吴俊逸 Nathan @ 凤凰50班
UPDATE v2.students
SET phone = '13595451150',
    primary_guardian_type = '妈妈',
    parent_name = '罗霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴俊逸 Nathan'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴俊逸 Nathan', 65, '13595451150', '妈妈', '罗霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴俊逸 Nathan' AND class_id = 65
);

-- Row 305: 严梓墨 Daniel @ 凤凰50班
UPDATE v2.students
SET phone = '13984844939',
    primary_guardian_type = '妈妈',
    parent_name = '严应军',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '严梓墨 Daniel'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '严梓墨 Daniel', 65, '13984844939', '妈妈', '严应军', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '严梓墨 Daniel' AND class_id = 65
);

-- Row 306: 王烁程 Bean @ 凤凰50班
UPDATE v2.students
SET phone = '18685123911',
    primary_guardian_type = '妈妈',
    parent_name = '曾应遐',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王烁程 Bean'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王烁程 Bean', 65, '18685123911', '妈妈', '曾应遐', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王烁程 Bean' AND class_id = 65
);

-- Row 307: 王熠婷 Sophia @ 凤凰50班
UPDATE v2.students
SET phone = '18685058262',
    primary_guardian_type = '妈妈',
    parent_name = '田雨',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王熠婷 Sophia'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王熠婷 Sophia', 65, '18685058262', '妈妈', '田雨', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王熠婷 Sophia' AND class_id = 65
);

-- Row 308: 王熠然 Tyler @ 凤凰50班
UPDATE v2.students
SET phone = '18685058262',
    primary_guardian_type = '妈妈',
    parent_name = '田雨',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王熠然 Tyler'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王熠然 Tyler', 65, '18685058262', '妈妈', '田雨', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王熠然 Tyler' AND class_id = 65
);

-- Row 309: 吴悦心 Balla @ 凤凰50班
UPDATE v2.students
SET phone = '18300884362',
    primary_guardian_type = '妈妈',
    parent_name = '吴磊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴悦心 Balla'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴悦心 Balla', 65, '18300884362', '妈妈', '吴磊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴悦心 Balla' AND class_id = 65
);

-- Row 310: 张书淇 Steven @ 凤凰50班
UPDATE v2.students
SET phone = '18708644588',
    primary_guardian_type = '妈妈',
    parent_name = '杜文英',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张书淇 Steven'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张书淇 Steven', 65, '18708644588', '妈妈', '杜文英', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张书淇 Steven' AND class_id = 65
);

-- Row 311: 穆嘉阳 Lucian @ 凤凰50班
UPDATE v2.students
SET phone = '15285113755',
    primary_guardian_type = '妈妈',
    parent_name = '蒋珍妮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '穆嘉阳 Lucian'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '穆嘉阳 Lucian', 65, '15285113755', '妈妈', '蒋珍妮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '穆嘉阳 Lucian' AND class_id = 65
);

-- Row 312: 汤芯悦 Cynthia @ 凤凰50班
UPDATE v2.students
SET phone = '18984843305',
    primary_guardian_type = '妈妈',
    parent_name = '杨春',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '汤芯悦 Cynthia'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汤芯悦 Cynthia', 65, '18984843305', '妈妈', '杨春', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汤芯悦 Cynthia' AND class_id = 65
);

-- Row 313: 路家乐 Leo @ 凤凰50班
UPDATE v2.students
SET phone = '13639006655',
    primary_guardian_type = '妈妈',
    parent_name = '单诗语',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '路家乐 Leo'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '路家乐 Leo', 65, '13639006655', '妈妈', '单诗语', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '路家乐 Leo' AND class_id = 65
);

-- Row 314: 王梦汶曦 Doria @ 凤凰50班
UPDATE v2.students
SET phone = '18275005267',
    primary_guardian_type = '妈妈',
    parent_name = '涂俊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王梦汶曦 Doria'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王梦汶曦 Doria', 65, '18275005267', '妈妈', '涂俊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王梦汶曦 Doria' AND class_id = 65
);

-- Row 315: 梁语珊Candy @ 凤凰50班
UPDATE v2.students
SET phone = '18985187358',
    primary_guardian_type = '妈妈',
    parent_name = '常',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '梁语珊Candy'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '梁语珊Candy', 65, '18985187358', '妈妈', '常', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '梁语珊Candy' AND class_id = 65
);

-- Row 316: 胡善渊 Henry @ 凤凰50班
UPDATE v2.students
SET phone = '18985042363',
    primary_guardian_type = '妈妈',
    parent_name = '周朝芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡善渊 Henry'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡善渊 Henry', 65, '18985042363', '妈妈', '周朝芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡善渊 Henry' AND class_id = 65
);

-- Row 317: 李舟洲 Jojo @ 凤凰50班
UPDATE v2.students
SET phone = '13984861351',
    primary_guardian_type = '妈妈',
    parent_name = '周丽佳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李舟洲 Jojo'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李舟洲 Jojo', 65, '13984861351', '妈妈', '周丽佳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李舟洲 Jojo' AND class_id = 65
);

-- Row 318: 范梓萱 Amy @ 凤凰50班
UPDATE v2.students
SET phone = '15285121314',
    primary_guardian_type = '爸爸',
    parent_name = '范超群',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '范梓萱 Amy'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '范梓萱 Amy', 65, '15285121314', '爸爸', '范超群', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '范梓萱 Amy' AND class_id = 65
);

-- Row 319: 贺国策 Aaron @ 凤凰50班
UPDATE v2.students
SET phone = '18985857368',
    primary_guardian_type = '妈妈',
    parent_name = '余海游',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '贺国策 Aaron'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '贺国策 Aaron', 65, '18985857368', '妈妈', '余海游', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '贺国策 Aaron' AND class_id = 65
);

-- Row 320: 黄亦好 Yvonne @ 凤凰50班
UPDATE v2.students
SET phone = '18585624824',
    primary_guardian_type = '妈妈',
    parent_name = '倪霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄亦好 Yvonne'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄亦好 Yvonne', 65, '18585624824', '妈妈', '倪霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄亦好 Yvonne' AND class_id = 65
);

-- Row 321: 胡喆文 Jason @ 凤凰50班
UPDATE v2.students
SET phone = '18798037792',
    primary_guardian_type = '妈妈',
    parent_name = '文雯',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡喆文 Jason'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡喆文 Jason', 65, '18798037792', '妈妈', '文雯', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡喆文 Jason' AND class_id = 65
);

-- Row 322: 冯寄壹 Arthur @ 凤凰50班
UPDATE v2.students
SET phone = '13984849272',
    primary_guardian_type = '妈妈',
    parent_name = '冯焕奎',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '冯寄壹 Arthur'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '冯寄壹 Arthur', 65, '13984849272', '妈妈', '冯焕奎', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '冯寄壹 Arthur' AND class_id = 65
);

-- Row 323: 于林子芯 Kelly @ 凤凰29班
UPDATE v2.students
SET phone = '13885100267',
    primary_guardian_type = '妈妈',
    parent_name = '杨媛',
    school = '花溪小学',
    address = '花溪',
    id_card = '520111201605185827',
    updated_at = NOW()
WHERE name = '于林子芯 Kelly'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '于林子芯 Kelly', 44, '13885100267', '妈妈', '杨媛', '花溪小学', '花溪', '520111201605185827', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '于林子芯 Kelly' AND class_id = 44
);

-- Row 324: 余筱骞 Eric Y @ 凤凰29班
UPDATE v2.students
SET phone = '18585007801',
    primary_guardian_type = '妈妈',
    parent_name = '柳青青',
    school = '贵阳市实验小学',
    address = '云岩区小石城',
    id_card = '520115201806120857',
    updated_at = NOW()
WHERE name = '余筱骞 Eric Y'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余筱骞 Eric Y', 44, '18585007801', '妈妈', '柳青青', '贵阳市实验小学', '云岩区小石城', '520115201806120857', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余筱骞 Eric Y' AND class_id = 44
);

-- Row 325: 于夕文 Sylvan @ 凤凰29班
UPDATE v2.students
SET phone = '15185166647',
    primary_guardian_type = '妈妈',
    parent_name = '王乙媛',
    school = '南明小学',
    address = '龙洞堡',
    id_card = '520103201805232843',
    updated_at = NOW()
WHERE name = '于夕文 Sylvan'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '于夕文 Sylvan', 44, '15185166647', '妈妈', '王乙媛', '南明小学', '龙洞堡', '520103201805232843', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '于夕文 Sylvan' AND class_id = 44
);

-- Row 326: 尹艺澄Easton @ 凤凰29班
UPDATE v2.students
SET phone = '18585140563',
    primary_guardian_type = '妈妈',
    parent_name = '吴羿锦',
    school = '南明小学',
    address = NULL,
    id_card = '520102201609255056',
    updated_at = NOW()
WHERE name = '尹艺澄Easton'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '尹艺澄Easton', 44, '18585140563', '妈妈', '吴羿锦', '南明小学', NULL, '520102201609255056', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '尹艺澄Easton' AND class_id = 44
);

-- Row 327: 杨奇臻Jack @ 凤凰29班
UPDATE v2.students
SET phone = '18786630705',
    primary_guardian_type = '爸爸',
    parent_name = '杨超',
    school = '后巢乡中心幼儿园',
    address = '碧桂园星作',
    id_card = '520102201807277416',
    updated_at = NOW()
WHERE name = '杨奇臻Jack'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨奇臻Jack', 44, '18786630705', '爸爸', '杨超', '后巢乡中心幼儿园', '碧桂园星作', '520102201807277416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨奇臻Jack' AND class_id = 44
);

-- Row 328: 邹轩睿Ryan @ 凤凰29班
UPDATE v2.students
SET phone = '18798721305',
    primary_guardian_type = '妈妈',
    parent_name = '郭惠',
    school = '可儿幼儿园',
    address = '盐务街梦想典城',
    id_card = '520103201712066719',
    updated_at = NOW()
WHERE name = '邹轩睿Ryan'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹轩睿Ryan', 44, '18798721305', '妈妈', '郭惠', '可儿幼儿园', '盐务街梦想典城', '520103201712066719', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹轩睿Ryan' AND class_id = 44
);

-- Row 329: 吴璟柠 Jojo @ 凤凰29班
UPDATE v2.students
SET phone = '13688511205',
    primary_guardian_type = '妈妈',
    parent_name = '查园园',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴璟柠 Jojo'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴璟柠 Jojo', 44, '13688511205', '妈妈', '查园园', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴璟柠 Jojo' AND class_id = 44
);

-- Row 330: 杨季衡Henry @ 凤凰29班
UPDATE v2.students
SET phone = '15285150241',
    primary_guardian_type = '妈妈',
    parent_name = '杨忠月',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨季衡Henry'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨季衡Henry', 44, '15285150241', '妈妈', '杨忠月', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨季衡Henry' AND class_id = 44
);

-- Row 331: 杨浚琦 Leo @ 凤凰29班
UPDATE v2.students
SET phone = '13688503603',
    primary_guardian_type = '妈妈',
    parent_name = '陈蓼寒',
    school = '新天一小',
    address = '新添寨',
    id_card = '520103201511226413',
    updated_at = NOW()
WHERE name = '杨浚琦 Leo'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨浚琦 Leo', 44, '13688503603', '妈妈', '陈蓼寒', '新天一小', '新添寨', '520103201511226413', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨浚琦 Leo' AND class_id = 44
);

-- Row 332: 陶士弘 Jasper @ 凤凰29班
UPDATE v2.students
SET phone = '17785125703',
    primary_guardian_type = '妈妈',
    parent_name = '吴琴',
    school = '花溪小学美的校区',
    address = '花溪区美的国宾府三期洋房',
    id_card = '520102201512092414',
    updated_at = NOW()
WHERE name = '陶士弘 Jasper'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陶士弘 Jasper', 44, '17785125703', '妈妈', '吴琴', '花溪小学美的校区', '花溪区美的国宾府三期洋房', '520102201512092414', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陶士弘 Jasper' AND class_id = 44
);

-- Row 333: 徐语彤 Judy @ 凤凰29班
UPDATE v2.students
SET phone = '18585412363',
    primary_guardian_type = '妈妈',
    parent_name = '胡晶晶',
    school = '华麟学校',
    address = '贵阳市云岩区东山壹号',
    id_card = '52010220170126502X',
    updated_at = NOW()
WHERE name = '徐语彤 Judy'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐语彤 Judy', 44, '18585412363', '妈妈', '胡晶晶', '华麟学校', '贵阳市云岩区东山壹号', '52010220170126502X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐语彤 Judy' AND class_id = 44
);

-- Row 334: 李亦恒Eason @ 凤凰29班
UPDATE v2.students
SET phone = '13984083422',
    primary_guardian_type = '妈妈',
    parent_name = '王莉丽',
    school = '实验小学',
    address = '云岩区中华北路',
    id_card = '520103201608240029',
    updated_at = NOW()
WHERE name = '李亦恒Eason'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李亦恒Eason', 44, '13984083422', '妈妈', '王莉丽', '实验小学', '云岩区中华北路', '520103201608240029', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李亦恒Eason' AND class_id = 44
);

-- Row 335: 孟芊羽Summer @ 凤凰29班
UPDATE v2.students
SET phone = '18985591170',
    primary_guardian_type = '妈妈',
    parent_name = '石实',
    school = '金宝幼儿园',
    address = '保利云山',
    id_card = '520103201808224849',
    updated_at = NOW()
WHERE name = '孟芊羽Summer'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孟芊羽Summer', 44, '18985591170', '妈妈', '石实', '金宝幼儿园', '保利云山', '520103201808224849', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孟芊羽Summer' AND class_id = 44
);

-- Row 336: 覃雪妍Billie @ 凤凰29班
UPDATE v2.students
SET phone = '18285055809',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '花蕾幼儿园',
    address = '观山湖区',
    id_card = '520102201801025023',
    updated_at = NOW()
WHERE name = '覃雪妍Billie'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '覃雪妍Billie', 44, '18285055809', '妈妈', NULL, '花蕾幼儿园', '观山湖区', '520102201801025023', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '覃雪妍Billie' AND class_id = 44
);

-- Row 337: 王妙莹Alina @ 凤凰29班
UPDATE v2.students
SET phone = '18302699105',
    primary_guardian_type = '妈妈',
    parent_name = '陈玉玲',
    school = '省府路小学',
    address = '云岩区正新街恒生大厦',
    id_card = '520103201610083227',
    updated_at = NOW()
WHERE name = '王妙莹Alina'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王妙莹Alina', 44, '18302699105', '妈妈', '陈玉玲', '省府路小学', '云岩区正新街恒生大厦', '520103201610083227', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王妙莹Alina' AND class_id = 44
);

-- Row 338: 王梓曈Elsa @ 凤凰29班
UPDATE v2.students
SET phone = '13618507465',
    primary_guardian_type = '妈妈',
    parent_name = '欧阳云燕',
    school = '观山湖区铭庭小学',
    address = '观山湖书香苑',
    id_card = '520103201701240240',
    updated_at = NOW()
WHERE name = '王梓曈Elsa'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王梓曈Elsa', 44, '13618507465', '妈妈', '欧阳云燕', '观山湖区铭庭小学', '观山湖书香苑', '520103201701240240', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王梓曈Elsa' AND class_id = 44
);

-- Row 339: 罗苏菡Sissy @ 凤凰29班
UPDATE v2.students
SET phone = '13312238511',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '南明',
    address = '盐务街',
    id_card = '520103201604258422',
    updated_at = NOW()
WHERE name = '罗苏菡Sissy'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗苏菡Sissy', 44, '13312238511', '妈妈', NULL, '南明', '盐务街', '520103201604258422', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗苏菡Sissy' AND class_id = 44
);

-- Row 340: 林雅琪 @ 凤凰29班
UPDATE v2.students
SET phone = '18785091507',
    primary_guardian_type = '妈妈',
    parent_name = '林伟明',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '林雅琪'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林雅琪', 44, '18785091507', '妈妈', '林伟明', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林雅琪' AND class_id = 44
);

-- Row 341: 李欣萍 Luna @ 凤凰29班
UPDATE v2.students
SET phone = '15185050610',
    primary_guardian_type = '妈妈',
    parent_name = '刘利玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李欣萍 Luna'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李欣萍 Luna', 44, '15185050610', '妈妈', '刘利玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李欣萍 Luna' AND class_id = 44
);

-- Row 342: 李沛哲Bob @ 凤凰29班
UPDATE v2.students
SET phone = '15285646646',
    primary_guardian_type = '爸爸',
    parent_name = '李龙',
    school = '贵阳市第二实验学校',
    address = '云岩区梦想典城',
    id_card = '520103201601038213',
    updated_at = NOW()
WHERE name = '李沛哲Bob'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李沛哲Bob', 44, '15285646646', '爸爸', '李龙', '贵阳市第二实验学校', '云岩区梦想典城', '520103201601038213', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李沛哲Bob' AND class_id = 44
);

-- Row 343: 爱新觉罗胤丞 Arthur @ 凤凰29班
UPDATE v2.students
SET phone = '18985503804',
    primary_guardian_type = '妈妈',
    parent_name = '罗玥伶',
    school = '省府路小学',
    address = '中央公园',
    id_card = '520103201509064013',
    updated_at = NOW()
WHERE name = '爱新觉罗胤丞 Arthur'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '爱新觉罗胤丞 Arthur', 44, '18985503804', '妈妈', '罗玥伶', '省府路小学', '中央公园', '520103201509064013', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '爱新觉罗胤丞 Arthur' AND class_id = 44
);

-- Row 344: 付文轩 Owen @ 凤凰29班
UPDATE v2.students
SET phone = '15285027091',
    primary_guardian_type = '妈妈',
    parent_name = '朱桂音',
    school = '观山湖第八中学',
    address = '观山湖区',
    id_card = '520102201704252419',
    updated_at = NOW()
WHERE name = '付文轩 Owen'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '付文轩 Owen', 44, '15285027091', '妈妈', '朱桂音', '观山湖第八中学', '观山湖区', '520102201704252419', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '付文轩 Owen' AND class_id = 44
);

-- Row 345: 蒋梓萱Betty @ 凤凰29班
UPDATE v2.students
SET phone = '18184103931',
    primary_guardian_type = '妈妈',
    parent_name = '米潇潇',
    school = '小花幼儿园',
    address = '云岩区城基路',
    id_card = '520103201712268222',
    updated_at = NOW()
WHERE name = '蒋梓萱Betty'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋梓萱Betty', 44, '18184103931', '妈妈', '米潇潇', '小花幼儿园', '云岩区城基路', '520103201712268222', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋梓萱Betty' AND class_id = 44
);

-- Row 346: 李崇阳Julia @ 凤凰29班
UPDATE v2.students
SET phone = '19885678878',
    primary_guardian_type = '妈妈',
    parent_name = '贺红英',
    school = '吾之幼',
    address = '观山湖区阅山公馆',
    id_card = '520115201805160427',
    updated_at = NOW()
WHERE name = '李崇阳Julia'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李崇阳Julia', 44, '19885678878', '妈妈', '贺红英', '吾之幼', '观山湖区阅山公馆', '520115201805160427', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李崇阳Julia' AND class_id = 44
);

-- Row 371: 赵婉茹Mona @ 凤凰26班
UPDATE v2.students
SET phone = '15985009021',
    primary_guardian_type = '妈妈',
    parent_name = '汪子靖',
    school = '花溪区第二小学',
    address = '花溪区万科花溪大都会',
    id_card = '520111201603210021',
    updated_at = NOW()
WHERE name = '赵婉茹Mona'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵婉茹Mona', 41, '15985009021', '妈妈', '汪子靖', '花溪区第二小学', '花溪区万科花溪大都会', '520111201603210021', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵婉茹Mona' AND class_id = 41
);

-- Row 372: 周珈好Amy @ 凤凰26班
UPDATE v2.students
SET phone = '18798747683',
    primary_guardian_type = '妈妈',
    parent_name = '周艾',
    school = '实验小学',
    address = NULL,
    id_card = '520115201701211621',
    updated_at = NOW()
WHERE name = '周珈好Amy'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周珈好Amy', 41, '18798747683', '妈妈', '周艾', '实验小学', NULL, '520115201701211621', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周珈好Amy' AND class_id = 41
);

-- Row 373: 喻子芯Nemo @ 凤凰26班
UPDATE v2.students
SET phone = '18685195538',
    primary_guardian_type = '妈妈',
    parent_name = '李思雨',
    school = '观十中',
    address = '恒大中央公园',
    id_card = '520103201705254420',
    updated_at = NOW()
WHERE name = '喻子芯Nemo'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '喻子芯Nemo', 41, '18685195538', '妈妈', '李思雨', '观十中', '恒大中央公园', '520103201705254420', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '喻子芯Nemo' AND class_id = 41
);

-- Row 374: 张槿悠Yustina @ 凤凰26班
UPDATE v2.students
SET phone = '18685101007',
    primary_guardian_type = '妈妈',
    parent_name = '吕梦岚',
    school = '花溪区第二小学',
    address = '花溪区阳光花园',
    id_card = '520111201611095828',
    updated_at = NOW()
WHERE name = '张槿悠Yustina'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张槿悠Yustina', 41, '18685101007', '妈妈', '吕梦岚', '花溪区第二小学', '花溪区阳光花园', '520111201611095828', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张槿悠Yustina' AND class_id = 41
);

-- Row 375: 邹东汛Jack @ 凤凰26班
UPDATE v2.students
SET phone = '18166708585',
    primary_guardian_type = '妈妈',
    parent_name = '熊敏',
    school = NULL,
    address = '中央公园',
    id_card = '520103201704280416',
    updated_at = NOW()
WHERE name = '邹东汛Jack'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹东汛Jack', 41, '18166708585', '妈妈', '熊敏', NULL, '中央公园', '520103201704280416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹东汛Jack' AND class_id = 41
);

-- Row 376: 汪芷亦 Erica @ 凤凰26班
UPDATE v2.students
SET phone = '13985522359',
    primary_guardian_type = '妈妈',
    parent_name = '贾女士',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '汪芷亦 Erica'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汪芷亦 Erica', 41, '13985522359', '妈妈', '贾女士', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汪芷亦 Erica' AND class_id = 41
);

-- Row 377: 杨晨溪Luke @ 凤凰26班
UPDATE v2.students
SET phone = '18275040135',
    primary_guardian_type = '妈妈',
    parent_name = '程炫',
    school = '中天北京小学',
    address = '中天花园',
    id_card = '520103201606054415',
    updated_at = NOW()
WHERE name = '杨晨溪Luke'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨晨溪Luke', 41, '18275040135', '妈妈', '程炫', '中天北京小学', '中天花园', '520103201606054415', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨晨溪Luke' AND class_id = 41
);

-- Row 378: 谈念曦Brett @ 凤凰26班
UPDATE v2.students
SET phone = '18585421204',
    primary_guardian_type = '妈妈',
    parent_name = '王筠',
    school = '省府路小学',
    address = '长江路万科花城',
    id_card = '520103201612040810',
    updated_at = NOW()
WHERE name = '谈念曦Brett'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谈念曦Brett', 41, '18585421204', '妈妈', '王筠', '省府路小学', '长江路万科花城', '520103201612040810', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谈念曦Brett' AND class_id = 41
);

-- Row 379: 韦羽彤Daisy @ 凤凰26班
UPDATE v2.students
SET phone = '13511975816',
    primary_guardian_type = '妈妈',
    parent_name = '廖伶俐',
    school = '幼儿园',
    address = '保利凤凰湾',
    id_card = '520102201711293825',
    updated_at = NOW()
WHERE name = '韦羽彤Daisy'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韦羽彤Daisy', 41, '13511975816', '妈妈', '廖伶俐', '幼儿园', '保利凤凰湾', '520102201711293825', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韦羽彤Daisy' AND class_id = 41
);

-- Row 380: 游峻豪Kevin @ 凤凰26班
UPDATE v2.students
SET phone = '18984305757',
    primary_guardian_type = '妈妈',
    parent_name = '舒玲',
    school = '观山湖区外国语实验小学',
    address = '新世界珑璟',
    id_card = '520102201708103015',
    updated_at = NOW()
WHERE name = '游峻豪Kevin'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '游峻豪Kevin', 41, '18984305757', '妈妈', '舒玲', '观山湖区外国语实验小学', '新世界珑璟', '520102201708103015', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '游峻豪Kevin' AND class_id = 41
);

-- Row 381: 舒昕芮Elena @ 凤凰26班
UPDATE v2.students
SET phone = '13518518518',
    primary_guardian_type = '妈妈',
    parent_name = '邓喻丹',
    school = '省委机关幼儿园',
    address = NULL,
    id_card = '520102201802131629',
    updated_at = NOW()
WHERE name = '舒昕芮Elena'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '舒昕芮Elena', 41, '13518518518', '妈妈', '邓喻丹', '省委机关幼儿园', NULL, '520102201802131629', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '舒昕芮Elena' AND class_id = 41
);

-- Row 382: 申佳鑫Richard @ 凤凰26班
UPDATE v2.students
SET phone = '13985000721',
    primary_guardian_type = '妈妈',
    parent_name = '吴佳佳',
    school = '南明小学',
    address = '尚武巷',
    id_card = '520102201704090819',
    updated_at = NOW()
WHERE name = '申佳鑫Richard'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '申佳鑫Richard', 41, '13985000721', '妈妈', '吴佳佳', '南明小学', '尚武巷', '520102201704090819', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '申佳鑫Richard' AND class_id = 41
);

-- Row 383: 肖坤雨Beverly @ 凤凰26班
UPDATE v2.students
SET phone = '13312275933',
    primary_guardian_type = '爸爸',
    parent_name = '肖正文',
    school = '中天北京小学',
    address = '中天花园',
    id_card = '520103201706080223',
    updated_at = NOW()
WHERE name = '肖坤雨Beverly'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖坤雨Beverly', 41, '13312275933', '爸爸', '肖正文', '中天北京小学', '中天花园', '520103201706080223', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖坤雨Beverly' AND class_id = 41
);

-- Row 384: 杨辰宇墨Emo @ 凤凰26班
UPDATE v2.students
SET phone = '18608546016',
    primary_guardian_type = '妈妈',
    parent_name = '范镭弋',
    school = NULL,
    address = '蓝波湾花园',
    id_card = '520103201711172835',
    updated_at = NOW()
WHERE name = '杨辰宇墨Emo'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨辰宇墨Emo', 41, '18608546016', '妈妈', '范镭弋', NULL, '蓝波湾花园', '520103201711172835', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨辰宇墨Emo' AND class_id = 41
);

-- Row 385: 陈芊浔Jenny @ 凤凰26班
UPDATE v2.students
SET phone = '18744871315',
    primary_guardian_type = '妈妈',
    parent_name = '逯玮',
    school = '华东小学',
    address = '观山湖',
    id_card = '522227201610260068',
    updated_at = NOW()
WHERE name = '陈芊浔Jenny'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈芊浔Jenny', 41, '18744871315', '妈妈', '逯玮', '华东小学', '观山湖', '522227201610260068', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈芊浔Jenny' AND class_id = 41
);

-- Row 386: 李易航Lion @ 凤凰26班
UPDATE v2.students
SET phone = '15186999625',
    primary_guardian_type = '妈妈',
    parent_name = '赵蕾',
    school = '观山湖外国语小学',
    address = NULL,
    id_card = '520103198706135269',
    updated_at = NOW()
WHERE name = '李易航Lion'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李易航Lion', 41, '15186999625', '妈妈', '赵蕾', '观山湖外国语小学', NULL, '520103198706135269', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李易航Lion' AND class_id = 41
);

-- Row 387: 庞祺霖Corey @ 凤凰26班
UPDATE v2.students
SET phone = '18085197620',
    primary_guardian_type = '妈妈',
    parent_name = '薛蕾',
    school = NULL,
    address = '市东路',
    id_card = '520102201709131210',
    updated_at = NOW()
WHERE name = '庞祺霖Corey'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '庞祺霖Corey', 41, '18085197620', '妈妈', '薛蕾', NULL, '市东路', '520102201709131210', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '庞祺霖Corey' AND class_id = 41
);

-- Row 388: 代栩睿Ray @ 凤凰26班
UPDATE v2.students
SET phone = '15285522505',
    primary_guardian_type = '妈妈',
    parent_name = '谢作平',
    school = '中天北京小学',
    address = '天一国际广场',
    id_card = '52011420161107003X',
    updated_at = NOW()
WHERE name = '代栩睿Ray'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '代栩睿Ray', 41, '15285522505', '妈妈', '谢作平', '中天北京小学', '天一国际广场', '52011420161107003X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '代栩睿Ray' AND class_id = 41
);

-- Row 389: 贾云淇Austin @ 凤凰26班
UPDATE v2.students
SET phone = '18985417330',
    primary_guardian_type = '妈妈',
    parent_name = '贾胜',
    school = '实验小学',
    address = '中央公园',
    id_card = '520103201609120414',
    updated_at = NOW()
WHERE name = '贾云淇Austin'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '贾云淇Austin', 41, '18985417330', '妈妈', '贾胜', '实验小学', '中央公园', '520103201609120414', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '贾云淇Austin' AND class_id = 41
);

-- Row 390: 李可煜Karry @ 凤凰26班
UPDATE v2.students
SET phone = '13885069096',
    primary_guardian_type = '妈妈',
    parent_name = '徐竹',
    school = '观山湖区华润国际小学',
    address = '华润国际',
    id_card = '520111201608170049',
    updated_at = NOW()
WHERE name = '李可煜Karry'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李可煜Karry', 41, '13885069096', '妈妈', '徐竹', '观山湖区华润国际小学', '华润国际', '520111201608170049', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李可煜Karry' AND class_id = 41
);

-- Row 391: 林子嘉Sita @ 凤凰26班
UPDATE v2.students
SET phone = '18985589217',
    primary_guardian_type = '妈妈',
    parent_name = '梅蕊',
    school = '贵阳实验二小',
    address = '贵阳市云岩区',
    id_card = '520103201701126720',
    updated_at = NOW()
WHERE name = '林子嘉Sita'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林子嘉Sita', 41, '18985589217', '妈妈', '梅蕊', '贵阳实验二小', '贵阳市云岩区', '520103201701126720', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林子嘉Sita' AND class_id = 41
);

-- Row 392: 罗皓允Robin @ 凤凰26班
UPDATE v2.students
SET phone = '13985118657',
    primary_guardian_type = '妈妈',
    parent_name = '张世华',
    school = '水口寺小学',
    address = '东坛巷',
    id_card = '520102201611067011',
    updated_at = NOW()
WHERE name = '罗皓允Robin'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗皓允Robin', 41, '13985118657', '妈妈', '张世华', '水口寺小学', '东坛巷', '520102201611067011', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗皓允Robin' AND class_id = 41
);

-- Row 393: 邱韬亦Jackson @ 凤凰26班
UPDATE v2.students
SET phone = '13984866016',
    primary_guardian_type = '妈妈',
    parent_name = '胡文',
    school = '尚义路小学',
    address = '恒大南明御府',
    id_card = '520102201703167036',
    updated_at = NOW()
WHERE name = '邱韬亦Jackson'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邱韬亦Jackson', 41, '13984866016', '妈妈', '胡文', '尚义路小学', '恒大南明御府', '520102201703167036', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邱韬亦Jackson' AND class_id = 41
);

-- Row 394: 曹筱萸Yuri @ 凤凰26班
UPDATE v2.students
SET phone = '13765096926',
    primary_guardian_type = '妈妈',
    parent_name = '邹欣伶',
    school = '白云区爱迪幼儿园',
    address = NULL,
    id_card = '520113201710131022',
    updated_at = NOW()
WHERE name = '曹筱萸Yuri'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹筱萸Yuri', 41, '13765096926', '妈妈', '邹欣伶', '白云区爱迪幼儿园', NULL, '520113201710131022', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹筱萸Yuri' AND class_id = 41
);

-- Row 395: 吴紫涵 Myla @ 凤凰45班
UPDATE v2.students
SET phone = '15859584973',
    primary_guardian_type = '妈妈',
    parent_name = '黄娜娜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴紫涵 Myla'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴紫涵 Myla', 60, '15859584973', '妈妈', '黄娜娜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴紫涵 Myla' AND class_id = 60
);

-- Row 396: 杨淳月 Wendy @ 凤凰45班
UPDATE v2.students
SET phone = '18984847621',
    primary_guardian_type = '妈妈',
    parent_name = '陈立艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨淳月 Wendy'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨淳月 Wendy', 60, '18984847621', '妈妈', '陈立艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨淳月 Wendy' AND class_id = 60
);

-- Row 397: 宋治谦 Thor @ 凤凰45班
UPDATE v2.students
SET phone = '15180809352',
    primary_guardian_type = '妈妈',
    parent_name = '狄芋伶',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '宋治谦 Thor'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋治谦 Thor', 60, '15180809352', '妈妈', '狄芋伶', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋治谦 Thor' AND class_id = 60
);

-- Row 398: 杨乐珺 Lexi @ 凤凰45班
UPDATE v2.students
SET phone = '13885163687',
    primary_guardian_type = '妈妈',
    parent_name = '孟露',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨乐珺 Lexi'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨乐珺 Lexi', 60, '13885163687', '妈妈', '孟露', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨乐珺 Lexi' AND class_id = 60
);

-- Row 399: 杨乐瑶 Leta @ 凤凰45班
UPDATE v2.students
SET phone = '13885163687',
    primary_guardian_type = '妈妈',
    parent_name = '孟露',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨乐瑶 Leta'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨乐瑶 Leta', 60, '13885163687', '妈妈', '孟露', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨乐瑶 Leta' AND class_id = 60
);

-- Row 400: 吴以恩 Ean @ 凤凰45班
UPDATE v2.students
SET phone = '15070018288',
    primary_guardian_type = '妈妈',
    parent_name = '胡婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴以恩 Ean'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴以恩 Ean', 60, '15070018288', '妈妈', '胡婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴以恩 Ean' AND class_id = 60
);

-- Row 401: 苏钇菲 Nana @ 凤凰45班
UPDATE v2.students
SET phone = '13765813240',
    primary_guardian_type = '妈妈',
    parent_name = '袁娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '苏钇菲 Nana'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '苏钇菲 Nana', 60, '13765813240', '妈妈', '袁娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '苏钇菲 Nana' AND class_id = 60
);

-- Row 402: 荣腾馨 Candy @ 凤凰45班
UPDATE v2.students
SET phone = '15985169180',
    primary_guardian_type = '妈妈',
    parent_name = '荣胜璧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '荣腾馨 Candy'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '荣腾馨 Candy', 60, '15985169180', '妈妈', '荣胜璧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '荣腾馨 Candy' AND class_id = 60
);

-- Row 403: 张济源 Simon @ 凤凰45班
UPDATE v2.students
SET phone = '18685008026',
    primary_guardian_type = '妈妈',
    parent_name = '陈琳姣',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张济源 Simon'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张济源 Simon', 60, '18685008026', '妈妈', '陈琳姣', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张济源 Simon' AND class_id = 60
);

-- Row 404: 郑淳予 Lily @ 凤凰45班
UPDATE v2.students
SET phone = '13809410310',
    primary_guardian_type = '妈妈',
    parent_name = '宗籽汐',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '郑淳予 Lily'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郑淳予 Lily', 60, '13809410310', '妈妈', '宗籽汐', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郑淳予 Lily' AND class_id = 60
);

-- Row 405: 刘明悦 Joy @ 凤凰45班
UPDATE v2.students
SET phone = '17785616606',
    primary_guardian_type = '妈妈',
    parent_name = '刘克井',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘明悦 Joy'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘明悦 Joy', 60, '17785616606', '妈妈', '刘克井', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘明悦 Joy' AND class_id = 60
);

-- Row 406: 唐易成 Eric @ 凤凰45班
UPDATE v2.students
SET phone = '17708516707',
    primary_guardian_type = '妈妈',
    parent_name = '郑钰',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '唐易成 Eric'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐易成 Eric', 60, '17708516707', '妈妈', '郑钰', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐易成 Eric' AND class_id = 60
);

-- Row 407: 田仁玄 Lucas @ 凤凰45班
UPDATE v2.students
SET phone = '13809483050',
    primary_guardian_type = '妈妈',
    parent_name = '宋黔松',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '田仁玄 Lucas'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '田仁玄 Lucas', 60, '13809483050', '妈妈', '宋黔松', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '田仁玄 Lucas' AND class_id = 60
);

-- Row 408: 龙楚妍 Chloe @ 凤凰45班
UPDATE v2.students
SET phone = '15180702195',
    primary_guardian_type = '妈妈',
    parent_name = '吴丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '龙楚妍 Chloe'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龙楚妍 Chloe', 60, '15180702195', '妈妈', '吴丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龙楚妍 Chloe' AND class_id = 60
);

-- Row 409: 王一诺 Nolan @ 凤凰45班
UPDATE v2.students
SET phone = '13595039173',
    primary_guardian_type = '妈妈',
    parent_name = '周瑾',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王一诺 Nolan'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王一诺 Nolan', 60, '13595039173', '妈妈', '周瑾', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王一诺 Nolan' AND class_id = 60
);

-- Row 410: 季灵瑶UU @ 凤凰45班
UPDATE v2.students
SET phone = '15285024465',
    primary_guardian_type = '妈妈',
    parent_name = '季李昕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '季灵瑶UU'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '季灵瑶UU', 60, '15285024465', '妈妈', '季李昕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '季灵瑶UU' AND class_id = 60
);

-- Row 411: 顾芊凌 Lynn @ 凤凰45班
UPDATE v2.students
SET phone = '18585854740',
    primary_guardian_type = '妈妈',
    parent_name = '代惠琼',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '顾芊凌 Lynn'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '顾芊凌 Lynn', 60, '18585854740', '妈妈', '代惠琼', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '顾芊凌 Lynn' AND class_id = 60
);

-- Row 412: 兰若 Lacey @ 凤凰45班
UPDATE v2.students
SET phone = '13985451718',
    primary_guardian_type = '妈妈',
    parent_name = '朱婧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '兰若 Lacey'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '兰若 Lacey', 60, '13985451718', '妈妈', '朱婧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '兰若 Lacey' AND class_id = 60
);

-- Row 413: 李沐妍 Emma @ 凤凰45班
UPDATE v2.students
SET phone = '15180892523',
    primary_guardian_type = '妈妈',
    parent_name = '张晓玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李沐妍 Emma'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李沐妍 Emma', 60, '15180892523', '妈妈', '张晓玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李沐妍 Emma' AND class_id = 60
);

-- Row 414: 曾若如 Evelyn @ 凤凰45班
UPDATE v2.students
SET phone = '15985179509',
    primary_guardian_type = '妈妈',
    parent_name = '翁应敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾若如 Evelyn'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾若如 Evelyn', 60, '15985179509', '妈妈', '翁应敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾若如 Evelyn' AND class_id = 60
);

-- Row 415: 蹇一山 Ishan @ 凤凰45班
UPDATE v2.students
SET phone = '18774859153',
    primary_guardian_type = '妈妈',
    parent_name = '汪菊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蹇一山 Ishan'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蹇一山 Ishan', 60, '18774859153', '妈妈', '汪菊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蹇一山 Ishan' AND class_id = 60
);

-- Row 416: 曾倪 Niki @ 凤凰45班
UPDATE v2.students
SET phone = '15085920143',
    primary_guardian_type = '妈妈',
    parent_name = '罗海霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾倪 Niki'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾倪 Niki', 60, '15085920143', '妈妈', '罗海霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾倪 Niki' AND class_id = 60
);

-- Row 417: 丁渝权 Andy @ 凤凰45班
UPDATE v2.students
SET phone = '13595750660',
    primary_guardian_type = '妈妈',
    parent_name = '王明娥',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '丁渝权 Andy'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '丁渝权 Andy', 60, '13595750660', '妈妈', '王明娥', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '丁渝权 Andy' AND class_id = 60
);

-- Row 418: 龚悦宁 Yulia @ 凤凰45班
UPDATE v2.students
SET phone = '18984148225',
    primary_guardian_type = '妈妈',
    parent_name = '吴丽娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '龚悦宁 Yulia'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龚悦宁 Yulia', 60, '18984148225', '妈妈', '吴丽娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龚悦宁 Yulia' AND class_id = 60
);

-- Row 419: 兰瑞恬 Abby @ 凤凰45班
UPDATE v2.students
SET phone = '13511982243',
    primary_guardian_type = '妈妈',
    parent_name = '帅启菲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '兰瑞恬 Abby'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '兰瑞恬 Abby', 60, '13511982243', '妈妈', '帅启菲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '兰瑞恬 Abby' AND class_id = 60
);

-- Row 420: 黄一芯 Karin @ 凤凰45班
UPDATE v2.students
SET phone = '13595061277',
    primary_guardian_type = '爸爸',
    parent_name = '黄超禹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄一芯 Karin'
  AND class_id = 60;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄一芯 Karin', 60, '13595061277', '爸爸', '黄超禹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄一芯 Karin' AND class_id = 60
);

-- Row 421: 赵文胤William @ 麒麟19班
UPDATE v2.students
SET phone = '17385819239',
    primary_guardian_type = '妈妈',
    parent_name = '丁美琴',
    school = '市府路小学',
    address = '九华路中央公园',
    id_card = '520203201511100015',
    updated_at = NOW()
WHERE name = '赵文胤William'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵文胤William', 79, '17385819239', '妈妈', '丁美琴', '市府路小学', '九华路中央公园', '520203201511100015', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵文胤William' AND class_id = 79
);

-- Row 422: 周子寒 Winni @ 麒麟19班
UPDATE v2.students
SET phone = '18286147899',
    primary_guardian_type = NULL,
    parent_name = '周平',
    school = '贵阳市实验二小',
    address = '云岩区宅吉路',
    id_card = '520103201602138427',
    updated_at = NOW()
WHERE name = '周子寒 Winni'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周子寒 Winni', 79, '18286147899', NULL, '周平', '贵阳市实验二小', '云岩区宅吉路', '520103201602138427', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周子寒 Winni' AND class_id = 79
);

-- Row 423: 赵若渲 Carol @ 麒麟19班
UPDATE v2.students
SET phone = '13511900747',
    primary_guardian_type = NULL,
    parent_name = '赵靖宇',
    school = '贵阳市实验小学未来方舟分校',
    address = '贵阳市南明区龙水路',
    id_card = '520103201608130442',
    updated_at = NOW()
WHERE name = '赵若渲 Carol'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵若渲 Carol', 79, '13511900747', NULL, '赵靖宇', '贵阳市实验小学未来方舟分校', '贵阳市南明区龙水路', '520103201608130442', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵若渲 Carol' AND class_id = 79
);

-- Row 424: 赵辰傲 Bill @ 麒麟19班
UPDATE v2.students
SET phone = '17385819239',
    primary_guardian_type = NULL,
    parent_name = '丁美琴',
    school = '南明区市府路小学',
    address = '云岩区九华路中央公园',
    id_card = '520203201411210014',
    updated_at = NOW()
WHERE name = '赵辰傲 Bill'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵辰傲 Bill', 79, '17385819239', NULL, '丁美琴', '南明区市府路小学', '云岩区九华路中央公园', '520203201411210014', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵辰傲 Bill' AND class_id = 79
);

-- Row 425: 张译丹 Cleo @ 麒麟19班
UPDATE v2.students
SET phone = '13639138383',
    primary_guardian_type = NULL,
    parent_name = '张楼沈',
    school = '贵阳市省府路小学',
    address = '贵阳市瑞金南路',
    id_card = '520102021706017025',
    updated_at = NOW()
WHERE name = '张译丹 Cleo'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张译丹 Cleo', 79, '13639138383', NULL, '张楼沈', '贵阳市省府路小学', '贵阳市瑞金南路', '520102021706017025', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张译丹 Cleo' AND class_id = 79
);

-- Row 426: 张恩瑜 Effie @ 麒麟19班
UPDATE v2.students
SET phone = '18984037771',
    primary_guardian_type = '妈妈',
    parent_name = '郭晓关',
    school = '南明小学',
    address = '贵州之光',
    id_card = '520102201411130821',
    updated_at = NOW()
WHERE name = '张恩瑜 Effie'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张恩瑜 Effie', 79, '18984037771', '妈妈', '郭晓关', '南明小学', '贵州之光', '520102201411130821', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张恩瑜 Effie' AND class_id = 79
);

-- Row 427: 叶蕴文Albert @ 麒麟19班
UPDATE v2.students
SET phone = '18111833520',
    primary_guardian_type = NULL,
    parent_name = '李才燕',
    school = '实验二小',
    address = '云岩区梦想典城',
    id_card = '520103201608236714',
    updated_at = NOW()
WHERE name = '叶蕴文Albert'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '叶蕴文Albert', 79, '18111833520', NULL, '李才燕', '实验二小', '云岩区梦想典城', '520103201608236714', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '叶蕴文Albert' AND class_id = 79
);

-- Row 428: Rocklyn 李婉玥 @ 麒麟19班
UPDATE v2.students
SET phone = '18798896561',
    primary_guardian_type = '妈妈',
    parent_name = '万羽泇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Rocklyn 李婉玥'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Rocklyn 李婉玥', 79, '18798896561', '妈妈', '万羽泇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Rocklyn 李婉玥' AND class_id = 79
);

-- Row 429: Wendy 李婉琪 @ 麒麟19班
UPDATE v2.students
SET phone = '18798896561',
    primary_guardian_type = '妈妈',
    parent_name = '万羽泇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Wendy 李婉琪'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Wendy 李婉琪', 79, '18798896561', '妈妈', '万羽泇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Wendy 李婉琪' AND class_id = 79
);

-- Row 430: 姚宛昕 Ivy @ 麒麟19班
UPDATE v2.students
SET phone = '17784164195',
    primary_guardian_type = '妈妈',
    parent_name = '张滨滢',
    school = '达德学校',
    address = '贵阳市南明区',
    id_card = '511303201604030065',
    updated_at = NOW()
WHERE name = '姚宛昕 Ivy'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '姚宛昕 Ivy', 79, '17784164195', '妈妈', '张滨滢', '达德学校', '贵阳市南明区', '511303201604030065', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '姚宛昕 Ivy' AND class_id = 79
);

-- Row 431: 万家珩 Bronze @ 麒麟19班
UPDATE v2.students
SET phone = '13765823220',
    primary_guardian_type = NULL,
    parent_name = '赵佳莉',
    school = '贵阳市实验小学',
    address = '云岩区盐务街',
    id_card = '520181201603150432',
    updated_at = NOW()
WHERE name = '万家珩 Bronze'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '万家珩 Bronze', 79, '13765823220', NULL, '赵佳莉', '贵阳市实验小学', '云岩区盐务街', '520181201603150432', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '万家珩 Bronze' AND class_id = 79
);

-- Row 432: 王鑫扬 Jayden @ 麒麟19班
UPDATE v2.students
SET phone = '18984328781',
    primary_guardian_type = NULL,
    parent_name = '潘红',
    school = '世纪城小学',
    address = '世纪城龙锦苑',
    id_card = '520103201504018819',
    updated_at = NOW()
WHERE name = '王鑫扬 Jayden'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王鑫扬 Jayden', 79, '18984328781', NULL, '潘红', '世纪城小学', '世纪城龙锦苑', '520103201504018819', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王鑫扬 Jayden' AND class_id = 79
);

-- Row 433: 沈杨东 Summer @ 麒麟19班
UPDATE v2.students
SET phone = '18188514365',
    primary_guardian_type = NULL,
    parent_name = '沈茂曦',
    school = '花果园第五小学',
    address = '南明区花果园延安南路',
    id_card = '51172420160420003X',
    updated_at = NOW()
WHERE name = '沈杨东 Summer'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '沈杨东 Summer', 79, '18188514365', NULL, '沈茂曦', '花果园第五小学', '南明区花果园延安南路', '51172420160420003X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '沈杨东 Summer' AND class_id = 79
);

-- Row 434: 刘耘希 Sunny @ 麒麟19班
UPDATE v2.students
SET phone = '13984182468',
    primary_guardian_type = NULL,
    parent_name = '么文心',
    school = '省府路小学',
    address = '贵阳市',
    id_card = '520103201602100867',
    updated_at = NOW()
WHERE name = '刘耘希 Sunny'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘耘希 Sunny', 79, '13984182468', NULL, '么文心', '省府路小学', '贵阳市', '520103201602100867', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘耘希 Sunny' AND class_id = 79
);

-- Row 435: 徐彧宸Kimi @ 麒麟19班
UPDATE v2.students
SET phone = '13985122279',
    primary_guardian_type = '妈妈',
    parent_name = '徐文婷',
    school = '甲秀小学',
    address = '解放路',
    id_card = '310113201508300313',
    updated_at = NOW()
WHERE name = '徐彧宸Kimi'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐彧宸Kimi', 79, '13985122279', '妈妈', '徐文婷', '甲秀小学', '解放路', '310113201508300313', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐彧宸Kimi' AND class_id = 79
);

-- Row 436: 李璟颜Yulia @ 麒麟19班
UPDATE v2.students
SET phone = '13007800200',
    primary_guardian_type = '妈妈',
    parent_name = '邱燕',
    school = '南明小学',
    address = '无',
    id_card = '522723199005280046',
    updated_at = NOW()
WHERE name = '李璟颜Yulia'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李璟颜Yulia', 79, '13007800200', '妈妈', '邱燕', '南明小学', '无', '522723199005280046', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李璟颜Yulia' AND class_id = 79
);

-- Row 437: 兰芷潼 Lily @ 麒麟19班
UPDATE v2.students
SET phone = '13595162821',
    primary_guardian_type = NULL,
    parent_name = '唐永菊',
    school = '芳草地国际学校',
    address = '云岩区未来方舟',
    id_card = '520103201509034826',
    updated_at = NOW()
WHERE name = '兰芷潼 Lily'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '兰芷潼 Lily', 79, '13595162821', NULL, '唐永菊', '芳草地国际学校', '云岩区未来方舟', '520103201509034826', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '兰芷潼 Lily' AND class_id = 79
);

-- Row 438: 丁乐阳 Myers @ 麒麟19班
UPDATE v2.students
SET phone = '18386177591',
    primary_guardian_type = NULL,
    parent_name = '刘婷',
    school = '环西小学普天分校',
    address = '云岩区普天中央国际',
    id_card = '520424201608131611',
    updated_at = NOW()
WHERE name = '丁乐阳 Myers'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '丁乐阳 Myers', 79, '18386177591', NULL, '刘婷', '环西小学普天分校', '云岩区普天中央国际', '520424201608131611', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '丁乐阳 Myers' AND class_id = 79
);

-- Row 439: 戴久开George @ 麒麟19班
UPDATE v2.students
SET phone = '15186970580',
    primary_guardian_type = NULL,
    parent_name = '谷宜静',
    school = '贵阳市第二实验小学',
    address = '云岩区北京路',
    id_card = '520103201604295215',
    updated_at = NOW()
WHERE name = '戴久开George'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '戴久开George', 79, '15186970580', NULL, '谷宜静', '贵阳市第二实验小学', '云岩区北京路', '520103201604295215', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '戴久开George' AND class_id = 79
);

-- Row 440: 代浩宇 Rayson @ 麒麟19班
UPDATE v2.students
SET phone = '13608596382',
    primary_guardian_type = NULL,
    parent_name = '王娇',
    school = '贵阳市实验二小',
    address = '盐务街百草苍荣桂园',
    id_card = '520103201603108414',
    updated_at = NOW()
WHERE name = '代浩宇 Rayson'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '代浩宇 Rayson', 79, '13608596382', NULL, '王娇', '贵阳市实验二小', '盐务街百草苍荣桂园', '520103201603108414', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '代浩宇 Rayson' AND class_id = 79
);

-- Row 441: 陈泠豫 Heidi @ 麒麟19班
UPDATE v2.students
SET phone = '18508570530',
    primary_guardian_type = NULL,
    parent_name = '任滟熔',
    school = '贵阳市实验二小',
    address = '贵阳市云岩区大营坡中大国际',
    id_card = '520103201604015228',
    updated_at = NOW()
WHERE name = '陈泠豫 Heidi'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈泠豫 Heidi', 79, '18508570530', NULL, '任滟熔', '贵阳市实验二小', '贵阳市云岩区大营坡中大国际', '520103201604015228', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈泠豫 Heidi' AND class_id = 79
);

-- Row 442: 程子洋Leo @ 麒麟19班
UPDATE v2.students
SET phone = '18008510126',
    primary_guardian_type = NULL,
    parent_name = '查灵',
    school = '贵阳市实验小学保利分校',
    address = '贵阳市云岩区保利云山',
    id_card = '520103201606284851',
    updated_at = NOW()
WHERE name = '程子洋Leo'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '程子洋Leo', 79, '18008510126', NULL, '查灵', '贵阳市实验小学保利分校', '贵阳市云岩区保利云山', '520103201606284851', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '程子洋Leo' AND class_id = 79
);

-- Row 443: 何子曦Nana @ 麒麟19班
UPDATE v2.students
SET phone = '13885009335',
    primary_guardian_type = '妈妈',
    parent_name = '姜冰玉',
    school = '南明小学',
    address = '盛世花城',
    id_card = '520102201411191245',
    updated_at = NOW()
WHERE name = '何子曦Nana'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何子曦Nana', 79, '13885009335', '妈妈', '姜冰玉', '南明小学', '盛世花城', '520102201411191245', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何子曦Nana' AND class_id = 79
);

-- Row 444: 曹馨羽 Sally @ 麒麟19班
UPDATE v2.students
SET phone = '18685008303',
    primary_guardian_type = NULL,
    parent_name = '谢晓燕',
    school = '实验一小',
    address = '贵阳市南明区美树阳光',
    id_card = '520103201601130028',
    updated_at = NOW()
WHERE name = '曹馨羽 Sally'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹馨羽 Sally', 79, '18685008303', NULL, '谢晓燕', '实验一小', '贵阳市南明区美树阳光', '520103201601130028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹馨羽 Sally' AND class_id = 79
);

-- Row 470: 齐帅元 Wilson @ 麒麟16班
UPDATE v2.students
SET phone = '13608577741',
    primary_guardian_type = '妈妈',
    parent_name = '帅佳',
    school = NULL,
    address = NULL,
    id_card = '520102201409221214',
    updated_at = NOW()
WHERE name = '齐帅元 Wilson'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '齐帅元 Wilson', 76, '13608577741', '妈妈', '帅佳', NULL, NULL, '520102201409221214', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '齐帅元 Wilson' AND class_id = 76
);

-- Row 471: 王雯熙 Lucy @ 麒麟16班
UPDATE v2.students
SET phone = '15286042509',
    primary_guardian_type = '妈妈',
    parent_name = '毛婷',
    school = '南明区实验二小',
    address = '南明区花果园V区',
    id_card = '520102201602215043',
    updated_at = NOW()
WHERE name = '王雯熙 Lucy'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王雯熙 Lucy', 76, '15286042509', '妈妈', '毛婷', '南明区实验二小', '南明区花果园V区', '520102201602215043', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王雯熙 Lucy' AND class_id = 76
);

-- Row 472: 蒙祉睿Ray @ 麒麟16班
UPDATE v2.students
SET phone = '18984057070',
    primary_guardian_type = '妈妈',
    parent_name = '黄林燕',
    school = '实验小学',
    address = '万科翡翠',
    id_card = '520114201405221650',
    updated_at = NOW()
WHERE name = '蒙祉睿Ray'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒙祉睿Ray', 76, '18984057070', '妈妈', '黄林燕', '实验小学', '万科翡翠', '520114201405221650', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒙祉睿Ray' AND class_id = 76
);

-- Row 473: 朱姿燕Eva @ 麒麟16班
UPDATE v2.students
SET phone = '18685195115',
    primary_guardian_type = '妈妈',
    parent_name = '刘鑫',
    school = '中天鸣廷小学',
    address = '贵阳市观山湖区中天铭廷',
    id_card = '520103201507179247',
    updated_at = NOW()
WHERE name = '朱姿燕Eva'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱姿燕Eva', 76, '18685195115', '妈妈', '刘鑫', '中天鸣廷小学', '贵阳市观山湖区中天铭廷', '520103201507179247', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱姿燕Eva' AND class_id = 76
);

-- Row 474: 周源艾Jody @ 麒麟16班
UPDATE v2.students
SET phone = '18285093943',
    primary_guardian_type = '妈妈',
    parent_name = '李小梅',
    school = '实验小学',
    address = '贵阳市南明区都司路中天广场',
    id_card = '520102201411070048',
    updated_at = NOW()
WHERE name = '周源艾Jody'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周源艾Jody', 76, '18285093943', '妈妈', '李小梅', '实验小学', '贵阳市南明区都司路中天广场', '520102201411070048', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周源艾Jody' AND class_id = 76
);

-- Row 475: 韦凯琳King @ 麒麟16班
UPDATE v2.students
SET phone = '13809493566',
    primary_guardian_type = '妈妈',
    parent_name = '邓琴',
    school = '中天北京小学',
    address = '中铁逸都',
    id_card = '522301201604280320',
    updated_at = NOW()
WHERE name = '韦凯琳King'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韦凯琳King', 76, '13809493566', '妈妈', '邓琴', '中天北京小学', '中铁逸都', '522301201604280320', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韦凯琳King' AND class_id = 76
);

-- Row 476: 张铭涵Tina @ 麒麟16班
UPDATE v2.students
SET phone = '13595066282',
    primary_guardian_type = '妈妈',
    parent_name = '黄丽',
    school = '贵阳市黄花街小学',
    address = '贵阳市云岩区三桥南路恒大名都1栋',
    id_card = '52042220140322052X',
    updated_at = NOW()
WHERE name = '张铭涵Tina'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张铭涵Tina', 76, '13595066282', '妈妈', '黄丽', '贵阳市黄花街小学', '贵阳市云岩区三桥南路恒大名都1栋', '52042220140322052X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张铭涵Tina' AND class_id = 76
);

-- Row 477: 张樾程Mike @ 麒麟16班
UPDATE v2.students
SET phone = '13985106700',
    primary_guardian_type = '妈妈',
    parent_name = '王娜',
    school = '贵阳市实验小学',
    address = '贵阳市云岩区小石城',
    id_card = '520102201404297017',
    updated_at = NOW()
WHERE name = '张樾程Mike'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张樾程Mike', 76, '13985106700', '妈妈', '王娜', '贵阳市实验小学', '贵阳市云岩区小石城', '520102201404297017', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张樾程Mike' AND class_id = 76
);

-- Row 478: 吴钟吉煜Anna @ 麒麟16班
UPDATE v2.students
SET phone = '18685022822',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '西南大学贵阳实验小学',
    address = '观山湖融创玖境台',
    id_card = '520103201410082017',
    updated_at = NOW()
WHERE name = '吴钟吉煜Anna'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴钟吉煜Anna', 76, '18685022822', '妈妈', NULL, '西南大学贵阳实验小学', '观山湖融创玖境台', '520103201410082017', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴钟吉煜Anna' AND class_id = 76
);

-- Row 479: 李容礼 Yuri @ 麒麟16班
UPDATE v2.students
SET phone = '18685196526',
    primary_guardian_type = '妈妈',
    parent_name = '祝娇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李容礼 Yuri'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李容礼 Yuri', 76, '18685196526', '妈妈', '祝娇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李容礼 Yuri' AND class_id = 76
);

-- Row 480: 李欣容 Iris @ 麒麟16班
UPDATE v2.students
SET phone = '15185142585',
    primary_guardian_type = '妈妈',
    parent_name = '陈爱蓉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李欣容 Iris'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李欣容 Iris', 76, '15185142585', '妈妈', '陈爱蓉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李欣容 Iris' AND class_id = 76
);

-- Row 481: 卢关凝Betta @ 麒麟16班
UPDATE v2.students
SET phone = '15085909933',
    primary_guardian_type = '妈妈',
    parent_name = '关键',
    school = '为明学校',
    address = '保利春天大道',
    id_card = '520112201501060022',
    updated_at = NOW()
WHERE name = '卢关凝Betta'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '卢关凝Betta', 76, '15085909933', '妈妈', '关键', '为明学校', '保利春天大道', '520112201501060022', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '卢关凝Betta' AND class_id = 76
);

-- Row 482: 刘宸豪 Frank @ 麒麟16班
UPDATE v2.students
SET phone = '13511941119',
    primary_guardian_type = '妈妈',
    parent_name = '龚洁',
    school = '华东师范大学贵阳附属小学',
    address = '无',
    id_card = '520103201508062016',
    updated_at = NOW()
WHERE name = '刘宸豪 Frank'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘宸豪 Frank', 76, '13511941119', '妈妈', '龚洁', '华东师范大学贵阳附属小学', '无', '520103201508062016', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘宸豪 Frank' AND class_id = 76
);

-- Row 483: 龙榞廷 Jack @ 麒麟16班
UPDATE v2.students
SET phone = '17718011119',
    primary_guardian_type = '妈妈',
    parent_name = '曾洁',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '龙榞廷 Jack'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龙榞廷 Jack', 76, '17718011119', '妈妈', '曾洁', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龙榞廷 Jack' AND class_id = 76
);

-- Row 484: 高若夏Suri @ 麒麟16班
UPDATE v2.students
SET phone = '13595000499',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '芳草地国际学校',
    address = '中天未来方舟',
    id_card = '522424201607145220',
    updated_at = NOW()
WHERE name = '高若夏Suri'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高若夏Suri', 76, '13595000499', '妈妈', NULL, '芳草地国际学校', '中天未来方舟', '522424201607145220', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高若夏Suri' AND class_id = 76
);

-- Row 485: 李昊宇Zach @ 麒麟16班
UPDATE v2.students
SET phone = '13885189997',
    primary_guardian_type = '妈妈',
    parent_name = '刘娟',
    school = '贵阳市实验小学',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李昊宇Zach'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李昊宇Zach', 76, '13885189997', '妈妈', '刘娟', '贵阳市实验小学', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李昊宇Zach' AND class_id = 76
);

-- Row 486: 姜馨雅Sia @ 麒麟16班
UPDATE v2.students
SET phone = '13984305265',
    primary_guardian_type = '妈妈',
    parent_name = '魏艳华',
    school = '省府路小学',
    address = '北京路君临天下圣庭苑C栋',
    id_card = '520102201604101621',
    updated_at = NOW()
WHERE name = '姜馨雅Sia'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '姜馨雅Sia', 76, '13984305265', '妈妈', '魏艳华', '省府路小学', '北京路君临天下圣庭苑C栋', '520102201604101621', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '姜馨雅Sia' AND class_id = 76
);

-- Row 487: 廖芷伊Sophie @ 麒麟16班
UPDATE v2.students
SET phone = '18285002120',
    primary_guardian_type = '妈妈',
    parent_name = '代越琳',
    school = '省府路小学',
    address = '南明区水口寺水岸金都',
    id_card = '520103201602085222',
    updated_at = NOW()
WHERE name = '廖芷伊Sophie'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '廖芷伊Sophie', 76, '18285002120', '妈妈', '代越琳', '省府路小学', '南明区水口寺水岸金都', '520103201602085222', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '廖芷伊Sophie' AND class_id = 76
);

-- Row 488: 胡展源Martin @ 麒麟16班
UPDATE v2.students
SET phone = '18586973139',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '观山湖普瑞国际学校',
    address = NULL,
    id_card = '520115201603140815',
    updated_at = NOW()
WHERE name = '胡展源Martin'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡展源Martin', 76, '18586973139', '妈妈', NULL, '观山湖普瑞国际学校', NULL, '520115201603140815', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡展源Martin' AND class_id = 76
);

-- Row 489: 孟星吟Essie @ 麒麟16班
UPDATE v2.students
SET phone = '13985506511',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '孟星吟Essie'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孟星吟Essie', 76, '13985506511', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孟星吟Essie' AND class_id = 76
);

-- Row 490: 曹馨匀 Alice C @ 麒麟16班
UPDATE v2.students
SET phone = '18685008689',
    primary_guardian_type = '妈妈',
    parent_name = '尹希婧',
    school = '世纪城小学',
    address = NULL,
    id_card = '520102201503303021',
    updated_at = NOW()
WHERE name = '曹馨匀 Alice C'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹馨匀 Alice C', 76, '18685008689', '妈妈', '尹希婧', '世纪城小学', NULL, '520102201503303021', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹馨匀 Alice C' AND class_id = 76
);

-- Row 491: 陈泓翰 Red @ 麒麟16班
UPDATE v2.students
SET phone = '18985435808',
    primary_guardian_type = '妈妈',
    parent_name = '廖莹',
    school = '市东小学',
    address = '文昌北路君子苑',
    id_card = '520103201701310413',
    updated_at = NOW()
WHERE name = '陈泓翰 Red'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈泓翰 Red', 76, '18985435808', '妈妈', '廖莹', '市东小学', '文昌北路君子苑', '520103201701310413', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈泓翰 Red' AND class_id = 76
);

-- Row 492: 代健宇 Kevin @ 麒麟16班
UPDATE v2.students
SET phone = '18690728226',
    primary_guardian_type = '妈妈',
    parent_name = '罗在菲',
    school = '尚义路小学',
    address = '遵义路',
    id_card = '522723201310091911',
    updated_at = NOW()
WHERE name = '代健宇 Kevin'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '代健宇 Kevin', 76, '18690728226', '妈妈', '罗在菲', '尚义路小学', '遵义路', '522723201310091911', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '代健宇 Kevin' AND class_id = 76
);

-- Row 493: 范歆悦Alice @ 麒麟16班
UPDATE v2.students
SET phone = '18188007760',
    primary_guardian_type = '妈妈',
    parent_name = '罗林',
    school = '向阳实验小学',
    address = '云岩区未来方舟',
    id_card = '520181201601250424',
    updated_at = NOW()
WHERE name = '范歆悦Alice'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '范歆悦Alice', 76, '18188007760', '妈妈', '罗林', '向阳实验小学', '云岩区未来方舟', '520181201601250424', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '范歆悦Alice' AND class_id = 76
);

-- Row 494: 陈泽安Zayn @ 麒麟16班
UPDATE v2.students
SET phone = '18224751717',
    primary_guardian_type = '妈妈',
    parent_name = '陈汪雪',
    school = '贵阳一中星辰中学',
    address = '花溪区龙湖景麟',
    id_card = '520422201605050039',
    updated_at = NOW()
WHERE name = '陈泽安Zayn'
  AND class_id = 76;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈泽安Zayn', 76, '18224751717', '妈妈', '陈汪雪', '贵阳一中星辰中学', '花溪区龙湖景麟', '520422201605050039', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈泽安Zayn' AND class_id = 76
);

-- Row 495: 周昊杨 Young @ 白象09班
UPDATE v2.students
SET phone = '13985127766',
    primary_guardian_type = '妈妈',
    parent_name = '杨玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周昊杨 Young'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周昊杨 Young', 82, '13985127766', '妈妈', '杨玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周昊杨 Young' AND class_id = 82
);

-- Row 496: 谢汶伽Rebecca @ 白象09班
UPDATE v2.students
SET phone = '13985135711',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '中天北京小学',
    address = '中天未来方舟',
    id_card = '520103201306239047',
    updated_at = NOW()
WHERE name = '谢汶伽Rebecca'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢汶伽Rebecca', 82, '13985135711', '妈妈', NULL, '中天北京小学', '中天未来方舟', '520103201306239047', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢汶伽Rebecca' AND class_id = 82
);

-- Row 497: 吴旳诺Wendy @ 白象09班
UPDATE v2.students
SET phone = '13765849493',
    primary_guardian_type = '妈妈',
    parent_name = '朱芸',
    school = '甲秀小学',
    address = '新华路',
    id_card = '520102201207133427',
    updated_at = NOW()
WHERE name = '吴旳诺Wendy'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴旳诺Wendy', 82, '13765849493', '妈妈', '朱芸', '甲秀小学', '新华路', '520102201207133427', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴旳诺Wendy' AND class_id = 82
);

-- Row 498: 王文起 Fred @ 白象09班
UPDATE v2.students
SET phone = '15185147876',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '花溪小学',
    address = '花溪区保利溪湖',
    id_card = '620422201206197416',
    updated_at = NOW()
WHERE name = '王文起 Fred'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王文起 Fred', 82, '15185147876', NULL, NULL, '花溪小学', '花溪区保利溪湖', '620422201206197416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王文起 Fred' AND class_id = 82
);

-- Row 499: 邹雨辰Alex @ 白象09班
UPDATE v2.students
SET phone = '18798721305',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = '320206201211094815',
    updated_at = NOW()
WHERE name = '邹雨辰Alex'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹雨辰Alex', 82, '18798721305', NULL, NULL, NULL, NULL, '320206201211094815', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹雨辰Alex' AND class_id = 82
);

-- Row 500: 李问道Smith @ 白象09班
UPDATE v2.students
SET phone = '15870301252',
    primary_guardian_type = '妈妈',
    parent_name = '陈铭',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李问道Smith'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李问道Smith', 82, '15870301252', '妈妈', '陈铭', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李问道Smith' AND class_id = 82
);

-- Row 501: 何佩珊 Sunny @ 白象09班
UPDATE v2.students
SET phone = '18685191125',
    primary_guardian_type = '妈妈',
    parent_name = '陈信步',
    school = '华润国际学校',
    address = '银海元隆',
    id_card = '520102201402225028',
    updated_at = NOW()
WHERE name = '何佩珊 Sunny'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何佩珊 Sunny', 82, '18685191125', '妈妈', '陈信步', '华润国际学校', '银海元隆', '520102201402225028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何佩珊 Sunny' AND class_id = 82
);

-- Row 502: 刘昕楠 Vivian @ 白象09班
UPDATE v2.students
SET phone = '13985553775',
    primary_guardian_type = '妈妈',
    parent_name = '杨若飞',
    school = '中天中学',
    address = '中天花园',
    id_card = '520103201109306423',
    updated_at = NOW()
WHERE name = '刘昕楠 Vivian'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘昕楠 Vivian', 82, '13985553775', '妈妈', '杨若飞', '中天中学', '中天花园', '520103201109306423', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘昕楠 Vivian' AND class_id = 82
);

-- Row 503: 曾晟晋Jacky @ 白象09班
UPDATE v2.students
SET phone = '19316683941',
    primary_guardian_type = '妈妈',
    parent_name = '周小彦',
    school = '华麟小学',
    address = '中天世纪新城',
    id_card = '520102201201017011',
    updated_at = NOW()
WHERE name = '曾晟晋Jacky'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾晟晋Jacky', 82, '19316683941', '妈妈', '周小彦', '华麟小学', '中天世纪新城', '520102201201017011', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾晟晋Jacky' AND class_id = 82
);

-- Row 504: 邓丁绮Diane @ 白象09班
UPDATE v2.students
SET phone = '13984331535',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '实验四小',
    address = '市北路',
    id_card = '520103201209136724',
    updated_at = NOW()
WHERE name = '邓丁绮Diane'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邓丁绮Diane', 82, '13984331535', NULL, NULL, '实验四小', '市北路', '520103201209136724', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邓丁绮Diane' AND class_id = 82
);

-- Row 505: 黄若可Lucky @ 白象09班
UPDATE v2.students
SET phone = '13985048088',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = '520103201303301626',
    updated_at = NOW()
WHERE name = '黄若可Lucky'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄若可Lucky', 82, '13985048088', '妈妈', NULL, NULL, NULL, '520103201303301626', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄若可Lucky' AND class_id = 82
);

-- Row 506: 刘芷硕Eason @ 白象09班
UPDATE v2.students
SET phone = '13595115250',
    primary_guardian_type = NULL,
    parent_name = '刘宇',
    school = '会展城小学',
    address = NULL,
    id_card = '520103201211152870',
    updated_at = NOW()
WHERE name = '刘芷硕Eason'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘芷硕Eason', 82, '13595115250', NULL, '刘宇', '会展城小学', NULL, '520103201211152870', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘芷硕Eason' AND class_id = 82
);

-- Row 507: 蒋知均Colin @ 白象09班
UPDATE v2.students
SET phone = '13312211328',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = '450305201110281513',
    updated_at = NOW()
WHERE name = '蒋知均Colin'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋知均Colin', 82, '13312211328', NULL, NULL, NULL, NULL, '450305201110281513', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋知均Colin' AND class_id = 82
);

-- Row 508: 张亦萱Lisa @ 凤凰31班
UPDATE v2.students
SET phone = '18275377224',
    primary_guardian_type = '妈妈',
    parent_name = '王安丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张亦萱Lisa'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张亦萱Lisa', 46, '18275377224', '妈妈', '王安丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张亦萱Lisa' AND class_id = 46
);

-- Row 509: 朱玥颖Anna @ 凤凰31班
UPDATE v2.students
SET phone = '18593877077',
    primary_guardian_type = NULL,
    parent_name = '颜雯雪',
    school = '华东师范大学贵阳附属学校',
    address = '观山湖区睿力上城',
    id_card = '520102201611091628',
    updated_at = NOW()
WHERE name = '朱玥颖Anna'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱玥颖Anna', 46, '18593877077', NULL, '颜雯雪', '华东师范大学贵阳附属学校', '观山湖区睿力上城', '520102201611091628', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱玥颖Anna' AND class_id = 46
);

-- Row 510: 张皓轩Lucas @ 凤凰31班
UPDATE v2.students
SET phone = '13765842922',
    primary_guardian_type = NULL,
    parent_name = '肖婕',
    school = '贵阳市云岩小学',
    address = '贵阳市枫丹白鹭',
    id_card = '520103201611172811',
    updated_at = NOW()
WHERE name = '张皓轩Lucas'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张皓轩Lucas', 46, '13765842922', NULL, '肖婕', '贵阳市云岩小学', '贵阳市枫丹白鹭', '520103201611172811', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张皓轩Lucas' AND class_id = 46
);

-- Row 511: 孙若冲Archer @ 凤凰31班
UPDATE v2.students
SET phone = '15329013917',
    primary_guardian_type = '妈妈',
    parent_name = '罗巍',
    school = '尚义路小学',
    address = '黔江路江南苑小区',
    id_card = '520114201602011613',
    updated_at = NOW()
WHERE name = '孙若冲Archer'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙若冲Archer', 46, '15329013917', '妈妈', '罗巍', '尚义路小学', '黔江路江南苑小区', '520114201602011613', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙若冲Archer' AND class_id = 46
);

-- Row 512: 李晨汐Sunny @ 凤凰31班
UPDATE v2.students
SET phone = '15185174473',
    primary_guardian_type = '妈妈',
    parent_name = '罗瑶',
    school = '培之',
    address = '观山湖长岭南路',
    id_card = '520113201711081012',
    updated_at = NOW()
WHERE name = '李晨汐Sunny'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李晨汐Sunny', 46, '15185174473', '妈妈', '罗瑶', '培之', '观山湖长岭南路', '520113201711081012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李晨汐Sunny' AND class_id = 46
);

-- Row 513: 于润琨Owen @ 凤凰31班
UPDATE v2.students
SET phone = '13984057791',
    primary_guardian_type = NULL,
    parent_name = '邓念',
    school = '省府路小学',
    address = '云岩区小十字',
    id_card = '52010320171110041X',
    updated_at = NOW()
WHERE name = '于润琨Owen'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '于润琨Owen', 46, '13984057791', NULL, '邓念', '省府路小学', '云岩区小十字', '52010320171110041X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '于润琨Owen' AND class_id = 46
);

-- Row 514: 杨灏轩Herman @ 凤凰31班
UPDATE v2.students
SET phone = '18785333678',
    primary_guardian_type = NULL,
    parent_name = '杨维',
    school = '观山湖区外国语实验小学',
    address = '观山湖区金阳新世界',
    id_card = '520114201702091610',
    updated_at = NOW()
WHERE name = '杨灏轩Herman'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨灏轩Herman', 46, '18785333678', NULL, '杨维', '观山湖区外国语实验小学', '观山湖区金阳新世界', '520114201702091610', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨灏轩Herman' AND class_id = 46
);

-- Row 515: 熊奕宸Yoyo @ 凤凰31班
UPDATE v2.students
SET phone = '18585850632',
    primary_guardian_type = NULL,
    parent_name = '黄悦',
    school = '南明小学',
    address = '贵阳市南明区宝山南路',
    id_card = '520101201706141229',
    updated_at = NOW()
WHERE name = '熊奕宸Yoyo'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '熊奕宸Yoyo', 46, '18585850632', NULL, '黄悦', '南明小学', '贵阳市南明区宝山南路', '520101201706141229', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '熊奕宸Yoyo' AND class_id = 46
);

-- Row 516: 谢明垚Angela @ 凤凰31班
UPDATE v2.students
SET phone = '18798054557',
    primary_guardian_type = '妈妈',
    parent_name = '谢仕伟',
    school = '市东小学',
    address = '云岩区文昌北路',
    id_card = '520400201807173226',
    updated_at = NOW()
WHERE name = '谢明垚Angela'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢明垚Angela', 46, '18798054557', '妈妈', '谢仕伟', '市东小学', '云岩区文昌北路', '520400201807173226', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢明垚Angela' AND class_id = 46
);

-- Row 517: 吴柏炜Bart @ 凤凰31班
UPDATE v2.students
SET phone = '13639109573',
    primary_guardian_type = NULL,
    parent_name = '郭渊远',
    school = '清镇市博雅实验学校',
    address = '清镇市中环国际',
    id_card = '520181201801155712',
    updated_at = NOW()
WHERE name = '吴柏炜Bart'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴柏炜Bart', 46, '13639109573', NULL, '郭渊远', '清镇市博雅实验学校', '清镇市中环国际', '520181201801155712', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴柏炜Bart' AND class_id = 46
);

-- Row 518: 阮梓萌Ella @ 凤凰31班
UPDATE v2.students
SET phone = '18585031629',
    primary_guardian_type = NULL,
    parent_name = '阮俊淇',
    school = '南明区苗苗实验小学',
    address = '南明区花果园T1区',
    id_card = '520103201707122026',
    updated_at = NOW()
WHERE name = '阮梓萌Ella'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '阮梓萌Ella', 46, '18585031629', NULL, '阮俊淇', '南明区苗苗实验小学', '南明区花果园T1区', '520103201707122026', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '阮梓萌Ella' AND class_id = 46
);

-- Row 519: 罗季萌Nora @ 凤凰31班
UPDATE v2.students
SET phone = '13511995519',
    primary_guardian_type = '妈妈',
    parent_name = '马如天',
    school = '中天幼儿园',
    address = '贵阳市云岩区中建华府',
    id_card = '520103201807175221',
    updated_at = NOW()
WHERE name = '罗季萌Nora'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗季萌Nora', 46, '13511995519', '妈妈', '马如天', '中天幼儿园', '贵阳市云岩区中建华府', '520103201807175221', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗季萌Nora' AND class_id = 46
);

-- Row 520: 刘玥熙Cindy @ 凤凰31班
UPDATE v2.students
SET phone = '13924084728',
    primary_guardian_type = NULL,
    parent_name = '陆秀娇',
    school = '观山湖区外国语实验小学',
    address = '观山湖区恒大新世界',
    id_card = '520701201610290041',
    updated_at = NOW()
WHERE name = '刘玥熙Cindy'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘玥熙Cindy', 46, '13924084728', NULL, '陆秀娇', '观山湖区外国语实验小学', '观山湖区恒大新世界', '520701201610290041', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘玥熙Cindy' AND class_id = 46
);

-- Row 521: 刘彦博Zack @ 凤凰31班
UPDATE v2.students
SET phone = '18785093383',
    primary_guardian_type = NULL,
    parent_name = '吴思竺',
    school = '观山湖外国语小学',
    address = '观山湖新世界',
    id_card = '520115201807071612',
    updated_at = NOW()
WHERE name = '刘彦博Zack'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘彦博Zack', 46, '18785093383', NULL, '吴思竺', '观山湖外国语小学', '观山湖新世界', '520115201807071612', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘彦博Zack' AND class_id = 46
);

-- Row 522: 唐梓博 Toby @ 凤凰31班
UPDATE v2.students
SET phone = '18786982232',
    primary_guardian_type = NULL,
    parent_name = '唐梓博',
    school = '观山湖第九中学（小学部）',
    address = '贵阳市观山湖',
    id_card = '52038220170123041X',
    updated_at = NOW()
WHERE name = '唐梓博 Toby'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐梓博 Toby', 46, '18786982232', NULL, '唐梓博', '观山湖第九中学（小学部）', '贵阳市观山湖', '52038220170123041X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐梓博 Toby' AND class_id = 46
);

-- Row 523: 杜梦曦Kimi @ 凤凰31班
UPDATE v2.students
SET phone = '13984840017',
    primary_guardian_type = '妈妈',
    parent_name = '陈瑶',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杜梦曦Kimi'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜梦曦Kimi', 46, '13984840017', '妈妈', '陈瑶', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜梦曦Kimi' AND class_id = 46
);

-- Row 524: 郭奇妙Heidi @ 凤凰31班
UPDATE v2.students
SET phone = '13984094485',
    primary_guardian_type = '妈妈',
    parent_name = '曹清',
    school = '观山湖区外国语实验小学',
    address = '恒大新世界',
    id_card = '520115201712241420',
    updated_at = NOW()
WHERE name = '郭奇妙Heidi'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭奇妙Heidi', 46, '13984094485', '妈妈', '曹清', '观山湖区外国语实验小学', '恒大新世界', '520115201712241420', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭奇妙Heidi' AND class_id = 46
);

-- Row 525: 姜少杰Jay @ 凤凰31班
UPDATE v2.students
SET phone = '13765089761',
    primary_guardian_type = NULL,
    parent_name = '舒杨',
    school = '花溪四小',
    address = '贵阳市花溪区黄埔国际',
    id_card = '520114201611071817',
    updated_at = NOW()
WHERE name = '姜少杰Jay'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '姜少杰Jay', 46, '13765089761', NULL, '舒杨', '花溪四小', '贵阳市花溪区黄埔国际', '520114201611071817', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '姜少杰Jay' AND class_id = 46
);

-- Row 526: 胡璟怡Joyee @ 凤凰31班
UPDATE v2.students
SET phone = '18685140322',
    primary_guardian_type = NULL,
    parent_name = '吉利',
    school = '观山湖第三十二幼儿园',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡璟怡Joyee'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡璟怡Joyee', 46, '18685140322', NULL, '吉利', '观山湖第三十二幼儿园', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡璟怡Joyee' AND class_id = 46
);

-- Row 527: 黄思妤Emily @ 凤凰31班
UPDATE v2.students
SET phone = '13984330033',
    primary_guardian_type = NULL,
    parent_name = '于岚',
    school = '环东小学',
    address = '南明区机场路18号',
    id_card = '520102201808070820',
    updated_at = NOW()
WHERE name = '黄思妤Emily'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄思妤Emily', 46, '13984330033', NULL, '于岚', '环东小学', '南明区机场路18号', '520102201808070820', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄思妤Emily' AND class_id = 46
);

-- Row 528: 董诗蕊Luna @ 凤凰31班
UPDATE v2.students
SET phone = '15685500052',
    primary_guardian_type = NULL,
    parent_name = '王丹',
    school = '贵阳市实验小学',
    address = '贵阳市云岩区北京西路',
    id_card = '520103201704262824',
    updated_at = NOW()
WHERE name = '董诗蕊Luna'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '董诗蕊Luna', 46, '15685500052', NULL, '王丹', '贵阳市实验小学', '贵阳市云岩区北京西路', '520103201704262824', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '董诗蕊Luna' AND class_id = 46
);

-- Row 529: 陈卓轩Kim @ 凤凰31班
UPDATE v2.students
SET phone = '13985431449',
    primary_guardian_type = NULL,
    parent_name = '陈春',
    school = '甲秀小学',
    address = '南明区观风路2号',
    id_card = '520102201805161217',
    updated_at = NOW()
WHERE name = '陈卓轩Kim'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈卓轩Kim', 46, '13985431449', NULL, '陈春', '甲秀小学', '南明区观风路2号', '520102201805161217', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈卓轩Kim' AND class_id = 46
);

-- Row 530: 陈昱衡Abel @ 凤凰31班
UPDATE v2.students
SET phone = '13885094550',
    primary_guardian_type = NULL,
    parent_name = '杨端',
    school = '环西小学',
    address = '智慧龙城',
    id_card = '520102201803212033',
    updated_at = NOW()
WHERE name = '陈昱衡Abel'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈昱衡Abel', 46, '13885094550', NULL, '杨端', '环西小学', '智慧龙城', '520102201803212033', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈昱衡Abel' AND class_id = 46
);

-- Row 531: 陈柚竹Nena @ 凤凰31班
UPDATE v2.students
SET phone = '13985431449',
    primary_guardian_type = NULL,
    parent_name = '陈春',
    school = '甲秀小学',
    address = '南明区观风路2号',
    id_card = '520102201805161225',
    updated_at = NOW()
WHERE name = '陈柚竹Nena'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈柚竹Nena', 46, '13985431449', NULL, '陈春', '甲秀小学', '南明区观风路2号', '520102201805161225', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈柚竹Nena' AND class_id = 46
);

-- Row 532: 曾晨Virgil @ 凤凰31班
UPDATE v2.students
SET phone = '18685051217',
    primary_guardian_type = NULL,
    parent_name = '朱红霞',
    school = '花溪区第二小学',
    address = '花溪区溪山御景',
    id_card = '520111201702086038',
    updated_at = NOW()
WHERE name = '曾晨Virgil'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾晨Virgil', 46, '18685051217', NULL, '朱红霞', '花溪区第二小学', '花溪区溪山御景', '520111201702086038', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾晨Virgil' AND class_id = 46
);

-- Row 533: 韩正好Claire @ 凤凰31班
UPDATE v2.students
SET phone = '13628512185',
    primary_guardian_type = '妈妈',
    parent_name = '郑雁华',
    school = '贵阳市实验小学',
    address = '云岩区市北路黔灵半山',
    id_card = '520103201710265247',
    updated_at = NOW()
WHERE name = '韩正好Claire'
  AND class_id = 46;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韩正好Claire', 46, '13628512185', '妈妈', '郑雁华', '贵阳市实验小学', '云岩区市北路黔灵半山', '520103201710265247', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韩正好Claire' AND class_id = 46
);

-- Row 534: 周锦瑞Jack @ 凤凰30班
UPDATE v2.students
SET phone = '18275057637',
    primary_guardian_type = '妈妈',
    parent_name = '罗显暇',
    school = '清镇市红枫三小',
    address = '清镇云梦小镇',
    id_card = '520181201705282113',
    updated_at = NOW()
WHERE name = '周锦瑞Jack'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周锦瑞Jack', 45, '18275057637', '妈妈', '罗显暇', '清镇市红枫三小', '清镇云梦小镇', '520181201705282113', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周锦瑞Jack' AND class_id = 45
);

-- Row 535: 张赵优Yoyo @ 凤凰30班
UPDATE v2.students
SET phone = '18286090703',
    primary_guardian_type = NULL,
    parent_name = '赵斐',
    school = '省府路小学',
    address = '云岩区省府路贵府',
    id_card = '520102201801225025',
    updated_at = NOW()
WHERE name = '张赵优Yoyo'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张赵优Yoyo', 45, '18286090703', NULL, '赵斐', '省府路小学', '云岩区省府路贵府', '520102201801225025', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张赵优Yoyo' AND class_id = 45
);

-- Row 536: 于子媛Bella @ 凤凰30班
UPDATE v2.students
SET phone = '15185100377',
    primary_guardian_type = NULL,
    parent_name = '陈南君',
    school = '环西小学',
    address = '南明区油榨街',
    id_card = '520103201703264828',
    updated_at = NOW()
WHERE name = '于子媛Bella'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '于子媛Bella', 45, '15185100377', NULL, '陈南君', '环西小学', '南明区油榨街', '520103201703264828', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '于子媛Bella' AND class_id = 45
);

-- Row 537: 王登尧Derek @ 凤凰30班
UPDATE v2.students
SET phone = '13984406046',
    primary_guardian_type = '妈妈',
    parent_name = '周果曦',
    school = '南明小学',
    address = '碧丽园小区',
    id_card = '520103201804145211',
    updated_at = NOW()
WHERE name = '王登尧Derek'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王登尧Derek', 45, '13984406046', '妈妈', '周果曦', '南明小学', '碧丽园小区', '520103201804145211', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王登尧Derek' AND class_id = 45
);

-- Row 538: 余晨溪Cherry @ 凤凰30班
UPDATE v2.students
SET phone = '18585866076',
    primary_guardian_type = '妈妈',
    parent_name = '刘莉',
    school = '甲秀小学',
    address = '云岩区油榨街',
    id_card = '520103201808078060',
    updated_at = NOW()
WHERE name = '余晨溪Cherry'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余晨溪Cherry', 45, '18585866076', '妈妈', '刘莉', '甲秀小学', '云岩区油榨街', '520103201808078060', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余晨溪Cherry' AND class_id = 45
);

-- Row 539: 杨经宣Sharon @ 凤凰30班
UPDATE v2.students
SET phone = '15599129399',
    primary_guardian_type = NULL,
    parent_name = '杨洋',
    school = '云岩区向阳实验小学',
    address = '云岩区未来方舟',
    id_card = '520103201802038025',
    updated_at = NOW()
WHERE name = '杨经宣Sharon'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨经宣Sharon', 45, '15599129399', NULL, '杨洋', '云岩区向阳实验小学', '云岩区未来方舟', '520103201802038025', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨经宣Sharon' AND class_id = 45
);

-- Row 540: 谢彧宥Shawn @ 凤凰30班
UPDATE v2.students
SET phone = '15902688853',
    primary_guardian_type = NULL,
    parent_name = '罗元',
    school = '实验三小',
    address = '金阳街',
    id_card = '52010320170421033',
    updated_at = NOW()
WHERE name = '谢彧宥Shawn'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢彧宥Shawn', 45, '15902688853', NULL, '罗元', '实验三小', '金阳街', '52010320170421033', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢彧宥Shawn' AND class_id = 45
);

-- Row 541: 魏钰宸Nora @ 凤凰30班
UPDATE v2.students
SET phone = '18685135973',
    primary_guardian_type = NULL,
    parent_name = '苏丹',
    school = '尚义路小学',
    address = '南明区沙冲南路',
    id_card = '520102201711093823',
    updated_at = NOW()
WHERE name = '魏钰宸Nora'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '魏钰宸Nora', 45, '18685135973', NULL, '苏丹', '尚义路小学', '南明区沙冲南路', '520102201711093823', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '魏钰宸Nora' AND class_id = 45
);

-- Row 542: 王誉涵Vivian @ 凤凰30班
UPDATE v2.students
SET phone = '18084356307',
    primary_guardian_type = NULL,
    parent_name = '夏芳',
    school = '贵阳市实验小学',
    address = '云岩区银通山庄',
    id_card = '520103201807208425',
    updated_at = NOW()
WHERE name = '王誉涵Vivian'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王誉涵Vivian', 45, '18084356307', NULL, '夏芳', '贵阳市实验小学', '云岩区银通山庄', '520103201807208425', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王誉涵Vivian' AND class_id = 45
);

-- Row 543: 王庚望Roy @ 凤凰30班
UPDATE v2.students
SET phone = '18685412813',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '贵阳市实验小学',
    address = '南明区玉溪路',
    id_card = '520102201807153819',
    updated_at = NOW()
WHERE name = '王庚望Roy'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王庚望Roy', 45, '18685412813', '妈妈', NULL, '贵阳市实验小学', '南明区玉溪路', '520102201807153819', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王庚望Roy' AND class_id = 45
);

-- Row 544: 涂一晨Tara @ 凤凰30班
UPDATE v2.students
SET phone = '13118501555',
    primary_guardian_type = NULL,
    parent_name = '刘琴',
    school = '北师大附小',
    address = '观山湖区美的林城',
    id_card = '520115201705261626',
    updated_at = NOW()
WHERE name = '涂一晨Tara'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '涂一晨Tara', 45, '13118501555', NULL, '刘琴', '北师大附小', '观山湖区美的林城', '520115201705261626', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '涂一晨Tara' AND class_id = 45
);

-- Row 545: 田登文Devin @ 凤凰30班
UPDATE v2.students
SET phone = '18984861137',
    primary_guardian_type = NULL,
    parent_name = '薛洪霞',
    school = '尚义路小学',
    address = '首开紫郡',
    id_card = '520102201703168215',
    updated_at = NOW()
WHERE name = '田登文Devin'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '田登文Devin', 45, '18984861137', NULL, '薛洪霞', '尚义路小学', '首开紫郡', '520102201703168215', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '田登文Devin' AND class_id = 45
);

-- Row 546: 汤玉蘅Yulia @ 凤凰30班
UPDATE v2.students
SET phone = '18786122130',
    primary_guardian_type = NULL,
    parent_name = '汤成伟',
    school = '贵阳市实验小学',
    address = '云岩区乐湾国际',
    id_card = '520102201703097445',
    updated_at = NOW()
WHERE name = '汤玉蘅Yulia'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汤玉蘅Yulia', 45, '18786122130', NULL, '汤成伟', '贵阳市实验小学', '云岩区乐湾国际', '520102201703097445', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汤玉蘅Yulia' AND class_id = 45
);

-- Row 547: 李岩熙Robert @ 凤凰30班
UPDATE v2.students
SET phone = '13007814209',
    primary_guardian_type = '妈妈',
    parent_name = '蔡媛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李岩熙Robert'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李岩熙Robert', 45, '13007814209', '妈妈', '蔡媛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李岩熙Robert' AND class_id = 45
);

-- Row 548: 秦爽Anna @ 凤凰30班
UPDATE v2.students
SET phone = '18585066500',
    primary_guardian_type = '妈妈',
    parent_name = '黄敏',
    school = '贵阳市实验小学',
    address = '云岩区中央公园',
    id_card = '520103201806260424',
    updated_at = NOW()
WHERE name = '秦爽Anna'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '秦爽Anna', 45, '18585066500', '妈妈', '黄敏', '贵阳市实验小学', '云岩区中央公园', '520103201806260424', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '秦爽Anna' AND class_id = 45
);

-- Row 549: 汤浩森Tonio @ 凤凰30班
UPDATE v2.students
SET phone = '15885058801',
    primary_guardian_type = '妈妈',
    parent_name = '丁宾',
    school = '北京朝阳区实验小学贵阳分校',
    address = '中央公园',
    id_card = '520103201609110419',
    updated_at = NOW()
WHERE name = '汤浩森Tonio'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汤浩森Tonio', 45, '15885058801', '妈妈', '丁宾', '北京朝阳区实验小学贵阳分校', '中央公园', '520103201609110419', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汤浩森Tonio' AND class_id = 45
);

-- Row 550: 邱贞瑀Jennie @ 凤凰30班
UPDATE v2.students
SET phone = '18985338833',
    primary_guardian_type = NULL,
    parent_name = '彭莉杉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邱贞瑀Jennie'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邱贞瑀Jennie', 45, '18985338833', NULL, '彭莉杉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邱贞瑀Jennie' AND class_id = 45
);

-- Row 551: 秦子媛Lavinia @ 凤凰30班
UPDATE v2.students
SET phone = '17785159095',
    primary_guardian_type = NULL,
    parent_name = '潘忠俊',
    school = '云岩一小',
    address = '金狮小区',
    id_card = '520103201701301621',
    updated_at = NOW()
WHERE name = '秦子媛Lavinia'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '秦子媛Lavinia', 45, '17785159095', NULL, '潘忠俊', '云岩一小', '金狮小区', '520103201701301621', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '秦子媛Lavinia' AND class_id = 45
);

-- Row 552: 罗文妤Kela @ 凤凰30班
UPDATE v2.students
SET phone = '13595158699',
    primary_guardian_type = NULL,
    parent_name = '王华美',
    school = '贵阳市实验小学',
    address = '云岩区新城路11号',
    id_card = '520102201806257026',
    updated_at = NOW()
WHERE name = '罗文妤Kela'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗文妤Kela', 45, '13595158699', NULL, '王华美', '贵阳市实验小学', '云岩区新城路11号', '520102201806257026', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗文妤Kela' AND class_id = 45
);

-- Row 553: 罗晨曦Sunny @ 凤凰30班
UPDATE v2.students
SET phone = '18285109248',
    primary_guardian_type = NULL,
    parent_name = '许国敏',
    school = '甲秀小学',
    address = '南明区新华路',
    id_card = '520112201806033623',
    updated_at = NOW()
WHERE name = '罗晨曦Sunny'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗晨曦Sunny', 45, '18285109248', NULL, '许国敏', '甲秀小学', '南明区新华路', '520112201806033623', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗晨曦Sunny' AND class_id = 45
);

-- Row 554: 刘暄涵Riley @ 凤凰30班
UPDATE v2.students
SET phone = '15985305614',
    primary_guardian_type = NULL,
    parent_name = '刘建刚',
    school = '甲秀小学',
    address = '云岩区中华',
    id_card = '520421201705280089',
    updated_at = NOW()
WHERE name = '刘暄涵Riley'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘暄涵Riley', 45, '15985305614', NULL, '刘建刚', '甲秀小学', '云岩区中华', '520421201705280089', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘暄涵Riley' AND class_id = 45
);

-- Row 555: 况政禹Yuta @ 凤凰30班
UPDATE v2.students
SET phone = '13765819824',
    primary_guardian_type = '妈妈',
    parent_name = '孙蔺波',
    school = '省府路小学',
    address = NULL,
    id_card = '520103201805300412',
    updated_at = NOW()
WHERE name = '况政禹Yuta'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '况政禹Yuta', 45, '13765819824', '妈妈', '孙蔺波', '省府路小学', NULL, '520103201805300412', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '况政禹Yuta' AND class_id = 45
);

-- Row 556: 姜北辰Lucas @ 凤凰30班
UPDATE v2.students
SET phone = '15108503991',
    primary_guardian_type = NULL,
    parent_name = '梁',
    school = '实验小学未来方舟分校',
    address = '云岩区未来方舟',
    id_card = '520112201806290013',
    updated_at = NOW()
WHERE name = '姜北辰Lucas'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '姜北辰Lucas', 45, '15108503991', NULL, '梁', '实验小学未来方舟分校', '云岩区未来方舟', '520112201806290013', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '姜北辰Lucas' AND class_id = 45
);

-- Row 557: 胡诗亚Amy @ 凤凰30班
UPDATE v2.students
SET phone = '18785160399',
    primary_guardian_type = NULL,
    parent_name = '王明月',
    school = '尚义路小学',
    address = '南明区遵义路',
    id_card = '520122201708020047',
    updated_at = NOW()
WHERE name = '胡诗亚Amy'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡诗亚Amy', 45, '18785160399', NULL, '王明月', '尚义路小学', '南明区遵义路', '520122201708020047', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡诗亚Amy' AND class_id = 45
);

-- Row 558: 黄姝陌Abby @ 凤凰30班
UPDATE v2.students
SET phone = '13984056917',
    primary_guardian_type = '妈妈',
    parent_name = '刘倩',
    school = '实验二小',
    address = '云岩区盐务街',
    id_card = '520103201703165627',
    updated_at = NOW()
WHERE name = '黄姝陌Abby'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄姝陌Abby', 45, '13984056917', '妈妈', '刘倩', '实验二小', '云岩区盐务街', '520103201703165627', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄姝陌Abby' AND class_id = 45
);

-- Row 559: 杜嘉怡Janet @ 凤凰30班
UPDATE v2.students
SET phone = '18083165891',
    primary_guardian_type = NULL,
    parent_name = '代优',
    school = '南明小学',
    address = '南明区恒大南明御府',
    id_card = '522526199008060020',
    updated_at = NOW()
WHERE name = '杜嘉怡Janet'
  AND class_id = 45;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜嘉怡Janet', 45, '18083165891', NULL, '代优', '南明小学', '南明区恒大南明御府', '522526199008060020', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜嘉怡Janet' AND class_id = 45
);

-- Row 572: 赵奕宸Ethan @ 大锦鲤43班
UPDATE v2.students
SET phone = '18586911088',
    primary_guardian_type = '妈妈',
    parent_name = '李竹筠',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵奕宸Ethan'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵奕宸Ethan', 26, '18586911088', '妈妈', '李竹筠', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵奕宸Ethan' AND class_id = 26
);

-- Row 573: 胥洋铭Remy @ 大锦鲤43班
UPDATE v2.students
SET phone = '15597709354',
    primary_guardian_type = '妈妈',
    parent_name = '张馨文',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胥洋铭Remy'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胥洋铭Remy', 26, '15597709354', '妈妈', '张馨文', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胥洋铭Remy' AND class_id = 26
);

-- Row 574: 杨承正宇Elio @ 大锦鲤43班
UPDATE v2.students
SET phone = '13885073057',
    primary_guardian_type = '妈妈',
    parent_name = '罗庆丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨承正宇Elio'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨承正宇Elio', 26, '13885073057', '妈妈', '罗庆丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨承正宇Elio' AND class_id = 26
);

-- Row 575: 龚可儿 Coco @ 大锦鲤43班
UPDATE v2.students
SET phone = '13595017468',
    primary_guardian_type = '妈妈',
    parent_name = '魏娜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '龚可儿 Coco'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龚可儿 Coco', 26, '13595017468', '妈妈', '魏娜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龚可儿 Coco' AND class_id = 26
);

-- Row 576: 柳昕仪 Iris @ 大锦鲤43班
UPDATE v2.students
SET phone = '18508516098',
    primary_guardian_type = '妈妈',
    parent_name = '丁洁',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '柳昕仪 Iris'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '柳昕仪 Iris', 26, '18508516098', '妈妈', '丁洁', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '柳昕仪 Iris' AND class_id = 26
);

-- Row 577: 韦竣凯Felix @ 大锦鲤43班
UPDATE v2.students
SET phone = '15902686737',
    primary_guardian_type = '妈妈',
    parent_name = '吴迪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '韦竣凯Felix'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韦竣凯Felix', 26, '15902686737', '妈妈', '吴迪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韦竣凯Felix' AND class_id = 26
);

-- Row 578: 萧佩玲Penny @ 大锦鲤43班
UPDATE v2.students
SET phone = '15985114367',
    primary_guardian_type = '妈妈',
    parent_name = '王丹萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '萧佩玲Penny'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '萧佩玲Penny', 26, '15985114367', '妈妈', '王丹萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '萧佩玲Penny' AND class_id = 26
);

-- Row 579: 蔡宥琛 Jasper @ 大锦鲤43班
UPDATE v2.students
SET phone = '17785110095',
    primary_guardian_type = '妈妈',
    parent_name = '蔡燕羽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蔡宥琛 Jasper'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蔡宥琛 Jasper', 26, '17785110095', '妈妈', '蔡燕羽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蔡宥琛 Jasper' AND class_id = 26
);

-- Row 580: 胡政煊 Gary @ 大锦鲤43班
UPDATE v2.students
SET phone = '13027829787',
    primary_guardian_type = '妈妈',
    parent_name = '胡琛翼',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡政煊 Gary'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡政煊 Gary', 26, '13027829787', '妈妈', '胡琛翼', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡政煊 Gary' AND class_id = 26
);

-- Row 581: 高语宸 Grace @ 大锦鲤43班
UPDATE v2.students
SET phone = '18096061896',
    primary_guardian_type = '妈妈',
    parent_name = '陈玉合',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '高语宸 Grace'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高语宸 Grace', 26, '18096061896', '妈妈', '陈玉合', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高语宸 Grace' AND class_id = 26
);

-- Row 582: 王馨怡 Nora @ 大锦鲤43班
UPDATE v2.students
SET phone = '13878497341',
    primary_guardian_type = '妈妈',
    parent_name = '曾敏丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王馨怡 Nora'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王馨怡 Nora', 26, '13878497341', '妈妈', '曾敏丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王馨怡 Nora' AND class_id = 26
);

-- Row 583: 李浩辰 Lucas @ 大锦鲤43班
UPDATE v2.students
SET phone = '18185105036',
    primary_guardian_type = '妈妈',
    parent_name = '杨婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李浩辰 Lucas'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李浩辰 Lucas', 26, '18185105036', '妈妈', '杨婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李浩辰 Lucas' AND class_id = 26
);

-- Row 584: 刘卓睿Ryan @ 大锦鲤43班
UPDATE v2.students
SET phone = '18198572961',
    primary_guardian_type = '妈妈',
    parent_name = '李志英',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘卓睿Ryan'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘卓睿Ryan', 26, '18198572961', '妈妈', '李志英', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘卓睿Ryan' AND class_id = 26
);

-- Row 614: 周凌玮 Atticus @ 大锦鲤42班
UPDATE v2.students
SET phone = '17784116868',
    primary_guardian_type = '妈妈',
    parent_name = '王安琪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周凌玮 Atticus'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周凌玮 Atticus', 25, '17784116868', '妈妈', '王安琪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周凌玮 Atticus' AND class_id = 25
);

-- Row 615: 万钰熙 Yuki @ 大锦鲤42班
UPDATE v2.students
SET phone = '18300881797',
    primary_guardian_type = '妈妈',
    parent_name = '陈晓帆',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '万钰熙 Yuki'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '万钰熙 Yuki', 25, '18300881797', '妈妈', '陈晓帆', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '万钰熙 Yuki' AND class_id = 25
);

-- Row 616: 王从憬 Woody @ 大锦鲤42班
UPDATE v2.students
SET phone = '18984579855',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王从憬 Woody'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王从憬 Woody', 25, '18984579855', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王从憬 Woody' AND class_id = 25
);

-- Row 617: 王翰钦 Henry @ 大锦鲤42班
UPDATE v2.students
SET phone = '15185041524',
    primary_guardian_type = '妈妈',
    parent_name = '代优',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王翰钦 Henry'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王翰钦 Henry', 25, '15185041524', '妈妈', '代优', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王翰钦 Henry' AND class_id = 25
);

-- Row 618: 杨致嘉 Pudding @ 大锦鲤42班
UPDATE v2.students
SET phone = '13885088522',
    primary_guardian_type = '妈妈',
    parent_name = '徐莎',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨致嘉 Pudding'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨致嘉 Pudding', 25, '13885088522', '妈妈', '徐莎', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨致嘉 Pudding' AND class_id = 25
);

-- Row 619: 张继篪 Joe @ 大锦鲤42班
UPDATE v2.students
SET phone = '18684126701',
    primary_guardian_type = NULL,
    parent_name = '蒋立佳',
    school = '实验三幼',
    address = '云岩区北京西路',
    id_card = '52010320190811281X',
    updated_at = NOW()
WHERE name = '张继篪 Joe'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张继篪 Joe', 25, '18684126701', NULL, '蒋立佳', '实验三幼', '云岩区北京西路', '52010320190811281X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张继篪 Joe' AND class_id = 25
);

-- Row 620: 黎诗语 Candy @ 大锦鲤42班
UPDATE v2.students
SET phone = '18984045139',
    primary_guardian_type = '妈妈',
    parent_name = '陈霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黎诗语 Candy'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黎诗语 Candy', 25, '18984045139', '妈妈', '陈霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黎诗语 Candy' AND class_id = 25
);

-- Row 621: 蒙祉潇 Matt @ 大锦鲤42班
UPDATE v2.students
SET phone = '18984057070',
    primary_guardian_type = '妈妈',
    parent_name = '黄林燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒙祉潇 Matt'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒙祉潇 Matt', 25, '18984057070', '妈妈', '黄林燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒙祉潇 Matt' AND class_id = 25
);

-- Row 622: 李婕柠 Lauren @ 大锦鲤42班
UPDATE v2.students
SET phone = '13007849988',
    primary_guardian_type = '妈妈',
    parent_name = '于婕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李婕柠 Lauren'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李婕柠 Lauren', 25, '13007849988', '妈妈', '于婕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李婕柠 Lauren' AND class_id = 25
);

-- Row 623: 韩奇臻 Zane @ 大锦鲤42班
UPDATE v2.students
SET phone = '15285117418',
    primary_guardian_type = '妈妈',
    parent_name = '潘思竹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '韩奇臻 Zane'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韩奇臻 Zane', 25, '15285117418', '妈妈', '潘思竹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韩奇臻 Zane' AND class_id = 25
);

-- Row 624: 陈泽睿 Jerry @ 大锦鲤42班
UPDATE v2.students
SET phone = '13984355110',
    primary_guardian_type = '妈妈',
    parent_name = '周洪媛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈泽睿 Jerry'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈泽睿 Jerry', 25, '13984355110', '妈妈', '周洪媛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈泽睿 Jerry' AND class_id = 25
);

-- Row 625: 黄麟唯 Leo @ 大锦鲤42班
UPDATE v2.students
SET phone = '15985111987',
    primary_guardian_type = '妈妈',
    parent_name = '黄璜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄麟唯 Leo'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄麟唯 Leo', 25, '15985111987', '妈妈', '黄璜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄麟唯 Leo' AND class_id = 25
);

-- Row 626: 程莙雅 Ada @ 大锦鲤42班
UPDATE v2.students
SET phone = '18685446877',
    primary_guardian_type = '妈妈',
    parent_name = '雷米佳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '程莙雅 Ada'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '程莙雅 Ada', 25, '18685446877', '妈妈', '雷米佳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '程莙雅 Ada' AND class_id = 25
);

-- Row 627: 常芮宁 Nina @ 大锦鲤42班
UPDATE v2.students
SET phone = '13885089988',
    primary_guardian_type = '妈妈',
    parent_name = '付玉梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '常芮宁 Nina'
  AND class_id = 25;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '常芮宁 Nina', 25, '13885089988', '妈妈', '付玉梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '常芮宁 Nina' AND class_id = 25
);

-- Row 628: 余睿泉Rachel @ 白象08班
UPDATE v2.students
SET phone = '13885018543',
    primary_guardian_type = '妈妈',
    parent_name = '屈婉超',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '余睿泉Rachel'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余睿泉Rachel', 81, '13885018543', '妈妈', '屈婉超', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余睿泉Rachel' AND class_id = 81
);

-- Row 629: 钟雨晴Ariaden @ 白象08班
UPDATE v2.students
SET phone = '18932000755',
    primary_guardian_type = '妈妈',
    parent_name = '蒲菌',
    school = '李端棻中学',
    address = '花果园S区',
    id_card = '52010220111202202X',
    updated_at = NOW()
WHERE name = '钟雨晴Ariaden'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '钟雨晴Ariaden', 81, '18932000755', '妈妈', '蒲菌', '李端棻中学', '花果园S区', '52010220111202202X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '钟雨晴Ariaden' AND class_id = 81
);

-- Row 630: 蔡坤城 Camellia @ 白象08班
UPDATE v2.students
SET phone = '13985469770',
    primary_guardian_type = '妈妈',
    parent_name = '蔡永仲',
    school = '尚义路小学',
    address = '南明区遵义路碧桂园星作',
    id_card = '52010320136029269',
    updated_at = NOW()
WHERE name = '蔡坤城 Camellia'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蔡坤城 Camellia', 81, '13985469770', '妈妈', '蔡永仲', '尚义路小学', '南明区遵义路碧桂园星作', '52010320136029269', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蔡坤城 Camellia' AND class_id = 81
);

-- Row 631: 管清熠Eason @ 白象08班
UPDATE v2.students
SET phone = '18985005311',
    primary_guardian_type = '妈妈',
    parent_name = '周亚男',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '管清熠Eason'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '管清熠Eason', 81, '18985005311', '妈妈', '周亚男', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '管清熠Eason' AND class_id = 81
);

-- Row 632: 雷贞昕Cindy @ 白象08班
UPDATE v2.students
SET phone = '13608563744',
    primary_guardian_type = '妈妈',
    parent_name = '杨眉',
    school = '中天北京小学',
    address = '宝山北路',
    id_card = '520102201211271267',
    updated_at = NOW()
WHERE name = '雷贞昕Cindy'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '雷贞昕Cindy', 81, '13608563744', '妈妈', '杨眉', '中天北京小学', '宝山北路', '520102201211271267', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '雷贞昕Cindy' AND class_id = 81
);

-- Row 633: 鄢礼悦然 Flora @ 白象08班
UPDATE v2.students
SET phone = '13595068257',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '贵阳市第二实验小学',
    address = '云岩区梦想典城',
    id_card = '52010320110926362X',
    updated_at = NOW()
WHERE name = '鄢礼悦然 Flora'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '鄢礼悦然 Flora', 81, '13595068257', '妈妈', NULL, '贵阳市第二实验小学', '云岩区梦想典城', '52010320110926362X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '鄢礼悦然 Flora' AND class_id = 81
);

-- Row 634: 叶其灵 Sharon @ 白象08班
UPDATE v2.students
SET phone = '18685172668',
    primary_guardian_type = '妈妈',
    parent_name = '斯俊',
    school = NULL,
    address = NULL,
    id_card = '52010320130708442X',
    updated_at = NOW()
WHERE name = '叶其灵 Sharon'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '叶其灵 Sharon', 81, '18685172668', '妈妈', '斯俊', NULL, NULL, '52010320130708442X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '叶其灵 Sharon' AND class_id = 81
);

-- Row 635: 闵子晋 Jimmy @ 白象08班
UPDATE v2.students
SET phone = '18685129420',
    primary_guardian_type = '妈妈',
    parent_name = '闵枢',
    school = '南明小学',
    address = '南明区龙洞路',
    id_card = '520102201305272033',
    updated_at = NOW()
WHERE name = '闵子晋 Jimmy'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '闵子晋 Jimmy', 81, '18685129420', '妈妈', '闵枢', '南明小学', '南明区龙洞路', '520102201305272033', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '闵子晋 Jimmy' AND class_id = 81
);

-- Row 636: 李欣懿Shirley @ 白象08班
UPDATE v2.students
SET phone = '18984112668',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '华麟学校',
    address = NULL,
    id_card = '520103201303074021',
    updated_at = NOW()
WHERE name = '李欣懿Shirley'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李欣懿Shirley', 81, '18984112668', NULL, NULL, '华麟学校', NULL, '520103201303074021', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李欣懿Shirley' AND class_id = 81
);

-- Row 637: 吴晨语Amanda @ 白象08班
UPDATE v2.students
SET phone = '13885053456',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '乐湾学校',
    address = '智慧龙城',
    id_card = '331081201212235968',
    updated_at = NOW()
WHERE name = '吴晨语Amanda'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴晨语Amanda', 81, '13885053456', NULL, NULL, '乐湾学校', '智慧龙城', '331081201212235968', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴晨语Amanda' AND class_id = 81
);

-- Row 638: 余展鹏Allen @ 麒麟12班
UPDATE v2.students
SET phone = '13985408828',
    primary_guardian_type = '妈妈',
    parent_name = '朱江兰',
    school = '向阳实验小学',
    address = '未来方舟',
    id_card = '520103201401176419',
    updated_at = NOW()
WHERE name = '余展鹏Allen'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余展鹏Allen', 72, '13985408828', '妈妈', '朱江兰', '向阳实验小学', '未来方舟', '520103201401176419', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余展鹏Allen' AND class_id = 72
);

-- Row 639: 张谦益Brody @ 麒麟12班
UPDATE v2.students
SET phone = '13594065792',
    primary_guardian_type = '妈妈',
    parent_name = '卢全全',
    school = '中天北京小学',
    address = '师大',
    id_card = '500103201504026217',
    updated_at = NOW()
WHERE name = '张谦益Brody'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张谦益Brody', 72, '13594065792', '妈妈', '卢全全', '中天北京小学', '师大', '500103201504026217', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张谦益Brody' AND class_id = 72
);

-- Row 640: 赵培淇Susan @ 麒麟12班
UPDATE v2.students
SET phone = '13885177378',
    primary_guardian_type = '妈妈',
    parent_name = '王岚',
    school = '北师大附小',
    address = NULL,
    id_card = '520103201606089028',
    updated_at = NOW()
WHERE name = '赵培淇Susan'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵培淇Susan', 72, '13885177378', '妈妈', '王岚', '北师大附小', NULL, '520103201606089028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵培淇Susan' AND class_id = 72
);

-- Row 641: 易靖研Donna @ 麒麟12班
UPDATE v2.students
SET phone = '13595464632',
    primary_guardian_type = '妈妈',
    parent_name = '吴毓园',
    school = '龙里县第一小学',
    address = NULL,
    id_card = '522730201403270023',
    updated_at = NOW()
WHERE name = '易靖研Donna'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '易靖研Donna', 72, '13595464632', '妈妈', '吴毓园', '龙里县第一小学', NULL, '522730201403270023', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '易靖研Donna' AND class_id = 72
);

-- Row 642: 张舒涵Rose @ 麒麟12班
UPDATE v2.students
SET phone = '18188006513',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '环西小学',
    address = '南明区',
    id_card = '520102201407152024',
    updated_at = NOW()
WHERE name = '张舒涵Rose'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张舒涵Rose', 72, '18188006513', NULL, NULL, '环西小学', '南明区', '520102201407152024', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张舒涵Rose' AND class_id = 72
);

-- Row 643: 张恩悦Summer @ 麒麟12班
UPDATE v2.students
SET phone = '13511932723',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '云岩区向阳实验小学',
    address = '保利温泉',
    id_card = '520103201405051242',
    updated_at = NOW()
WHERE name = '张恩悦Summer'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张恩悦Summer', 72, '13511932723', NULL, NULL, '云岩区向阳实验小学', '保利温泉', '520103201405051242', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张恩悦Summer' AND class_id = 72
);

-- Row 644: 吴一苇 Ariana @ 麒麟12班
UPDATE v2.students
SET phone = '13765115560',
    primary_guardian_type = '妈妈',
    parent_name = '周梦',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴一苇 Ariana'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴一苇 Ariana', 72, '13765115560', '妈妈', '周梦', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴一苇 Ariana' AND class_id = 72
);

-- Row 645: 王先乐 Tina @ 麒麟12班
UPDATE v2.students
SET phone = '15985191770',
    primary_guardian_type = '妈妈',
    parent_name = '敖胜琴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王先乐 Tina'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王先乐 Tina', 72, '15985191770', '妈妈', '敖胜琴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王先乐 Tina' AND class_id = 72
);

-- Row 646: 滕芮宁Lucy @ 麒麟12班
UPDATE v2.students
SET phone = '13985118743',
    primary_guardian_type = NULL,
    parent_name = '徐萍',
    school = '省府路小学',
    address = '中天世纪新城',
    id_card = '520102201301037028',
    updated_at = NOW()
WHERE name = '滕芮宁Lucy'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '滕芮宁Lucy', 72, '13985118743', NULL, '徐萍', '省府路小学', '中天世纪新城', '520102201301037028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '滕芮宁Lucy' AND class_id = 72
);

-- Row 647: 王雨萱Orange @ 麒麟12班
UPDATE v2.students
SET phone = '13765564404',
    primary_guardian_type = '妈妈',
    parent_name = '汪悦',
    school = '南明小学',
    address = '师范大学',
    id_card = '522601201402190024',
    updated_at = NOW()
WHERE name = '王雨萱Orange'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王雨萱Orange', 72, '13765564404', '妈妈', '汪悦', '南明小学', '师范大学', '522601201402190024', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王雨萱Orange' AND class_id = 72
);

-- Row 648: 杨隽铭Daniel @ 麒麟12班
UPDATE v2.students
SET phone = '13885109471',
    primary_guardian_type = '妈妈',
    parent_name = '唐毛英',
    school = '世纪城小学',
    address = '世纪城',
    id_card = '52010320140225321X',
    updated_at = NOW()
WHERE name = '杨隽铭Daniel'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨隽铭Daniel', 72, '13885109471', '妈妈', '唐毛英', '世纪城小学', '世纪城', '52010320140225321X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨隽铭Daniel' AND class_id = 72
);

-- Row 649: 舒俊智James @ 麒麟12班
UPDATE v2.students
SET phone = '13518518518',
    primary_guardian_type = '妈妈',
    parent_name = '邓喻丹',
    school = '实验小学',
    address = '市南路',
    id_card = '520102201211081615',
    updated_at = NOW()
WHERE name = '舒俊智James'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '舒俊智James', 72, '13518518518', '妈妈', '邓喻丹', '实验小学', '市南路', '520102201211081615', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '舒俊智James' AND class_id = 72
);

-- Row 650: 孙柏川Benny @ 麒麟12班
UPDATE v2.students
SET phone = '18786716666',
    primary_guardian_type = '妈妈',
    parent_name = '毛豫玲',
    school = '中天北京小学',
    address = '天一国际广场',
    id_card = '52011520160314201X',
    updated_at = NOW()
WHERE name = '孙柏川Benny'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙柏川Benny', 72, '18786716666', '妈妈', '毛豫玲', '中天北京小学', '天一国际广场', '52011520160314201X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙柏川Benny' AND class_id = 72
);

-- Row 651: 沈钰峰Jay @ 麒麟12班
UPDATE v2.students
SET phone = '13595000997',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = '520102201503261255',
    updated_at = NOW()
WHERE name = '沈钰峰Jay'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '沈钰峰Jay', 72, '13595000997', NULL, NULL, NULL, NULL, '520102201503261255', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '沈钰峰Jay' AND class_id = 72
);

-- Row 652: 许曦玥 Sanny @ 麒麟12班
UPDATE v2.students
SET phone = '18786742278',
    primary_guardian_type = NULL,
    parent_name = '许飞虎',
    school = '中天北京小学',
    address = '观山湖一号',
    id_card = '520103201405154428',
    updated_at = NOW()
WHERE name = '许曦玥 Sanny'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '许曦玥 Sanny', 72, '18786742278', NULL, '许飞虎', '中天北京小学', '观山湖一号', '520103201405154428', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '许曦玥 Sanny' AND class_id = 72
);

-- Row 653: 刘子墨Isabel @ 麒麟12班
UPDATE v2.students
SET phone = '18198558722',
    primary_guardian_type = NULL,
    parent_name = '刘宏成',
    school = NULL,
    address = NULL,
    id_card = '52010320131223842X',
    updated_at = NOW()
WHERE name = '刘子墨Isabel'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘子墨Isabel', 72, '18198558722', NULL, '刘宏成', NULL, NULL, '52010320131223842X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘子墨Isabel' AND class_id = 72
);

-- Row 654: 肖绎朵Sherry @ 麒麟12班
UPDATE v2.students
SET phone = '18685008330',
    primary_guardian_type = NULL,
    parent_name = '张慧',
    school = '甲秀小学',
    address = '未填写',
    id_card = '520102201409030426',
    updated_at = NOW()
WHERE name = '肖绎朵Sherry'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖绎朵Sherry', 72, '18685008330', NULL, '张慧', '甲秀小学', '未填写', '520102201409030426', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖绎朵Sherry' AND class_id = 72
);

-- Row 655: 廖梓媛Coco @ 麒麟12班
UPDATE v2.students
SET phone = '18785180723',
    primary_guardian_type = '妈妈',
    parent_name = '黄雪',
    school = '花溪小学',
    address = '花溪区美的国宾府',
    id_card = '52010220131219802X',
    updated_at = NOW()
WHERE name = '廖梓媛Coco'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '廖梓媛Coco', 72, '18785180723', '妈妈', '黄雪', '花溪小学', '花溪区美的国宾府', '52010220131219802X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '廖梓媛Coco' AND class_id = 72
);

-- Row 656: 蒋松泽Leo @ 麒麟12班
UPDATE v2.students
SET phone = '18188100253',
    primary_guardian_type = '妈妈',
    parent_name = '罗薇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋松泽Leo'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋松泽Leo', 72, '18188100253', '妈妈', '罗薇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋松泽Leo' AND class_id = 72
);

-- Row 657: 陈喆宇Steven @ 麒麟12班
UPDATE v2.students
SET phone = '18744871315',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '观山湖一小',
    address = '观山湖区景怡苑',
    id_card = '522227201302230035',
    updated_at = NOW()
WHERE name = '陈喆宇Steven'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈喆宇Steven', 72, '18744871315', '妈妈', NULL, '观山湖一小', '观山湖区景怡苑', '522227201302230035', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈喆宇Steven' AND class_id = 72
);

-- Row 658: 李茂嘉Sam @ 麒麟12班
UPDATE v2.students
SET phone = '13765051829',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '尚义路小学',
    address = '三桥后坝',
    id_card = '520103201407257834',
    updated_at = NOW()
WHERE name = '李茂嘉Sam'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李茂嘉Sam', 72, '13765051829', '妈妈', NULL, '尚义路小学', '三桥后坝', '520103201407257834', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李茂嘉Sam' AND class_id = 72
);

-- Row 659: 郎子萱Emily L @ 麒麟12班
UPDATE v2.students
SET phone = '15985137004',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '芳草地小学',
    address = '保利温泉',
    id_card = '520123201408092424',
    updated_at = NOW()
WHERE name = '郎子萱Emily L'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郎子萱Emily L', 72, '15985137004', '妈妈', NULL, '芳草地小学', '保利温泉', '520123201408092424', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郎子萱Emily L' AND class_id = 72
);

-- Row 660: 刘祥宏Teddy @ 麒麟12班
UPDATE v2.students
SET phone = '13885107151',
    primary_guardian_type = NULL,
    parent_name = '陈爽',
    school = '北师大附小',
    address = '金龙国际花园',
    id_card = '520103201407069016',
    updated_at = NOW()
WHERE name = '刘祥宏Teddy'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘祥宏Teddy', 72, '13885107151', NULL, '陈爽', '北师大附小', '金龙国际花园', '520103201407069016', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘祥宏Teddy' AND class_id = 72
);

-- Row 661: 朱柏欧Billy @ 麒麟14班
UPDATE v2.students
SET phone = '18685115719',
    primary_guardian_type = '妈妈',
    parent_name = '朱鹏议',
    school = '贵阳市实验小学',
    address = '云岩区大营路',
    id_card = '520103201505126715',
    updated_at = NOW()
WHERE name = '朱柏欧Billy'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱柏欧Billy', 74, '18685115719', '妈妈', '朱鹏议', '贵阳市实验小学', '云岩区大营路', '520103201505126715', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱柏欧Billy' AND class_id = 74
);

-- Row 662: 杨竣媛Mina @ 麒麟14班
UPDATE v2.students
SET phone = '13511922909',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '新九学校',
    address = '乌当区新添寨',
    id_card = '520122201402060027',
    updated_at = NOW()
WHERE name = '杨竣媛Mina'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨竣媛Mina', 74, '13511922909', '妈妈', NULL, '新九学校', '乌当区新添寨', '520122201402060027', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨竣媛Mina' AND class_id = 74
);

-- Row 663: 张钰翎Linda @ 麒麟14班
UPDATE v2.students
SET phone = '18798708600',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '贵阳市实验小学',
    address = '天誉城',
    id_card = '52010320150726672X',
    updated_at = NOW()
WHERE name = '张钰翎Linda'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张钰翎Linda', 74, '18798708600', '妈妈', NULL, '贵阳市实验小学', '天誉城', '52010320150726672X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张钰翎Linda' AND class_id = 74
);

-- Row 664: 熊子骁Timmy @ 麒麟14班
UPDATE v2.students
SET phone = '15185126887',
    primary_guardian_type = '爸爸',
    parent_name = '熊坤',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '熊子骁Timmy'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '熊子骁Timmy', 74, '15185126887', '爸爸', '熊坤', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '熊子骁Timmy' AND class_id = 74
);

-- Row 665: 吴棉晴Jessica @ 麒麟14班
UPDATE v2.students
SET phone = '13601584815',
    primary_guardian_type = '妈妈',
    parent_name = '李秀霞',
    school = '花一小',
    address = '美的国宾府',
    id_card = '320111201503312648',
    updated_at = NOW()
WHERE name = '吴棉晴Jessica'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴棉晴Jessica', 74, '13601584815', '妈妈', '李秀霞', '花一小', '美的国宾府', '320111201503312648', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴棉晴Jessica' AND class_id = 74
);

-- Row 666: 王成韵Celia @ 麒麟14班
UPDATE v2.students
SET phone = '13885149656',
    primary_guardian_type = '妈妈',
    parent_name = '张玺',
    school = '甲秀小学',
    address = '南明区新华路',
    id_card = '520102201602283441',
    updated_at = NOW()
WHERE name = '王成韵Celia'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王成韵Celia', 74, '13885149656', '妈妈', '张玺', '甲秀小学', '南明区新华路', '520102201602283441', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王成韵Celia' AND class_id = 74
);

-- Row 667: 吴昕怡Viki @ 麒麟14班
UPDATE v2.students
SET phone = '18984637899',
    primary_guardian_type = '妈妈',
    parent_name = '曹红燕',
    school = '乐湾国际学校',
    address = '智慧龙城',
    id_card = '340822201401011130',
    updated_at = NOW()
WHERE name = '吴昕怡Viki'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴昕怡Viki', 74, '18984637899', '妈妈', '曹红燕', '乐湾国际学校', '智慧龙城', '340822201401011130', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴昕怡Viki' AND class_id = 74
);

-- Row 668: 杨晨溪Sunny @ 麒麟14班
UPDATE v2.students
SET phone = '15885892364',
    primary_guardian_type = '妈妈',
    parent_name = '陈文娟',
    school = '华麟学校',
    address = '中天世纪新城',
    id_card = '522401201404061022',
    updated_at = NOW()
WHERE name = '杨晨溪Sunny'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨晨溪Sunny', 74, '15885892364', '妈妈', '陈文娟', '华麟学校', '中天世纪新城', '522401201404061022', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨晨溪Sunny' AND class_id = 74
);

-- Row 669: 欧瑞橦Mia @ 麒麟14班
UPDATE v2.students
SET phone = '13984391118',
    primary_guardian_type = '妈妈',
    parent_name = '陈春燕',
    school = '中天北京小学',
    address = '云岩区三桥北路',
    id_card = '520103201311262823',
    updated_at = NOW()
WHERE name = '欧瑞橦Mia'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '欧瑞橦Mia', 74, '13984391118', '妈妈', '陈春燕', '中天北京小学', '云岩区三桥北路', '520103201311262823', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '欧瑞橦Mia' AND class_id = 74
);

-- Row 670: 鄢碧清Grace @ 麒麟14班
UPDATE v2.students
SET phone = '13511998182',
    primary_guardian_type = '妈妈',
    parent_name = '陈琳',
    school = '实验二小',
    address = '云岩区梦想城',
    id_card = '520103201405013625',
    updated_at = NOW()
WHERE name = '鄢碧清Grace'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '鄢碧清Grace', 74, '13511998182', '妈妈', '陈琳', '实验二小', '云岩区梦想城', '520103201405013625', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '鄢碧清Grace' AND class_id = 74
);

-- Row 671: 莫袁媛Sally @ 麒麟14班
UPDATE v2.students
SET phone = '18786100800',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '春天小学',
    address = '乌当区新添寨',
    id_card = '520112201410043841',
    updated_at = NOW()
WHERE name = '莫袁媛Sally'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '莫袁媛Sally', 74, '18786100800', '妈妈', NULL, '春天小学', '乌当区新添寨', '520112201410043841', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '莫袁媛Sally' AND class_id = 74
);

-- Row 672: 罗嘉妮Sofia @ 麒麟14班
UPDATE v2.students
SET phone = '18798090208',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '实验小学',
    address = '云岩区观山东路',
    id_card = '520103201409250126',
    updated_at = NOW()
WHERE name = '罗嘉妮Sofia'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗嘉妮Sofia', 74, '18798090208', '妈妈', NULL, '实验小学', '云岩区观山东路', '520103201409250126', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗嘉妮Sofia' AND class_id = 74
);

-- Row 673: 连嘉言Simi @ 麒麟14班
UPDATE v2.students
SET phone = '15519555056',
    primary_guardian_type = '妈妈',
    parent_name = '李文君',
    school = '达德学校',
    address = '未来方舟',
    id_card = '52010320140828042X',
    updated_at = NOW()
WHERE name = '连嘉言Simi'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '连嘉言Simi', 74, '15519555056', '妈妈', '李文君', '达德学校', '未来方舟', '52010320140828042X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '连嘉言Simi' AND class_id = 74
);

-- Row 674: 李奕扬Ian @ 麒麟14班
UPDATE v2.students
SET phone = '15692711534',
    primary_guardian_type = '妈妈',
    parent_name = '陈娟',
    school = '花一小美的校区',
    address = '花溪美的国宾府',
    id_card = '520102201409087414',
    updated_at = NOW()
WHERE name = '李奕扬Ian'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李奕扬Ian', 74, '15692711534', '妈妈', '陈娟', '花一小美的校区', '花溪美的国宾府', '520102201409087414', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李奕扬Ian' AND class_id = 74
);

-- Row 675: 罗陈辉Blake @ 麒麟14班
UPDATE v2.students
SET phone = '13608575951',
    primary_guardian_type = '妈妈',
    parent_name = '陈雪芳',
    school = '尚义路小学',
    address = '体育路26号',
    id_card = '520102201311092012',
    updated_at = NOW()
WHERE name = '罗陈辉Blake'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗陈辉Blake', 74, '13608575951', '妈妈', '陈雪芳', '尚义路小学', '体育路26号', '520102201311092012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗陈辉Blake' AND class_id = 74
);

-- Row 676: 旷光城Gavin @ 麒麟14班
UPDATE v2.students
SET phone = '18984115754',
    primary_guardian_type = '妈妈',
    parent_name = '刘玉',
    school = '南明区实验小学',
    address = '南明区',
    id_card = '520102201410264035',
    updated_at = NOW()
WHERE name = '旷光城Gavin'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '旷光城Gavin', 74, '18984115754', '妈妈', '刘玉', '南明区实验小学', '南明区', '520102201410264035', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '旷光城Gavin' AND class_id = 74
);

-- Row 677: 高若雨Rebecca @ 麒麟14班
UPDATE v2.students
SET phone = '13639127384',
    primary_guardian_type = '爸爸',
    parent_name = '高磊',
    school = '花果园第二小学',
    address = '花果园一期',
    id_card = '371321201312085060',
    updated_at = NOW()
WHERE name = '高若雨Rebecca'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高若雨Rebecca', 74, '13639127384', '爸爸', '高磊', '花果园第二小学', '花果园一期', '371321201312085060', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高若雨Rebecca' AND class_id = 74
);

-- Row 678: 黄公睿Ryan @ 麒麟14班
UPDATE v2.students
SET phone = '15808514189',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '中天铭廷',
    address = '金融城',
    id_card = '520102201403072457',
    updated_at = NOW()
WHERE name = '黄公睿Ryan'
  AND class_id = 74;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄公睿Ryan', 74, '15808514189', '妈妈', NULL, '中天铭廷', '金融城', '520102201403072457', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄公睿Ryan' AND class_id = 74
);

-- Row 679: 毛志贤 Milo @ 小锦鲤36班
UPDATE v2.students
SET phone = '13765186678',
    primary_guardian_type = '妈妈',
    parent_name = '任慧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '毛志贤 Milo'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '毛志贤 Milo', 19, '13765186678', '妈妈', '任慧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '毛志贤 Milo' AND class_id = 19
);

-- Row 680: 王绎源 Timmy @ 小锦鲤36班
UPDATE v2.students
SET phone = '13686864510',
    primary_guardian_type = '妈妈',
    parent_name = '陈娇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王绎源 Timmy'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王绎源 Timmy', 19, '13686864510', '妈妈', '陈娇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王绎源 Timmy' AND class_id = 19
);

-- Row 681: 肖茗泽 Leo @ 小锦鲤36班
UPDATE v2.students
SET phone = '18786062387',
    primary_guardian_type = '妈妈',
    parent_name = '欧阳以睿',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '肖茗泽 Leo'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖茗泽 Leo', 19, '18786062387', '妈妈', '欧阳以睿', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖茗泽 Leo' AND class_id = 19
);

-- Row 682: 杨灵犀 Lincy @ 小锦鲤36班
UPDATE v2.students
SET phone = '18286025254',
    primary_guardian_type = '妈妈',
    parent_name = '郑兴媚',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨灵犀 Lincy'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨灵犀 Lincy', 19, '18286025254', '妈妈', '郑兴媚', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨灵犀 Lincy' AND class_id = 19
);

-- Row 683: 张轶革 Ingram @ 小锦鲤36班
UPDATE v2.students
SET phone = '15285501804',
    primary_guardian_type = '妈妈',
    parent_name = '陈文',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张轶革 Ingram'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张轶革 Ingram', 19, '15285501804', '妈妈', '陈文', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张轶革 Ingram' AND class_id = 19
);

-- Row 684: 余婉伊 Cherry @ 小锦鲤36班
UPDATE v2.students
SET phone = '13765145838',
    primary_guardian_type = '妈妈',
    parent_name = '余庆娴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '余婉伊 Cherry'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余婉伊 Cherry', 19, '13765145838', '妈妈', '余庆娴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余婉伊 Cherry' AND class_id = 19
);

-- Row 685: 李亦柠 Sally @ 小锦鲤36班
UPDATE v2.students
SET phone = '13639054024',
    primary_guardian_type = '妈妈',
    parent_name = '周娜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李亦柠 Sally'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李亦柠 Sally', 19, '13639054024', '妈妈', '周娜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李亦柠 Sally' AND class_id = 19
);

-- Row 686: 毛一任 Bram @ 小锦鲤36班
UPDATE v2.students
SET phone = '13765186678',
    primary_guardian_type = '妈妈',
    parent_name = '任慧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '毛一任 Bram'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '毛一任 Bram', 19, '13765186678', '妈妈', '任慧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '毛一任 Bram' AND class_id = 19
);

-- Row 687: 胡语芊 Clara @ 小锦鲤36班
UPDATE v2.students
SET phone = '18285104730',
    primary_guardian_type = '妈妈',
    parent_name = '幸姝媛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡语芊 Clara'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡语芊 Clara', 19, '18285104730', '妈妈', '幸姝媛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡语芊 Clara' AND class_id = 19
);

-- Row 688: 刘雅淇 April @ 小锦鲤36班
UPDATE v2.students
SET phone = '13688543515',
    primary_guardian_type = '妈妈',
    parent_name = '韦桂芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘雅淇 April'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘雅淇 April', 19, '13688543515', '妈妈', '韦桂芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘雅淇 April' AND class_id = 19
);

-- Row 689: 高羽熙 Elsa @ 小锦鲤36班
UPDATE v2.students
SET phone = '18985184623',
    primary_guardian_type = '妈妈',
    parent_name = '袁礴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '高羽熙 Elsa'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高羽熙 Elsa', 19, '18985184623', '妈妈', '袁礴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高羽熙 Elsa' AND class_id = 19
);

-- Row 690: 李若谦 Ethan @ 小锦鲤36班
UPDATE v2.students
SET phone = '13037814827',
    primary_guardian_type = '妈妈',
    parent_name = '胡莹滢',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李若谦 Ethan'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李若谦 Ethan', 19, '13037814827', '妈妈', '胡莹滢', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李若谦 Ethan' AND class_id = 19
);

-- Row 691: 罗煜棠 Talia @ 小锦鲤36班
UPDATE v2.students
SET phone = '13984896696',
    primary_guardian_type = '妈妈',
    parent_name = '万茜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗煜棠 Talia'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗煜棠 Talia', 19, '13984896696', '妈妈', '万茜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗煜棠 Talia' AND class_id = 19
);

-- Row 707: 蒋浩成 Jasper @ 小锦鲤36班
UPDATE v2.students
SET phone = '18286091585',
    primary_guardian_type = '妈妈',
    parent_name = '陶奕汐',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋浩成 Jasper'
  AND class_id = 19;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋浩成 Jasper', 19, '18286091585', '妈妈', '陶奕汐', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋浩成 Jasper' AND class_id = 19
);

-- Row 743: Wendy张译雯 @ 凤凰49班
UPDATE v2.students
SET phone = '13639081420',
    primary_guardian_type = '妈妈',
    parent_name = '吴美娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Wendy张译雯'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Wendy张译雯', 64, '13639081420', '妈妈', '吴美娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Wendy张译雯' AND class_id = 64
);

-- Row 744: Jimmy徐端熠 @ 凤凰49班
UPDATE v2.students
SET phone = '13595098220',
    primary_guardian_type = '妈妈',
    parent_name = '范磊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jimmy徐端熠'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jimmy徐端熠', 64, '13595098220', '妈妈', '范磊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jimmy徐端熠' AND class_id = 64
);

-- Row 745: Victor高一鸣 @ 凤凰49班
UPDATE v2.students
SET phone = '18108515510',
    primary_guardian_type = '妈妈',
    parent_name = '李邦菊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Victor高一鸣'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Victor高一鸣', 64, '18108515510', '妈妈', '李邦菊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Victor高一鸣' AND class_id = 64
);

-- Row 746: 毛国檄Alex @ 凤凰49班
UPDATE v2.students
SET phone = '18585438895',
    primary_guardian_type = '妈妈',
    parent_name = '王志芸',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '毛国檄Alex'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '毛国檄Alex', 64, '18585438895', '妈妈', '王志芸', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '毛国檄Alex' AND class_id = 64
);

-- Row 747: Ocean申远洋 @ 凤凰49班
UPDATE v2.students
SET phone = '18198270353',
    primary_guardian_type = '妈妈',
    parent_name = '申腾',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ocean申远洋'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ocean申远洋', 64, '18198270353', '妈妈', '申腾', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ocean申远洋' AND class_id = 64
);

-- Row 748: Niki王钰涵 @ 凤凰49班
UPDATE v2.students
SET phone = '13608514842',
    primary_guardian_type = '妈妈',
    parent_name = '王萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Niki王钰涵'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Niki王钰涵', 64, '13608514842', '妈妈', '王萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Niki王钰涵' AND class_id = 64
);

-- Row 749: Tiny朱露瑶 @ 凤凰49班
UPDATE v2.students
SET phone = '13639077649',
    primary_guardian_type = '妈妈',
    parent_name = '杨越',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Tiny朱露瑶'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Tiny朱露瑶', 64, '13639077649', '妈妈', '杨越', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Tiny朱露瑶' AND class_id = 64
);

-- Row 750: Shirley王思睿 @ 凤凰49班
UPDATE v2.students
SET phone = '18585107222',
    primary_guardian_type = '妈妈',
    parent_name = '乔婧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Shirley王思睿'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Shirley王思睿', 64, '18585107222', '妈妈', '乔婧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Shirley王思睿' AND class_id = 64
);

-- Row 751: Silas王硕橙 @ 凤凰49班
UPDATE v2.students
SET phone = '13765095925',
    primary_guardian_type = '妈妈',
    parent_name = '王仕伟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Silas王硕橙'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Silas王硕橙', 64, '13765095925', '妈妈', '王仕伟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Silas王硕橙' AND class_id = 64
);

-- Row 752: Khan付可涵 @ 凤凰49班
UPDATE v2.students
SET phone = '18684166611',
    primary_guardian_type = '妈妈',
    parent_name = '廖润',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Khan付可涵'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Khan付可涵', 64, '18684166611', '妈妈', '廖润', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Khan付可涵' AND class_id = 64
);

-- Row 753: Mia叶妙仪 @ 凤凰49班
UPDATE v2.students
SET phone = '17785152771',
    primary_guardian_type = '妈妈',
    parent_name = '张雯',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Mia叶妙仪'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Mia叶妙仪', 64, '17785152771', '妈妈', '张雯', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Mia叶妙仪' AND class_id = 64
);

-- Row 754: Luca彭一晨 @ 凤凰49班
UPDATE v2.students
SET phone = '18627705165',
    primary_guardian_type = '妈妈',
    parent_name = '姚洋',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Luca彭一晨'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Luca彭一晨', 64, '18627705165', '妈妈', '姚洋', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Luca彭一晨' AND class_id = 64
);

-- Row 755: 汪牧潇 Murtagh @ 凤凰49班
UPDATE v2.students
SET phone = '13984093495',
    primary_guardian_type = '妈妈',
    parent_name = '汪红英',
    school = '贵阳市六一幼儿园',
    address = '贵阳市阅山湖21栋',
    id_card = '520103201901307219',
    updated_at = NOW()
WHERE name = '汪牧潇 Murtagh'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汪牧潇 Murtagh', 64, '13984093495', '妈妈', '汪红英', '贵阳市六一幼儿园', '贵阳市阅山湖21栋', '520103201901307219', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汪牧潇 Murtagh' AND class_id = 64
);

-- Row 756: Dana张筱涵 @ 凤凰49班
UPDATE v2.students
SET phone = '17611534311',
    primary_guardian_type = '妈妈',
    parent_name = '欧倇均',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Dana张筱涵'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Dana张筱涵', 64, '17611534311', '妈妈', '欧倇均', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Dana张筱涵' AND class_id = 64
);

-- Row 757: Hanni王漪涵 @ 凤凰49班
UPDATE v2.students
SET phone = '18984086822',
    primary_guardian_type = '妈妈',
    parent_name = '徐振云',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Hanni王漪涵'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Hanni王漪涵', 64, '18984086822', '妈妈', '徐振云', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Hanni王漪涵' AND class_id = 64
);

-- Row 758: George谭景泽 @ 凤凰49班
UPDATE v2.students
SET phone = '13595048075',
    primary_guardian_type = '妈妈',
    parent_name = '杨砚竹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'George谭景泽'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'George谭景泽', 64, '13595048075', '妈妈', '杨砚竹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'George谭景泽' AND class_id = 64
);

-- Row 759: Cindy汪梓馨 @ 凤凰49班
UPDATE v2.students
SET phone = '13765456053',
    primary_guardian_type = '妈妈',
    parent_name = '汪梓馨奶奶',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Cindy汪梓馨'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Cindy汪梓馨', 64, '13765456053', '妈妈', '汪梓馨奶奶', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Cindy汪梓馨' AND class_id = 64
);

-- Row 760: Hector龙显屹 @ 凤凰49班
UPDATE v2.students
SET phone = '18096026169',
    primary_guardian_type = '妈妈',
    parent_name = '王倩',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Hector龙显屹'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Hector龙显屹', 64, '18096026169', '妈妈', '王倩', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Hector龙显屹' AND class_id = 64
);

-- Row 761: Gavin熊梓淳 @ 凤凰49班
UPDATE v2.students
SET phone = '18285073736',
    primary_guardian_type = '妈妈',
    parent_name = '向雪元',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Gavin熊梓淳'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Gavin熊梓淳', 64, '18285073736', '妈妈', '向雪元', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Gavin熊梓淳' AND class_id = 64
);

-- Row 762: Felix黄子豪 @ 凤凰49班
UPDATE v2.students
SET phone = '15519168585',
    primary_guardian_type = '妈妈',
    parent_name = '曾燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Felix黄子豪'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Felix黄子豪', 64, '15519168585', '妈妈', '曾燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Felix黄子豪' AND class_id = 64
);

-- Row 763: Eileen喻悠苒 @ 凤凰49班
UPDATE v2.students
SET phone = '13765169945',
    primary_guardian_type = '妈妈',
    parent_name = '黄崇英',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Eileen喻悠苒'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Eileen喻悠苒', 64, '13765169945', '妈妈', '黄崇英', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Eileen喻悠苒' AND class_id = 64
);

-- Row 764: Jerry赵峻熙 @ 凤凰49班
UPDATE v2.students
SET phone = '18786369065',
    primary_guardian_type = '妈妈',
    parent_name = '李静',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jerry赵峻熙'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jerry赵峻熙', 64, '18786369065', '妈妈', '李静', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jerry赵峻熙' AND class_id = 64
);

-- Row 765: Jack韩若水 @ 凤凰49班
UPDATE v2.students
SET phone = '18008507007',
    primary_guardian_type = '妈妈',
    parent_name = '文婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jack韩若水'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jack韩若水', 64, '18008507007', '妈妈', '文婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jack韩若水' AND class_id = 64
);

-- Row 766: Dominic刘仲谨 @ 凤凰49班
UPDATE v2.students
SET phone = '13595115250',
    primary_guardian_type = '妈妈',
    parent_name = '刘宇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Dominic刘仲谨'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Dominic刘仲谨', 64, '13595115250', '妈妈', '刘宇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Dominic刘仲谨' AND class_id = 64
);

-- Row 767: Jason袁浩诚 @ 凤凰49班
UPDATE v2.students
SET phone = '18685413477',
    primary_guardian_type = '妈妈',
    parent_name = '袁芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jason袁浩诚'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jason袁浩诚', 64, '18685413477', '妈妈', '袁芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jason袁浩诚' AND class_id = 64
);

-- Row 768: 陈柏萦Windy @ 凤凰49班
UPDATE v2.students
SET phone = '18111929653',
    primary_guardian_type = '妈妈',
    parent_name = '柏琳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈柏萦Windy'
  AND class_id = 64;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈柏萦Windy', 64, '18111929653', '妈妈', '柏琳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈柏萦Windy' AND class_id = 64
);

-- Row 818: 王江文Herry @ 小锦鲤38班
UPDATE v2.students
SET phone = '13329633999',
    primary_guardian_type = '妈妈',
    parent_name = '赵健君',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王江文Herry'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王江文Herry', 21, '13329633999', '妈妈', '赵健君', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王江文Herry' AND class_id = 21
);

-- Row 819: 张桐煊Sunny @ 小锦鲤38班
UPDATE v2.students
SET phone = '18785055388',
    primary_guardian_type = '妈妈',
    parent_name = '张一鸣',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张桐煊Sunny'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张桐煊Sunny', 21, '18785055388', '妈妈', '张一鸣', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张桐煊Sunny' AND class_id = 21
);

-- Row 820: 王宸钧Gavin @ 小锦鲤38班
UPDATE v2.students
SET phone = '18685419440',
    primary_guardian_type = '妈妈',
    parent_name = '宋文鋆',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王宸钧Gavin'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王宸钧Gavin', 21, '18685419440', '妈妈', '宋文鋆', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王宸钧Gavin' AND class_id = 21
);

-- Row 821: 娄却尘Amilia @ 小锦鲤38班
UPDATE v2.students
SET phone = '15185009340',
    primary_guardian_type = '妈妈',
    parent_name = '徐国芬',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '娄却尘Amilia'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '娄却尘Amilia', 21, '15185009340', '妈妈', '徐国芬', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '娄却尘Amilia' AND class_id = 21
);

-- Row 822: 李晋沐汐Luna @ 小锦鲤38班
UPDATE v2.students
SET phone = '18685011617',
    primary_guardian_type = '妈妈',
    parent_name = '晋张心筑',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李晋沐汐Luna'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李晋沐汐Luna', 21, '18685011617', '妈妈', '晋张心筑', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李晋沐汐Luna' AND class_id = 21
);

-- Row 823: 汤琮忻Camille @ 小锦鲤38班
UPDATE v2.students
SET phone = '13885163331',
    primary_guardian_type = '妈妈',
    parent_name = '吴亚雯',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '汤琮忻Camille'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汤琮忻Camille', 21, '13885163331', '妈妈', '吴亚雯', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汤琮忻Camille' AND class_id = 21
);

-- Row 824: 王君豪Leo @ 小锦鲤38班
UPDATE v2.students
SET phone = '18302699105',
    primary_guardian_type = '妈妈',
    parent_name = '陈玉玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王君豪Leo'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王君豪Leo', 21, '18302699105', '妈妈', '陈玉玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王君豪Leo' AND class_id = 21
);

-- Row 825: 杨子珩Zack @ 小锦鲤38班
UPDATE v2.students
SET phone = '13511944520',
    primary_guardian_type = '妈妈',
    parent_name = '余瑶',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨子珩Zack'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨子珩Zack', 21, '13511944520', '妈妈', '余瑶', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨子珩Zack' AND class_id = 21
);

-- Row 826: 胡诺希Stella @ 小锦鲤38班
UPDATE v2.students
SET phone = '13885002933',
    primary_guardian_type = '妈妈',
    parent_name = '吴自娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡诺希Stella'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡诺希Stella', 21, '13885002933', '妈妈', '吴自娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡诺希Stella' AND class_id = 21
);

-- Row 827: 吴沛宸Tigerwoo @ 小锦鲤38班
UPDATE v2.students
SET phone = '15285146265',
    primary_guardian_type = '爸爸',
    parent_name = '吴刚',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴沛宸Tigerwoo'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴沛宸Tigerwoo', 21, '15285146265', '爸爸', '吴刚', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴沛宸Tigerwoo' AND class_id = 21
);

-- Row 828: 叶芯辰Estella @ 小锦鲤38班
UPDATE v2.students
SET phone = '13618591699',
    primary_guardian_type = '妈妈',
    parent_name = '查蕴桐',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '叶芯辰Estella'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '叶芯辰Estella', 21, '13618591699', '妈妈', '查蕴桐', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '叶芯辰Estella' AND class_id = 21
);

-- Row 829: 韩耀先Lucian @ 小锦鲤38班
UPDATE v2.students
SET phone = '15685518393',
    primary_guardian_type = '妈妈',
    parent_name = '郭玲犀',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '韩耀先Lucian'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韩耀先Lucian', 21, '15685518393', '妈妈', '郭玲犀', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韩耀先Lucian' AND class_id = 21
);

-- Row 830: 崔友岚Yolanda @ 小锦鲤38班
UPDATE v2.students
SET phone = '15285579774',
    primary_guardian_type = '妈妈',
    parent_name = '胡流冰川',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '崔友岚Yolanda'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '崔友岚Yolanda', 21, '15285579774', '妈妈', '胡流冰川', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '崔友岚Yolanda' AND class_id = 21
);

-- Row 831: 朱逸恒 Ian @ 凤凰42班
UPDATE v2.students
SET phone = '18685106523',
    primary_guardian_type = '妈妈',
    parent_name = '谢莉萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '朱逸恒 Ian'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱逸恒 Ian', 57, '18685106523', '妈妈', '谢莉萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱逸恒 Ian' AND class_id = 57
);

-- Row 832: 李易成 Jerry @ 凤凰42班
UPDATE v2.students
SET phone = '13984097805',
    primary_guardian_type = '妈妈',
    parent_name = '高薇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李易成 Jerry'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李易成 Jerry', 57, '13984097805', '妈妈', '高薇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李易成 Jerry' AND class_id = 57
);

-- Row 833: 刘胤泽Zephyr @ 凤凰42班
UPDATE v2.students
SET phone = '18508515265',
    primary_guardian_type = '妈妈',
    parent_name = '王颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘胤泽Zephyr'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘胤泽Zephyr', 57, '18508515265', '妈妈', '王颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘胤泽Zephyr' AND class_id = 57
);

-- Row 834: 罗可欣Linda @ 凤凰42班
UPDATE v2.students
SET phone = '18785036005',
    primary_guardian_type = '妈妈',
    parent_name = '张小丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗可欣Linda'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗可欣Linda', 57, '18785036005', '妈妈', '张小丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗可欣Linda' AND class_id = 57
);

-- Row 835: 吴睿泽 Ryan @ 凤凰42班
UPDATE v2.students
SET phone = '19522891998',
    primary_guardian_type = '妈妈',
    parent_name = '罗锦可',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴睿泽 Ryan'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴睿泽 Ryan', 57, '19522891998', '妈妈', '罗锦可', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴睿泽 Ryan' AND class_id = 57
);

-- Row 836: 喻萧楠Amy @ 凤凰42班
UPDATE v2.students
SET phone = '18985025525',
    primary_guardian_type = '妈妈',
    parent_name = '肖静',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '喻萧楠Amy'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '喻萧楠Amy', 57, '18985025525', '妈妈', '肖静', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '喻萧楠Amy' AND class_id = 57
);

-- Row 837: 杨丰全Fiona @ 凤凰42班
UPDATE v2.students
SET phone = '18984836725',
    primary_guardian_type = '妈妈',
    parent_name = '程义琳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨丰全Fiona'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨丰全Fiona', 57, '18984836725', '妈妈', '程义琳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨丰全Fiona' AND class_id = 57
);

-- Row 838: 杨棋好Hannah @ 凤凰42班
UPDATE v2.students
SET phone = '18685194898',
    primary_guardian_type = '妈妈',
    parent_name = '彭德玉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨棋好Hannah'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨棋好Hannah', 57, '18685194898', '妈妈', '彭德玉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨棋好Hannah' AND class_id = 57
);

-- Row 839: 杨诺一Felix @ 凤凰42班
UPDATE v2.students
SET phone = '13885127589',
    primary_guardian_type = '爸爸',
    parent_name = '杨卓弢',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨诺一Felix'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨诺一Felix', 57, '13885127589', '爸爸', '杨卓弢', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨诺一Felix' AND class_id = 57
);

-- Row 840: 赵宗禹 Asher @ 凤凰42班
UPDATE v2.students
SET phone = '18685191305',
    primary_guardian_type = '妈妈',
    parent_name = '王艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵宗禹 Asher'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵宗禹 Asher', 57, '18685191305', '妈妈', '王艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵宗禹 Asher' AND class_id = 57
);

-- Row 841: 吕淳耀 Jax @ 凤凰42班
UPDATE v2.students
SET phone = '18286185566',
    primary_guardian_type = '妈妈',
    parent_name = '魏梦思',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吕淳耀 Jax'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吕淳耀 Jax', 57, '18286185566', '妈妈', '魏梦思', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吕淳耀 Jax' AND class_id = 57
);

-- Row 842: 张严文 Alice @ 凤凰42班
UPDATE v2.students
SET phone = '17785125763',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '敏秀路小学',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张严文 Alice'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张严文 Alice', 57, '17785125763', '妈妈', NULL, '敏秀路小学', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张严文 Alice' AND class_id = 57
);

-- Row 843: 黄麒睿 Kris @ 凤凰42班
UPDATE v2.students
SET phone = '15180709335',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄麒睿 Kris'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄麒睿 Kris', 57, '15180709335', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄麒睿 Kris' AND class_id = 57
);

-- Row 844: 梁皓然 Henry @ 凤凰42班
UPDATE v2.students
SET phone = '13078566643',
    primary_guardian_type = '妈妈',
    parent_name = '黄广婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '梁皓然 Henry'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '梁皓然 Henry', 57, '13078566643', '妈妈', '黄广婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '梁皓然 Henry' AND class_id = 57
);

-- Row 845: 国东予Donie @ 凤凰42班
UPDATE v2.students
SET phone = '18111916912',
    primary_guardian_type = '爸爸',
    parent_name = '国洪基',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '国东予Donie'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '国东予Donie', 57, '18111916912', '爸爸', '国洪基', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '国东予Donie' AND class_id = 57
);

-- Row 846: 陈杨仟悦Chloe @ 凤凰42班
UPDATE v2.students
SET phone = '13984316827',
    primary_guardian_type = '妈妈',
    parent_name = '杨宇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈杨仟悦Chloe'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈杨仟悦Chloe', 57, '13984316827', '妈妈', '杨宇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈杨仟悦Chloe' AND class_id = 57
);

-- Row 847: 冯翊扬Coco @ 凤凰42班
UPDATE v2.students
SET phone = '13595071751',
    primary_guardian_type = '妈妈',
    parent_name = '马克琳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '冯翊扬Coco'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '冯翊扬Coco', 57, '13595071751', '妈妈', '马克琳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '冯翊扬Coco' AND class_id = 57
);

-- Row 848: 戴卓辰Audi @ 凤凰42班
UPDATE v2.students
SET phone = '18585431456',
    primary_guardian_type = '妈妈',
    parent_name = '王美力',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '戴卓辰Audi'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '戴卓辰Audi', 57, '18585431456', '妈妈', '王美力', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '戴卓辰Audi' AND class_id = 57
);

-- Row 849: 戴骑阳Odin @ 凤凰42班
UPDATE v2.students
SET phone = '18585431456',
    primary_guardian_type = '妈妈',
    parent_name = '王美力',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '戴骑阳Odin'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '戴骑阳Odin', 57, '18585431456', '妈妈', '王美力', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '戴骑阳Odin' AND class_id = 57
);

-- Row 850: 陈瑾萱Nova @ 凤凰42班
UPDATE v2.students
SET phone = '18883652068',
    primary_guardian_type = '妈妈',
    parent_name = '杨凤燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈瑾萱Nova'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈瑾萱Nova', 57, '18883652068', '妈妈', '杨凤燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈瑾萱Nova' AND class_id = 57
);

-- Row 851: 蒋玉瑾Gemma @ 凤凰42班
UPDATE v2.students
SET phone = '18798043241',
    primary_guardian_type = '妈妈',
    parent_name = '张琴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋玉瑾Gemma'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋玉瑾Gemma', 57, '18798043241', '妈妈', '张琴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋玉瑾Gemma' AND class_id = 57
);

-- Row 852: 蒋卓航Kevin @ 凤凰42班
UPDATE v2.students
SET phone = '15085905617',
    primary_guardian_type = '妈妈',
    parent_name = '朱兴芬',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋卓航Kevin'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋卓航Kevin', 57, '15085905617', '妈妈', '朱兴芬', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋卓航Kevin' AND class_id = 57
);

-- Row 853: 孔雯悦 Aria @ 凤凰42班
UPDATE v2.students
SET phone = '15285034651',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '孔雯悦 Aria'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孔雯悦 Aria', 57, '15285034651', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孔雯悦 Aria' AND class_id = 57
);

-- Row 854: 江沂诺 Eleanor @ 凤凰42班
UPDATE v2.students
SET phone = '18396970719',
    primary_guardian_type = '爸爸',
    parent_name = '江会忍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '江沂诺 Eleanor'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '江沂诺 Eleanor', 57, '18396970719', '爸爸', '江会忍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '江沂诺 Eleanor' AND class_id = 57
);

-- Row 855: 陈静翕Cassiel @ 凤凰42班
UPDATE v2.students
SET phone = '15885021937',
    primary_guardian_type = '妈妈',
    parent_name = '张越',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈静翕Cassiel'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈静翕Cassiel', 57, '15885021937', '妈妈', '张越', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈静翕Cassiel' AND class_id = 57
);

-- Row 856: 蔡博轩Owen @ 凤凰42班
UPDATE v2.students
SET phone = '15285105551',
    primary_guardian_type = '爸爸',
    parent_name = '蔡志煜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蔡博轩Owen'
  AND class_id = 57;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蔡博轩Owen', 57, '15285105551', '爸爸', '蔡志煜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蔡博轩Owen' AND class_id = 57
);

-- Row 884: 杨泽馨 Thanita @ 大锦鲤40班
UPDATE v2.students
SET phone = '18585026123',
    primary_guardian_type = '妈妈',
    parent_name = '卢奕林',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨泽馨 Thanita'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨泽馨 Thanita', 23, '18585026123', '妈妈', '卢奕林', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨泽馨 Thanita' AND class_id = 23
);

-- Row 885: 邹林轩 Carbon @ 大锦鲤40班
UPDATE v2.students
SET phone = '18586874617',
    primary_guardian_type = '妈妈',
    parent_name = '邹博宇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邹林轩 Carbon'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹林轩 Carbon', 23, '18586874617', '妈妈', '邹博宇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹林轩 Carbon' AND class_id = 23
);

-- Row 886: 周瀚钧 Zane @ 大锦鲤40班
UPDATE v2.students
SET phone = '18786733587',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周瀚钧 Zane'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周瀚钧 Zane', 23, '18786733587', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周瀚钧 Zane' AND class_id = 23
);

-- Row 887: 钟星棋 Zero @ 大锦鲤40班
UPDATE v2.students
SET phone = '18585068096',
    primary_guardian_type = '妈妈',
    parent_name = '向婷婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '钟星棋 Zero'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '钟星棋 Zero', 23, '18585068096', '妈妈', '向婷婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '钟星棋 Zero' AND class_id = 23
);

-- Row 888: 袁锭邦 Dave @ 大锦鲤40班
UPDATE v2.students
SET phone = '18508511667',
    primary_guardian_type = '妈妈',
    parent_name = '张诗怡',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '袁锭邦 Dave'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁锭邦 Dave', 23, '18508511667', '妈妈', '张诗怡', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁锭邦 Dave' AND class_id = 23
);

-- Row 889: 周梦洋 Heidi @ 大锦鲤40班
UPDATE v2.students
SET phone = '13885124608',
    primary_guardian_type = '妈妈',
    parent_name = '郑嫦',
    school = NULL,
    address = '云岩区梦想典城J栋',
    id_card = '520103202003116749',
    updated_at = NOW()
WHERE name = '周梦洋 Heidi'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周梦洋 Heidi', 23, '13885124608', '妈妈', '郑嫦', NULL, '云岩区梦想典城J栋', '520103202003116749', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周梦洋 Heidi' AND class_id = 23
);

-- Row 890: 郭宇铄 Vicky @ 大锦鲤40班
UPDATE v2.students
SET phone = '13511920461',
    primary_guardian_type = '妈妈',
    parent_name = '杨佳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '郭宇铄 Vicky'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭宇铄 Vicky', 23, '13511920461', '妈妈', '杨佳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭宇铄 Vicky' AND class_id = 23
);

-- Row 891: 鲜佑宁 Jack @ 大锦鲤40班
UPDATE v2.students
SET phone = '13984834318',
    primary_guardian_type = '妈妈',
    parent_name = '兰娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '鲜佑宁 Jack'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '鲜佑宁 Jack', 23, '13984834318', '妈妈', '兰娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '鲜佑宁 Jack' AND class_id = 23
);

-- Row 892: 罗华聪 Theo @ 大锦鲤40班
UPDATE v2.students
SET phone = '18785167719',
    primary_guardian_type = '妈妈',
    parent_name = '李天娇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗华聪 Theo'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗华聪 Theo', 23, '18785167719', '妈妈', '李天娇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗华聪 Theo' AND class_id = 23
);

-- Row 893: 刘橙辰 Moon @ 大锦鲤40班
UPDATE v2.students
SET phone = '17885558888',
    primary_guardian_type = '妈妈',
    parent_name = '冯贵敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘橙辰 Moon'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘橙辰 Moon', 23, '17885558888', '妈妈', '冯贵敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘橙辰 Moon' AND class_id = 23
);

-- Row 894: 汪亦瑄 Tiana @ 大锦鲤40班
UPDATE v2.students
SET phone = '13985557657',
    primary_guardian_type = '妈妈',
    parent_name = '王柯涛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '汪亦瑄 Tiana'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汪亦瑄 Tiana', 23, '13985557657', '妈妈', '王柯涛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汪亦瑄 Tiana' AND class_id = 23
);

-- Row 895: 汪亦玮 Circle @ 大锦鲤40班
UPDATE v2.students
SET phone = '13985557657',
    primary_guardian_type = '妈妈',
    parent_name = '王柯涛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '汪亦玮 Circle'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汪亦玮 Circle', 23, '13985557657', '妈妈', '王柯涛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汪亦玮 Circle' AND class_id = 23
);

-- Row 896: 吴欣桐 Mandy @ 大锦鲤40班
UPDATE v2.students
SET phone = '18286170970',
    primary_guardian_type = '妈妈',
    parent_name = '邓凤鸣',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴欣桐 Mandy'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴欣桐 Mandy', 23, '18286170970', '妈妈', '邓凤鸣', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴欣桐 Mandy' AND class_id = 23
);

-- Row 897: 廖芸汐 Yviane @ 大锦鲤40班
UPDATE v2.students
SET phone = '18321770983',
    primary_guardian_type = '妈妈',
    parent_name = '周云霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '廖芸汐 Yviane'
  AND class_id = 23;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '廖芸汐 Yviane', 23, '18321770983', '妈妈', '周云霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '廖芸汐 Yviane' AND class_id = 23
);

-- Row 898: 赵镜涵Angel @ 凤凰32班
UPDATE v2.students
SET phone = '18786369065',
    primary_guardian_type = '妈妈',
    parent_name = '李静',
    school = '贵定二小',
    address = '贵定县碧桂园',
    id_card = '522723201608091922',
    updated_at = NOW()
WHERE name = '赵镜涵Angel'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵镜涵Angel', 47, '18786369065', '妈妈', '李静', '贵定二小', '贵定县碧桂园', '522723201608091922', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵镜涵Angel' AND class_id = 47
);

-- Row 899: 张睦承 Jackson @ 凤凰32班
UPDATE v2.students
SET phone = '13985542341',
    primary_guardian_type = NULL,
    parent_name = '黄洁',
    school = '观山湖区第二十三幼儿园',
    address = '观山湖区中天帝景',
    id_card = '520103201809130414',
    updated_at = NOW()
WHERE name = '张睦承 Jackson'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张睦承 Jackson', 47, '13985542341', NULL, '黄洁', '观山湖区第二十三幼儿园', '观山湖区中天帝景', '520103201809130414', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张睦承 Jackson' AND class_id = 47
);

-- Row 900: 袁子晨 Ryan @ 凤凰32班
UPDATE v2.students
SET phone = '18748771455',
    primary_guardian_type = NULL,
    parent_name = '邹德梅',
    school = '省府路小学',
    address = '云岩区天恒城',
    id_card = '520101201710200016',
    updated_at = NOW()
WHERE name = '袁子晨 Ryan'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁子晨 Ryan', 47, '18748771455', NULL, '邹德梅', '省府路小学', '云岩区天恒城', '520101201710200016', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁子晨 Ryan' AND class_id = 47
);

-- Row 901: 吴宛之Zoe @ 凤凰32班
UPDATE v2.students
SET phone = '13765098480',
    primary_guardian_type = '妈妈',
    parent_name = '陈大晴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴宛之Zoe'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴宛之Zoe', 47, '13765098480', '妈妈', '陈大晴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴宛之Zoe' AND class_id = 47
);

-- Row 902: 袁语霜 Lulu @ 凤凰32班
UPDATE v2.students
SET phone = '18685123868',
    primary_guardian_type = '妈妈',
    parent_name = '曹霆',
    school = '贵阳市实验小学',
    address = NULL,
    id_card = '52010220180426744X',
    updated_at = NOW()
WHERE name = '袁语霜 Lulu'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁语霜 Lulu', 47, '18685123868', '妈妈', '曹霆', '贵阳市实验小学', NULL, '52010220180426744X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁语霜 Lulu' AND class_id = 47
);

-- Row 903: 徐子乔 Nick @ 凤凰32班
UPDATE v2.students
SET phone = '18984115611',
    primary_guardian_type = NULL,
    parent_name = '汪姣姣',
    school = '贵阳市东山小学',
    address = '云岩区东新路',
    id_card = '520102201610250412',
    updated_at = NOW()
WHERE name = '徐子乔 Nick'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐子乔 Nick', 47, '18984115611', NULL, '汪姣姣', '贵阳市东山小学', '云岩区东新路', '520102201610250412', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐子乔 Nick' AND class_id = 47
);

-- Row 904: 徐煜淇 Hattie @ 凤凰32班
UPDATE v2.students
SET phone = '17885747413',
    primary_guardian_type = NULL,
    parent_name = '王婷婷',
    school = '黄诚根小学',
    address = '林城美的时代',
    id_card = '522725201802278224',
    updated_at = NOW()
WHERE name = '徐煜淇 Hattie'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐煜淇 Hattie', 47, '17885747413', NULL, '王婷婷', '黄诚根小学', '林城美的时代', '522725201802278224', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐煜淇 Hattie' AND class_id = 47
);

-- Row 905: 吴若熙 Rosie @ 凤凰32班
UPDATE v2.students
SET phone = '18685022530',
    primary_guardian_type = '妈妈',
    parent_name = '钟昌悦',
    school = '贵阳市中心实验幼儿园',
    address = '蟠桃宫',
    id_card = '520102201810091241',
    updated_at = NOW()
WHERE name = '吴若熙 Rosie'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴若熙 Rosie', 47, '18685022530', '妈妈', '钟昌悦', '贵阳市中心实验幼儿园', '蟠桃宫', '520102201810091241', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴若熙 Rosie' AND class_id = 47
);

-- Row 906: 文羽书 Herman @ 凤凰32班
UPDATE v2.students
SET phone = '18285054315',
    primary_guardian_type = NULL,
    parent_name = '谢慧',
    school = '贵阳市实验小学',
    address = '云岩区鹿冲关路',
    id_card = '520113201702222418',
    updated_at = NOW()
WHERE name = '文羽书 Herman'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '文羽书 Herman', 47, '18285054315', NULL, '谢慧', '贵阳市实验小学', '云岩区鹿冲关路', '520113201702222418', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '文羽书 Herman' AND class_id = 47
);

-- Row 907: 王永亮 Eric @ 凤凰32班
UPDATE v2.students
SET phone = '18076083706',
    primary_guardian_type = NULL,
    parent_name = '蔡莉娅',
    school = '贵州师范大学贵安附属小学',
    address = '花溪大学城',
    id_card = '522422201609110010',
    updated_at = NOW()
WHERE name = '王永亮 Eric'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王永亮 Eric', 47, '18076083706', NULL, '蔡莉娅', '贵州师范大学贵安附属小学', '花溪大学城', '522422201609110010', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王永亮 Eric' AND class_id = 47
);

-- Row 908: 王奕博 William @ 凤凰32班
UPDATE v2.students
SET phone = '18585107222',
    primary_guardian_type = NULL,
    parent_name = '乔婧',
    school = '贵定二小',
    address = '贵定县',
    id_card = '522723201608251957',
    updated_at = NOW()
WHERE name = '王奕博 William'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王奕博 William', 47, '18585107222', NULL, '乔婧', '贵定二小', '贵定县', '522723201608251957', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王奕博 William' AND class_id = 47
);

-- Row 909: 王辞漫 Cindy @ 凤凰32班
UPDATE v2.students
SET phone = '18708532111',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '中天小学',
    address = '未来方舟',
    id_card = '520402201807310024',
    updated_at = NOW()
WHERE name = '王辞漫 Cindy'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王辞漫 Cindy', 47, '18708532111', NULL, NULL, '中天小学', '未来方舟', '520402201807310024', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王辞漫 Cindy' AND class_id = 47
);

-- Row 910: 涂晋明 Fred @ 凤凰32班
UPDATE v2.students
SET phone = '18708506166',
    primary_guardian_type = '妈妈',
    parent_name = '吴双',
    school = '甲秀小学',
    address = '青云路青云都汇',
    id_card = '520102201612290813',
    updated_at = NOW()
WHERE name = '涂晋明 Fred'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '涂晋明 Fred', 47, '18708506166', '妈妈', '吴双', '甲秀小学', '青云路青云都汇', '520102201612290813', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '涂晋明 Fred' AND class_id = 47
);

-- Row 911: 刘胤轩 Jason @ 凤凰32班
UPDATE v2.students
SET phone = '13765422886',
    primary_guardian_type = '妈妈',
    parent_name = '黄阳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘胤轩 Jason'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘胤轩 Jason', 47, '13765422886', '妈妈', '黄阳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘胤轩 Jason' AND class_id = 47
);

-- Row 912: 孙允汐 Rita @ 凤凰32班
UPDATE v2.students
SET phone = '18685049115',
    primary_guardian_type = '妈妈',
    parent_name = '芮芳',
    school = '尚义路小学',
    address = '枫林小区',
    id_card = '520102201808233028',
    updated_at = NOW()
WHERE name = '孙允汐 Rita'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙允汐 Rita', 47, '18685049115', '妈妈', '芮芳', '尚义路小学', '枫林小区', '520102201808233028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙允汐 Rita' AND class_id = 47
);

-- Row 913: 沈诗皓 Mark @ 凤凰32班
UPDATE v2.students
SET phone = '19984485282',
    primary_guardian_type = NULL,
    parent_name = '张蓉',
    school = '贵阳市实验一小麓山分校',
    address = '云岩区万科麓山',
    id_card = '520201201612210018',
    updated_at = NOW()
WHERE name = '沈诗皓 Mark'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '沈诗皓 Mark', 47, '19984485282', NULL, '张蓉', '贵阳市实验一小麓山分校', '云岩区万科麓山', '520201201612210018', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '沈诗皓 Mark' AND class_id = 47
);

-- Row 914: 牟语涵 Joyce @ 凤凰32班
UPDATE v2.students
SET phone = '18585697729',
    primary_guardian_type = NULL,
    parent_name = '宋洁',
    school = '实验二小',
    address = '贵定县',
    id_card = '522723201805220025',
    updated_at = NOW()
WHERE name = '牟语涵 Joyce'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '牟语涵 Joyce', 47, '18585697729', NULL, '宋洁', '实验二小', '贵定县', '522723201805220025', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '牟语涵 Joyce' AND class_id = 47
);

-- Row 915: 马若云 Clara @ 凤凰32班
UPDATE v2.students
SET phone = '15085983008',
    primary_guardian_type = NULL,
    parent_name = '张璇',
    school = '贵阳市实验小学',
    address = '云岩区小石城万科公园',
    id_card = '520103201610310223',
    updated_at = NOW()
WHERE name = '马若云 Clara'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马若云 Clara', 47, '15085983008', NULL, '张璇', '贵阳市实验小学', '云岩区小石城万科公园', '520103201610310223', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马若云 Clara' AND class_id = 47
);

-- Row 916: 李熙雅琪 Grace @ 凤凰32班
UPDATE v2.students
SET phone = '15285145339',
    primary_guardian_type = NULL,
    parent_name = '洪洁',
    school = '观山湖中学',
    address = '金融城二期',
    id_card = '520102201708062428',
    updated_at = NOW()
WHERE name = '李熙雅琪 Grace'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李熙雅琪 Grace', 47, '15285145339', NULL, '洪洁', '观山湖中学', '金融城二期', '520102201708062428', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李熙雅琪 Grace' AND class_id = 47
);

-- Row 917: 李宛忆 April @ 凤凰32班
UPDATE v2.students
SET phone = '15885108880',
    primary_guardian_type = NULL,
    parent_name = '曹羽佳',
    school = '云岩小学',
    address = '八鸽岩路',
    id_card = '520103217040728',
    updated_at = NOW()
WHERE name = '李宛忆 April'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李宛忆 April', 47, '15885108880', NULL, '曹羽佳', '云岩小学', '八鸽岩路', '520103217040728', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李宛忆 April' AND class_id = 47
);

-- Row 918: 刘舒窈 Amy @ 凤凰32班
UPDATE v2.students
SET phone = '18798050521',
    primary_guardian_type = NULL,
    parent_name = '彭丽镕',
    school = '南明小学',
    address = '南明区宝山北路',
    id_card = '520102201704031229',
    updated_at = NOW()
WHERE name = '刘舒窈 Amy'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘舒窈 Amy', 47, '18798050521', NULL, '彭丽镕', '南明小学', '南明区宝山北路', '520102201704031229', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘舒窈 Amy' AND class_id = 47
);

-- Row 919: 雷双瑜 Una @ 凤凰32班
UPDATE v2.students
SET phone = '18111883521',
    primary_guardian_type = NULL,
    parent_name = '李思佳',
    school = '实验小学',
    address = '天誉城',
    id_card = '520102201712192743',
    updated_at = NOW()
WHERE name = '雷双瑜 Una'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '雷双瑜 Una', 47, '18111883521', NULL, '李思佳', '实验小学', '天誉城', '520102201712192743', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '雷双瑜 Una' AND class_id = 47
);

-- Row 920: 焦宇熙 Ives @ 凤凰32班
UPDATE v2.students
SET phone = '15085943373',
    primary_guardian_type = NULL,
    parent_name = '吴员娟',
    school = '贵阳北师大附小',
    address = '观山湖区金花园',
    id_card = '520115201806262038',
    updated_at = NOW()
WHERE name = '焦宇熙 Ives'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '焦宇熙 Ives', 47, '15085943373', NULL, '吴员娟', '贵阳北师大附小', '观山湖区金花园', '520115201806262038', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '焦宇熙 Ives' AND class_id = 47
);

-- Row 921: 邓文西 Cathy @ 凤凰32班
UPDATE v2.students
SET phone = '18985121196',
    primary_guardian_type = '妈妈',
    parent_name = '高春梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邓文西 Cathy'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邓文西 Cathy', 47, '18985121196', '妈妈', '高春梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邓文西 Cathy' AND class_id = 47
);

-- Row 922: 胡杏月 Ayla @ 凤凰32班
UPDATE v2.students
SET phone = '13985101180',
    primary_guardian_type = NULL,
    parent_name = '杨彩云',
    school = '双龙实验一小',
    address = '南明区首开紫郡',
    id_card = '520202201703075043',
    updated_at = NOW()
WHERE name = '胡杏月 Ayla'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡杏月 Ayla', 47, '13985101180', NULL, '杨彩云', '双龙实验一小', '南明区首开紫郡', '520202201703075043', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡杏月 Ayla' AND class_id = 47
);

-- Row 923: 艾千然 Cheyne @ 凤凰32班
UPDATE v2.students
SET phone = '13678500547',
    primary_guardian_type = NULL,
    parent_name = '陈娅娅',
    school = '实验小学',
    address = '云岩区市北路',
    id_card = '520103201707044832',
    updated_at = NOW()
WHERE name = '艾千然 Cheyne'
  AND class_id = 47;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '艾千然 Cheyne', 47, '13678500547', NULL, '陈娅娅', '实验小学', '云岩区市北路', '520103201707044832', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '艾千然 Cheyne' AND class_id = 47
);

-- Row 948: 张浩轩Felix @ 凤凰25班
UPDATE v2.students
SET phone = '18984818109',
    primary_guardian_type = '妈妈',
    parent_name = '曾维娟',
    school = '贵阳市实验小学方舟分校',
    address = '贵阳市云岩区未来方舟',
    id_card = '520103201509220311',
    updated_at = NOW()
WHERE name = '张浩轩Felix'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张浩轩Felix', 40, '18984818109', '妈妈', '曾维娟', '贵阳市实验小学方舟分校', '贵阳市云岩区未来方舟', '520103201509220311', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张浩轩Felix' AND class_id = 40
);

-- Row 949: 杨君灏Herman @ 凤凰25班
UPDATE v2.students
SET phone = '13918843619',
    primary_guardian_type = '妈妈',
    parent_name = '胡助红',
    school = '贵州师范大学贵安新区附属小学',
    address = '贵阳市花溪区财经大学明德楼',
    id_card = '34182420161005321X',
    updated_at = NOW()
WHERE name = '杨君灏Herman'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨君灏Herman', 40, '13918843619', '妈妈', '胡助红', '贵州师范大学贵安新区附属小学', '贵阳市花溪区财经大学明德楼', '34182420161005321X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨君灏Herman' AND class_id = 40
);

-- Row 950: 庄韩景Darren @ 凤凰25班
UPDATE v2.students
SET phone = '15885016259',
    primary_guardian_type = '妈妈',
    parent_name = '黄萍',
    school = NULL,
    address = '恒大雅苑',
    id_card = '360822201611028737',
    updated_at = NOW()
WHERE name = '庄韩景Darren'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '庄韩景Darren', 40, '15885016259', '妈妈', '黄萍', NULL, '恒大雅苑', '360822201611028737', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '庄韩景Darren' AND class_id = 40
);

-- Row 951: 赵佳烨Jenny @ 凤凰25班
UPDATE v2.students
SET phone = '18085436888',
    primary_guardian_type = '妈妈',
    parent_name = '何佩玲',
    school = '省府路机关幼儿园',
    address = '云岩区',
    id_card = '5201032017122998421',
    updated_at = NOW()
WHERE name = '赵佳烨Jenny'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵佳烨Jenny', 40, '18085436888', '妈妈', '何佩玲', '省府路机关幼儿园', '云岩区', '5201032017122998421', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵佳烨Jenny' AND class_id = 40
);

-- Row 952: 孙宁睿 Amy @ 凤凰25班
UPDATE v2.students
SET phone = '13809413780',
    primary_guardian_type = '妈妈',
    parent_name = '唐兵',
    school = '北京芳草地国际小学',
    address = '云岩区未来方舟',
    id_card = '52010320160502082X',
    updated_at = NOW()
WHERE name = '孙宁睿 Amy'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙宁睿 Amy', 40, '13809413780', '妈妈', '唐兵', '北京芳草地国际小学', '云岩区未来方舟', '52010320160502082X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙宁睿 Amy' AND class_id = 40
);

-- Row 953: 王玥然Alice @ 凤凰25班
UPDATE v2.students
SET phone = '13984185057',
    primary_guardian_type = NULL,
    parent_name = '王朔',
    school = '幼儿园',
    address = '贵开路',
    id_card = '5201032001802265228',
    updated_at = NOW()
WHERE name = '王玥然Alice'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王玥然Alice', 40, '13984185057', NULL, '王朔', '幼儿园', '贵开路', '5201032001802265228', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王玥然Alice' AND class_id = 40
);

-- Row 954: 肖万豪Nike @ 凤凰25班
UPDATE v2.students
SET phone = '17684049491',
    primary_guardian_type = '妈妈',
    parent_name = '王润莲',
    school = '高新幼儿园',
    address = NULL,
    id_card = '520112201807170013',
    updated_at = NOW()
WHERE name = '肖万豪Nike'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖万豪Nike', 40, '17684049491', '妈妈', '王润莲', '高新幼儿园', NULL, '520112201807170013', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖万豪Nike' AND class_id = 40
);

-- Row 955: 肖格希Marin @ 凤凰25班
UPDATE v2.students
SET phone = '17684049491',
    primary_guardian_type = '妈妈',
    parent_name = '王润莲',
    school = '省府路小学',
    address = '文明路',
    id_card = '520112201708280022',
    updated_at = NOW()
WHERE name = '肖格希Marin'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖格希Marin', 40, '17684049491', '妈妈', '王润莲', '省府路小学', '文明路', '520112201708280022', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖格希Marin' AND class_id = 40
);

-- Row 956: 肖柱宇Joey @ 凤凰25班
UPDATE v2.students
SET phone = '18984599520',
    primary_guardian_type = '爸爸',
    parent_name = '肖亮',
    school = '实验小学麓山分校',
    address = '万科麓山',
    id_card = '5201122016092440034',
    updated_at = NOW()
WHERE name = '肖柱宇Joey'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖柱宇Joey', 40, '18984599520', '爸爸', '肖亮', '实验小学麓山分校', '万科麓山', '5201122016092440034', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖柱宇Joey' AND class_id = 40
);

-- Row 957: 文涵舒Steve @ 凤凰25班
UPDATE v2.students
SET phone = '13985566346',
    primary_guardian_type = '妈妈',
    parent_name = '方杨',
    school = '观山湖区第一小学',
    address = '观山湖金元国际新城',
    id_card = '520103201702049034',
    updated_at = NOW()
WHERE name = '文涵舒Steve'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '文涵舒Steve', 40, '13985566346', '妈妈', '方杨', '观山湖区第一小学', '观山湖金元国际新城', '520103201702049034', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '文涵舒Steve' AND class_id = 40
);

-- Row 958: 肖道鸣Alan @ 凤凰25班
UPDATE v2.students
SET phone = '13809492412',
    primary_guardian_type = '妈妈',
    parent_name = '张倩',
    school = '尚义路小学',
    address = '遵义路城市方舟',
    id_card = '520102201704181219',
    updated_at = NOW()
WHERE name = '肖道鸣Alan'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖道鸣Alan', 40, '13809492412', '妈妈', '张倩', '尚义路小学', '遵义路城市方舟', '520102201704181219', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖道鸣Alan' AND class_id = 40
);

-- Row 959: 彭彦羲Oliver @ 凤凰25班
UPDATE v2.students
SET phone = '13885008708',
    primary_guardian_type = '妈妈',
    parent_name = '李丹',
    school = '世纪城实验一小',
    address = '世纪城龙盛苑',
    id_card = '520103201611189218',
    updated_at = NOW()
WHERE name = '彭彦羲Oliver'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '彭彦羲Oliver', 40, '13885008708', '妈妈', '李丹', '世纪城实验一小', '世纪城龙盛苑', '520103201611189218', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '彭彦羲Oliver' AND class_id = 40
);

-- Row 960: 韩清伊Tara @ 凤凰25班
UPDATE v2.students
SET phone = '15285147563',
    primary_guardian_type = '妈妈',
    parent_name = '邓丽娟',
    school = '花二小',
    address = '花溪区保利溪湖',
    id_card = '520121201609266029',
    updated_at = NOW()
WHERE name = '韩清伊Tara'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韩清伊Tara', 40, '15285147563', '妈妈', '邓丽娟', '花二小', '花溪区保利溪湖', '520121201609266029', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韩清伊Tara' AND class_id = 40
);

-- Row 961: 解瑞泽 Rayze @ 凤凰25班
UPDATE v2.students
SET phone = '18786117108',
    primary_guardian_type = '妈妈',
    parent_name = '邓素华',
    school = '花溪二小',
    address = '花溪',
    id_card = '5201112016004020019',
    updated_at = NOW()
WHERE name = '解瑞泽 Rayze'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '解瑞泽 Rayze', 40, '18786117108', '妈妈', '邓素华', '花溪二小', '花溪', '5201112016004020019', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '解瑞泽 Rayze' AND class_id = 40
);

-- Row 962: 李穆垚Apple @ 凤凰25班
UPDATE v2.students
SET phone = '13984827693',
    primary_guardian_type = '妈妈',
    parent_name = '李福敏',
    school = '贵阳市第一幼儿园麓山分院',
    address = '万科麓山',
    id_card = '520102201802075081',
    updated_at = NOW()
WHERE name = '李穆垚Apple'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李穆垚Apple', 40, '13984827693', '妈妈', '李福敏', '贵阳市第一幼儿园麓山分院', '万科麓山', '520102201802075081', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李穆垚Apple' AND class_id = 40
);

-- Row 963: 黄鹏宇Nick @ 凤凰25班
UPDATE v2.students
SET phone = '13639003901',
    primary_guardian_type = '妈妈',
    parent_name = '黄女士',
    school = '南明小学',
    address = '亨特国际住宅区',
    id_card = '520102201701031215',
    updated_at = NOW()
WHERE name = '黄鹏宇Nick'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄鹏宇Nick', 40, '13639003901', '妈妈', '黄女士', '南明小学', '亨特国际住宅区', '520102201701031215', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄鹏宇Nick' AND class_id = 40
);

-- Row 964: 聂卓宸Aiden @ 凤凰25班
UPDATE v2.students
SET phone = '18111966337',
    primary_guardian_type = '妈妈',
    parent_name = '刘娟',
    school = '实验小学',
    address = '万科公园',
    id_card = '520103201706010436',
    updated_at = NOW()
WHERE name = '聂卓宸Aiden'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '聂卓宸Aiden', 40, '18111966337', '妈妈', '刘娟', '实验小学', '万科公园', '520103201706010436', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '聂卓宸Aiden' AND class_id = 40
);

-- Row 965: 任奕帆Felix @ 凤凰25班
UPDATE v2.students
SET phone = '13885114400',
    primary_guardian_type = '妈妈',
    parent_name = '曾茜',
    school = '南明小学',
    address = '中央公园',
    id_card = '520102201609307039',
    updated_at = NOW()
WHERE name = '任奕帆Felix'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '任奕帆Felix', 40, '13885114400', '妈妈', '曾茜', '南明小学', '中央公园', '520102201609307039', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '任奕帆Felix' AND class_id = 40
);

-- Row 966: 邱诗然Mico @ 凤凰25班
UPDATE v2.students
SET phone = '18685581311',
    primary_guardian_type = '妈妈',
    parent_name = '杨雪英',
    school = '苗苗实验学校',
    address = '贝地卢加诺',
    id_card = '520103201604230323',
    updated_at = NOW()
WHERE name = '邱诗然Mico'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邱诗然Mico', 40, '18685581311', '妈妈', '杨雪英', '苗苗实验学校', '贝地卢加诺', '520103201604230323', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邱诗然Mico' AND class_id = 40
);

-- Row 967: 邓棋航Silas @ 凤凰25班
UPDATE v2.students
SET phone = '15085951610',
    primary_guardian_type = '妈妈',
    parent_name = '向廷玫',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邓棋航Silas'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邓棋航Silas', 40, '15085951610', '妈妈', '向廷玫', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邓棋航Silas' AND class_id = 40
);

-- Row 968: 郭乘瑞Eason @ 凤凰25班
UPDATE v2.students
SET phone = '18300810706',
    primary_guardian_type = '妈妈',
    parent_name = '孙光瑶',
    school = '加德纳幼儿园',
    address = NULL,
    id_card = '520115201806082037',
    updated_at = NOW()
WHERE name = '郭乘瑞Eason'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭乘瑞Eason', 40, '18300810706', '妈妈', '孙光瑶', '加德纳幼儿园', NULL, '520115201806082037', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭乘瑞Eason' AND class_id = 40
);

-- Row 969: 冯皙然Bella @ 凤凰25班
UPDATE v2.students
SET phone = '15086040621',
    primary_guardian_type = '妈妈',
    parent_name = '程淑媛',
    school = '第五幼儿园',
    address = '南明区',
    id_card = '520103201806018048',
    updated_at = NOW()
WHERE name = '冯皙然Bella'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '冯皙然Bella', 40, '15086040621', '妈妈', '程淑媛', '第五幼儿园', '南明区', '520103201806018048', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '冯皙然Bella' AND class_id = 40
);

-- Row 970: 曹芝彦Gina @ 凤凰25班
UPDATE v2.students
SET phone = '18984007772',
    primary_guardian_type = '妈妈',
    parent_name = '刘娴',
    school = '为明小学',
    address = '万科翡翠传奇',
    id_card = '520103201706280428',
    updated_at = NOW()
WHERE name = '曹芝彦Gina'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹芝彦Gina', 40, '18984007772', '妈妈', '刘娴', '为明小学', '万科翡翠传奇', '520103201706280428', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹芝彦Gina' AND class_id = 40
);

-- Row 971: 卜梦琪 Christina @ 凤凰25班
UPDATE v2.students
SET phone = '18985101891',
    primary_guardian_type = '妈妈',
    parent_name = '刘燕',
    school = NULL,
    address = '盐务街梦想典城',
    id_card = '520103201808218422',
    updated_at = NOW()
WHERE name = '卜梦琪 Christina'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '卜梦琪 Christina', 40, '18985101891', '妈妈', '刘燕', NULL, '盐务街梦想典城', '520103201808218422', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '卜梦琪 Christina' AND class_id = 40
);

-- Row 972: 陈袁沐白 Wilbert @ 凤凰25班
UPDATE v2.students
SET phone = '13984894108',
    primary_guardian_type = '爸爸',
    parent_name = '袁航',
    school = '实验小学',
    address = '未来方舟',
    id_card = '520103201703228050',
    updated_at = NOW()
WHERE name = '陈袁沐白 Wilbert'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈袁沐白 Wilbert', 40, '13984894108', '爸爸', '袁航', '实验小学', '未来方舟', '520103201703228050', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈袁沐白 Wilbert' AND class_id = 40
);

-- Row 973: 杨博达Ted @ 麒麟10班
UPDATE v2.students
SET phone = '18685185337',
    primary_guardian_type = '爸爸',
    parent_name = '杨帆',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨博达Ted'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨博达Ted', 71, '18685185337', '爸爸', '杨帆', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨博达Ted' AND class_id = 71
);

-- Row 974: 王芊又Laura @ 麒麟10班
UPDATE v2.students
SET phone = '15685126000',
    primary_guardian_type = '妈妈',
    parent_name = '郭皙',
    school = '南明小学',
    address = '贵阳市南明区观文巷',
    id_card = '520102201306261221',
    updated_at = NOW()
WHERE name = '王芊又Laura'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王芊又Laura', 71, '15685126000', '妈妈', '郭皙', '南明小学', '贵阳市南明区观文巷', '520102201306261221', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王芊又Laura' AND class_id = 71
);

-- Row 975: 周思月池Rosie @ 麒麟10班
UPDATE v2.students
SET phone = '18984314615',
    primary_guardian_type = '妈妈',
    parent_name = '陈丽竹',
    school = '贵阳市实验小学',
    address = '南明区二戈寨',
    id_card = '520103201405102847',
    updated_at = NOW()
WHERE name = '周思月池Rosie'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周思月池Rosie', 71, '18984314615', '妈妈', '陈丽竹', '贵阳市实验小学', '南明区二戈寨', '520103201405102847', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周思月池Rosie' AND class_id = 71
);

-- Row 976: 王煦然Even @ 麒麟10班
UPDATE v2.students
SET phone = '18985179069',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '实验二小',
    address = '宅吉小区',
    id_card = '520102201311230817',
    updated_at = NOW()
WHERE name = '王煦然Even'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王煦然Even', 71, '18985179069', '妈妈', NULL, '实验二小', '宅吉小区', '520102201311230817', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王煦然Even' AND class_id = 71
);

-- Row 977: 孙远馨Vicky @ 麒麟10班
UPDATE v2.students
SET phone = '13984144532',
    primary_guardian_type = '妈妈',
    parent_name = '李静',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '孙远馨Vicky'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙远馨Vicky', 71, '13984144532', '妈妈', '李静', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙远馨Vicky' AND class_id = 71
);

-- Row 978: 墨丹青 Miranda @ 麒麟10班
UPDATE v2.students
SET phone = '13765130439',
    primary_guardian_type = '妈妈',
    parent_name = '彭波',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '墨丹青 Miranda'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '墨丹青 Miranda', 71, '13765130439', '妈妈', '彭波', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '墨丹青 Miranda' AND class_id = 71
);

-- Row 979: 苏子洋 Paul @ 麒麟10班
UPDATE v2.students
SET phone = '18685413443',
    primary_guardian_type = NULL,
    parent_name = '林扬恒',
    school = '省府路小学',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '苏子洋 Paul'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '苏子洋 Paul', 71, '18685413443', NULL, '林扬恒', '省府路小学', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '苏子洋 Paul' AND class_id = 71
);

-- Row 980: 王宝琪Cecily @ 麒麟10班
UPDATE v2.students
SET phone = '13595074222',
    primary_guardian_type = '妈妈',
    parent_name = '李雪梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王宝琪Cecily'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王宝琪Cecily', 71, '13595074222', '妈妈', '李雪梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王宝琪Cecily' AND class_id = 71
);

-- Row 981: 龙昱霖 Kimi @ 麒麟10班
UPDATE v2.students
SET phone = '13984808218',
    primary_guardian_type = '妈妈',
    parent_name = '杨娉',
    school = NULL,
    address = NULL,
    id_card = '520114201406251616',
    updated_at = NOW()
WHERE name = '龙昱霖 Kimi'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龙昱霖 Kimi', 71, '13984808218', '妈妈', '杨娉', NULL, NULL, '520114201406251616', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龙昱霖 Kimi' AND class_id = 71
);

-- Row 982: 李昱欣Grace @ 麒麟10班
UPDATE v2.students
SET phone = '13312281028',
    primary_guardian_type = '妈妈',
    parent_name = '罗玟闵',
    school = '南明小学',
    address = '观水巷',
    id_card = '52010220141103002X',
    updated_at = NOW()
WHERE name = '李昱欣Grace'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李昱欣Grace', 71, '13312281028', '妈妈', '罗玟闵', '南明小学', '观水巷', '52010220141103002X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李昱欣Grace' AND class_id = 71
);

-- Row 983: 高德馨Daniel G @ 麒麟10班
UPDATE v2.students
SET phone = '18586908525',
    primary_guardian_type = '妈妈',
    parent_name = '张超',
    school = '贵阳市实验一小',
    address = '观山湖区世纪城龙祥苑',
    id_card = '410506201210170052',
    updated_at = NOW()
WHERE name = '高德馨Daniel G'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高德馨Daniel G', 71, '18586908525', '妈妈', '张超', '贵阳市实验一小', '观山湖区世纪城龙祥苑', '410506201210170052', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高德馨Daniel G' AND class_id = 71
);

-- Row 984: 沈嘉渌Sky @ 麒麟10班
UPDATE v2.students
SET phone = '18984020806',
    primary_guardian_type = '妈妈',
    parent_name = '黄静',
    school = '幸福学堂',
    address = '未来方舟',
    id_card = '520103201208313231',
    updated_at = NOW()
WHERE name = '沈嘉渌Sky'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '沈嘉渌Sky', 71, '18984020806', '妈妈', '黄静', '幸福学堂', '未来方舟', '520103201208313231', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '沈嘉渌Sky' AND class_id = 71
);

-- Row 985: 蒋卓熙Geroge @ 麒麟10班
UPDATE v2.students
SET phone = '18984002939',
    primary_guardian_type = '妈妈',
    parent_name = '汤晓柯',
    school = '北师大贵阳附小',
    address = '观山湖区金华园',
    id_card = '520102201312081614',
    updated_at = NOW()
WHERE name = '蒋卓熙Geroge'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋卓熙Geroge', 71, '18984002939', '妈妈', '汤晓柯', '北师大贵阳附小', '观山湖区金华园', '520102201312081614', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋卓熙Geroge' AND class_id = 71
);

-- Row 986: 黎宸希Allen @ 麒麟10班
UPDATE v2.students
SET phone = '15285633651',
    primary_guardian_type = '妈妈',
    parent_name = '黎谦',
    school = '中天北京小学',
    address = '未来方舟',
    id_card = '520102201503151232',
    updated_at = NOW()
WHERE name = '黎宸希Allen'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黎宸希Allen', 71, '15285633651', '妈妈', '黎谦', '中天北京小学', '未来方舟', '520102201503151232', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黎宸希Allen' AND class_id = 71
);

-- Row 987: 黄天赐Eric @ 麒麟10班
UPDATE v2.students
SET phone = '13618509609',
    primary_guardian_type = NULL,
    parent_name = '黄安江',
    school = '云岩区向阳实验小学',
    address = '云岩区未来方舟D9组团',
    id_card = '520122201210291835',
    updated_at = NOW()
WHERE name = '黄天赐Eric'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄天赐Eric', 71, '13618509609', NULL, '黄安江', '云岩区向阳实验小学', '云岩区未来方舟D9组团', '520122201210291835', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄天赐Eric' AND class_id = 71
);

-- Row 988: 付涵语Lora @ 麒麟10班
UPDATE v2.students
SET phone = '17785691612',
    primary_guardian_type = NULL,
    parent_name = '王蓉',
    school = '尚义小学',
    address = '望城坡',
    id_card = '520102201507181623',
    updated_at = NOW()
WHERE name = '付涵语Lora'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '付涵语Lora', 71, '17785691612', NULL, '王蓉', '尚义小学', '望城坡', '520102201507181623', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '付涵语Lora' AND class_id = 71
);

-- Row 989: 田欣愉Sunny @ 麒麟10班
UPDATE v2.students
SET phone = '13037888989',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '贵阳市第二实验小学',
    address = '云岩区',
    id_card = '520102201401134028',
    updated_at = NOW()
WHERE name = '田欣愉Sunny'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '田欣愉Sunny', 71, '13037888989', NULL, NULL, '贵阳市第二实验小学', '云岩区', '520102201401134028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '田欣愉Sunny' AND class_id = 71
);

-- Row 990: 陈禹希Jason @ 麒麟10班
UPDATE v2.students
SET phone = '18685191068',
    primary_guardian_type = '妈妈',
    parent_name = '杨丽华',
    school = '花溪区第一实验学校',
    address = '花溪区小河长江路乐街小区',
    id_card = '520114198806170423',
    updated_at = NOW()
WHERE name = '陈禹希Jason'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈禹希Jason', 71, '18685191068', '妈妈', '杨丽华', '花溪区第一实验学校', '花溪区小河长江路乐街小区', '520114198806170423', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈禹希Jason' AND class_id = 71
);

-- Row 991: 毕宇梵Daniel @ 麒麟10班
UPDATE v2.students
SET phone = '13765821004',
    primary_guardian_type = NULL,
    parent_name = '王雪艳',
    school = '贵阳实验小学保利云山分校',
    address = '保利云山国际14-2-401',
    id_card = '520102201310101618',
    updated_at = NOW()
WHERE name = '毕宇梵Daniel'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '毕宇梵Daniel', 71, '13765821004', NULL, '王雪艳', '贵阳实验小学保利云山分校', '保利云山国际14-2-401', '520102201310101618', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '毕宇梵Daniel' AND class_id = 71
);

-- Row 992: 段姿羽Doris @ 麒麟10班
UPDATE v2.students
SET phone = '13984833100',
    primary_guardian_type = NULL,
    parent_name = '殷雪嫚',
    school = '尚义路小学',
    address = '花果园街54号',
    id_card = '520102201402171747',
    updated_at = NOW()
WHERE name = '段姿羽Doris'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '段姿羽Doris', 71, '13984833100', NULL, '殷雪嫚', '尚义路小学', '花果园街54号', '520102201402171747', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '段姿羽Doris' AND class_id = 71
);

-- Row 993: 陈彦博Simon @ 麒麟10班
UPDATE v2.students
SET phone = '18985177517',
    primary_guardian_type = NULL,
    parent_name = '李丹',
    school = '华东师范大学附属贵阳学校',
    address = '观山湖区世纪城龙吉苑',
    id_card = '520103201402075230',
    updated_at = NOW()
WHERE name = '陈彦博Simon'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈彦博Simon', 71, '18985177517', NULL, '李丹', '华东师范大学附属贵阳学校', '观山湖区世纪城龙吉苑', '520103201402075230', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈彦博Simon' AND class_id = 71
);

-- Row 994: 曾致远Joey @ 麒麟10班
UPDATE v2.students
SET phone = '13885141748',
    primary_guardian_type = NULL,
    parent_name = '金香',
    school = '尚义小学',
    address = '油榨街园林路森林之家',
    id_card = '520102201406017832',
    updated_at = NOW()
WHERE name = '曾致远Joey'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾致远Joey', 71, '13885141748', NULL, '金香', '尚义小学', '油榨街园林路森林之家', '520102201406017832', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾致远Joey' AND class_id = 71
);

-- Row 995: 陈苇杭Marina @ 麒麟10班
UPDATE v2.students
SET phone = '13885105155',
    primary_guardian_type = NULL,
    parent_name = '杨敏',
    school = '甲秀小学',
    address = '小河万科',
    id_card = '520103201311082021',
    updated_at = NOW()
WHERE name = '陈苇杭Marina'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈苇杭Marina', 71, '13885105155', NULL, '杨敏', '甲秀小学', '小河万科', '520103201311082021', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈苇杭Marina' AND class_id = 71
);

-- Row 996: 周声晚Vesper @ 大锦鲤41班
UPDATE v2.students
SET phone = '18586848785',
    primary_guardian_type = '妈妈',
    parent_name = '胡婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周声晚Vesper'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周声晚Vesper', 24, '18586848785', '妈妈', '胡婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周声晚Vesper' AND class_id = 24
);

-- Row 997: 蒋敬安Andy @ 大锦鲤41班
UPDATE v2.students
SET phone = '13765159149',
    primary_guardian_type = '妈妈',
    parent_name = '蒋万勇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋敬安Andy'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋敬安Andy', 24, '13765159149', '妈妈', '蒋万勇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋敬安Andy' AND class_id = 24
);

-- Row 998: 田悠然Tia @ 大锦鲤41班
UPDATE v2.students
SET phone = '15285115014',
    primary_guardian_type = '妈妈',
    parent_name = '罗巧巧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '田悠然Tia'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '田悠然Tia', 24, '15285115014', '妈妈', '罗巧巧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '田悠然Tia' AND class_id = 24
);

-- Row 999: 袁志橦Ziven @ 大锦鲤41班
UPDATE v2.students
SET phone = '15086028371',
    primary_guardian_type = '妈妈',
    parent_name = '陆兰',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '袁志橦Ziven'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁志橦Ziven', 24, '15086028371', '妈妈', '陆兰', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁志橦Ziven' AND class_id = 24
);

-- Row 1000: 覃纾悦Bonnie @ 大锦鲤41班
UPDATE v2.students
SET phone = '18908507216',
    primary_guardian_type = '妈妈',
    parent_name = '张芷言',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '覃纾悦Bonnie'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '覃纾悦Bonnie', 24, '18908507216', '妈妈', '张芷言', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '覃纾悦Bonnie' AND class_id = 24
);

-- Row 1001: 徐言熙Star @ 大锦鲤41班
UPDATE v2.students
SET phone = '18585858628',
    primary_guardian_type = '妈妈',
    parent_name = '秦晴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '徐言熙Star'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐言熙Star', 24, '18585858628', '妈妈', '秦晴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐言熙Star' AND class_id = 24
);

-- Row 1002: 李欣桐Mango @ 大锦鲤41班
UPDATE v2.students
SET phone = '13984094425',
    primary_guardian_type = '妈妈',
    parent_name = '张梓然',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李欣桐Mango'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李欣桐Mango', 24, '13984094425', '妈妈', '张梓然', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李欣桐Mango' AND class_id = 24
);

-- Row 1003: 武涵雨Ruby @ 大锦鲤41班
UPDATE v2.students
SET phone = '13885366877',
    primary_guardian_type = '妈妈',
    parent_name = '刘红',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '武涵雨Ruby'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '武涵雨Ruby', 24, '13885366877', '妈妈', '刘红', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '武涵雨Ruby' AND class_id = 24
);

-- Row 1004: 王庚硕Rylan @ 大锦鲤41班
UPDATE v2.students
SET phone = '18685412813',
    primary_guardian_type = '妈妈',
    parent_name = '任敬',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王庚硕Rylan'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王庚硕Rylan', 24, '18685412813', '妈妈', '任敬', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王庚硕Rylan' AND class_id = 24
);

-- Row 1005: 王锦汐Abby @ 大锦鲤41班
UPDATE v2.students
SET phone = '13648509156',
    primary_guardian_type = '妈妈',
    parent_name = '张佩',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王锦汐Abby'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王锦汐Abby', 24, '13648509156', '妈妈', '张佩', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王锦汐Abby' AND class_id = 24
);

-- Row 1006: 龚佑霖Gavin @ 大锦鲤41班
UPDATE v2.students
SET phone = '19316671527',
    primary_guardian_type = '妈妈',
    parent_name = '欧阳艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '龚佑霖Gavin'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龚佑霖Gavin', 24, '19316671527', '妈妈', '欧阳艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龚佑霖Gavin' AND class_id = 24
);

-- Row 1007: 符煊宜Joey @ 大锦鲤41班
UPDATE v2.students
SET phone = '18685176764',
    primary_guardian_type = '妈妈',
    parent_name = '邓紫涵',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '符煊宜Joey'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '符煊宜Joey', 24, '18685176764', '妈妈', '邓紫涵', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '符煊宜Joey' AND class_id = 24
);

-- Row 1008: 陈新旸Bella @ 小锦鲤38班
UPDATE v2.students
SET phone = '18655759930',
    primary_guardian_type = '妈妈',
    parent_name = '许道飞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈新旸Bella'
  AND class_id = 21;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈新旸Bella', 21, '18655759930', '妈妈', '许道飞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈新旸Bella' AND class_id = 21
);

-- Row 1031: 彭远卓Jimmy @ 凤凰38班
UPDATE v2.students
SET phone = '13984071701',
    primary_guardian_type = '妈妈',
    parent_name = '颜新新',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '彭远卓Jimmy'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '彭远卓Jimmy', 53, '13984071701', '妈妈', '颜新新', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '彭远卓Jimmy' AND class_id = 53
);

-- Row 1057: 唐语晴Candy @ 麒麟09班
UPDATE v2.students
SET phone = '17620140621',
    primary_guardian_type = '妈妈',
    parent_name = '方雅妮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '唐语晴Candy'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐语晴Candy', 70, '17620140621', '妈妈', '方雅妮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐语晴Candy' AND class_id = 70
);

-- Row 1058: 郑渤皓雨Luke @ 麒麟09班
UPDATE v2.students
SET phone = '17385006986',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '尚义路小学',
    address = NULL,
    id_card = '520102201304103403',
    updated_at = NOW()
WHERE name = '郑渤皓雨Luke'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郑渤皓雨Luke', 70, '17385006986', NULL, NULL, '尚义路小学', NULL, '520102201304103403', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郑渤皓雨Luke' AND class_id = 70
);

-- Row 1059: 岳妤彤Amy @ 麒麟09班
UPDATE v2.students
SET phone = '13985546703',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '实验小学',
    address = '云岩区北京路',
    id_card = '520103201211213629',
    updated_at = NOW()
WHERE name = '岳妤彤Amy'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '岳妤彤Amy', 70, '13985546703', NULL, NULL, '实验小学', '云岩区北京路', '520103201211213629', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '岳妤彤Amy' AND class_id = 70
);

-- Row 1060: 邱楚程Star @ 麒麟09班
UPDATE v2.students
SET phone = '18685013946',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '贵阳市第一实验小学',
    address = '新世界',
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邱楚程Star'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邱楚程Star', 70, '18685013946', NULL, NULL, '贵阳市第一实验小学', '新世界', NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邱楚程Star' AND class_id = 70
);

-- Row 1061: 叶承翰Bert @ 麒麟09班
UPDATE v2.students
SET phone = '13595113988',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '实验小学',
    address = '保利云山国际',
    id_card = '52010220130813703x',
    updated_at = NOW()
WHERE name = '叶承翰Bert'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '叶承翰Bert', 70, '13595113988', NULL, NULL, '实验小学', '保利云山国际', '52010220130813703x', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '叶承翰Bert' AND class_id = 70
);

-- Row 1062: 宋诗琪Bella @ 麒麟09班
UPDATE v2.students
SET phone = '18008503910',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '尚义路小学',
    address = NULL,
    id_card = '520102201405301647',
    updated_at = NOW()
WHERE name = '宋诗琪Bella'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋诗琪Bella', 70, '18008503910', NULL, NULL, '尚义路小学', NULL, '520102201405301647', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋诗琪Bella' AND class_id = 70
);

-- Row 1063: 夏天心Sherry @ 麒麟09班
UPDATE v2.students
SET phone = '18085187617',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '芳草地国际学校',
    address = '未来方舟',
    id_card = '520103201312064423',
    updated_at = NOW()
WHERE name = '夏天心Sherry'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '夏天心Sherry', 70, '18085187617', NULL, NULL, '芳草地国际学校', '未来方舟', '520103201312064423', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '夏天心Sherry' AND class_id = 70
);

-- Row 1064: 向胤名Harry @ 麒麟09班
UPDATE v2.students
SET phone = '13885126156',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '芳草地',
    address = '未来方舟',
    id_card = '52010320140717',
    updated_at = NOW()
WHERE name = '向胤名Harry'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '向胤名Harry', 70, '13885126156', NULL, NULL, '芳草地', '未来方舟', '52010320140717', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '向胤名Harry' AND class_id = 70
);

-- Row 1065: 付秋桦Wilson @ 麒麟09班
UPDATE v2.students
SET phone = '18685030889',
    primary_guardian_type = '妈妈',
    parent_name = '魏芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '付秋桦Wilson'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '付秋桦Wilson', 70, '18685030889', '妈妈', '魏芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '付秋桦Wilson' AND class_id = 70
);

-- Row 1066: 马绮朵Violetta @ 麒麟09班
UPDATE v2.students
SET phone = '13984860522',
    primary_guardian_type = '妈妈',
    parent_name = '李诺',
    school = '实验小学',
    address = '贵乌中路',
    id_card = '520103201211132829',
    updated_at = NOW()
WHERE name = '马绮朵Violetta'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马绮朵Violetta', 70, '13984860522', '妈妈', '李诺', '实验小学', '贵乌中路', '520103201211132829', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马绮朵Violetta' AND class_id = 70
);

-- Row 1067: 李瑞鹏Sam @ 麒麟09班
UPDATE v2.students
SET phone = '13984810615',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = '美的林城时代',
    id_card = '520102201403107015',
    updated_at = NOW()
WHERE name = '李瑞鹏Sam'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李瑞鹏Sam', 70, '13984810615', '妈妈', NULL, NULL, '美的林城时代', '520102201403107015', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李瑞鹏Sam' AND class_id = 70
);

-- Row 1068: 郭珏菲Amy @ 麒麟09班
UPDATE v2.students
SET phone = '18685052377',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '省府路小学',
    address = NULL,
    id_card = '52010320120914082X',
    updated_at = NOW()
WHERE name = '郭珏菲Amy'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭珏菲Amy', 70, '18685052377', NULL, NULL, '省府路小学', NULL, '52010320120914082X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭珏菲Amy' AND class_id = 70
);

-- Row 1069: 纪芮曦Joyce @ 麒麟09班
UPDATE v2.students
SET phone = '13984870823',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '尚义路小学',
    address = NULL,
    id_card = '52010220130704',
    updated_at = NOW()
WHERE name = '纪芮曦Joyce'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '纪芮曦Joyce', 70, '13984870823', NULL, NULL, '尚义路小学', NULL, '52010220130704', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '纪芮曦Joyce' AND class_id = 70
);

-- Row 1070: 刘子萱Connie @ 麒麟09班
UPDATE v2.students
SET phone = '15285021666',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '南明小学',
    address = '观水路盛世花城',
    id_card = '520102201208231248',
    updated_at = NOW()
WHERE name = '刘子萱Connie'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘子萱Connie', 70, '15285021666', NULL, NULL, '南明小学', '观水路盛世花城', '520102201208231248', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘子萱Connie' AND class_id = 70
);

-- Row 1071: 龙则均Frank @ 麒麟09班
UPDATE v2.students
SET phone = '15519136736',
    primary_guardian_type = NULL,
    parent_name = '杨媛',
    school = '尚义路小学',
    address = '狮峰路',
    id_card = '520102201210050411',
    updated_at = NOW()
WHERE name = '龙则均Frank'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龙则均Frank', 70, '15519136736', NULL, '杨媛', '尚义路小学', '狮峰路', '520102201210050411', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龙则均Frank' AND class_id = 70
);

-- Row 1072: 高梓晋Ian @ 麒麟09班
UPDATE v2.students
SET phone = '13984144305',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '尚义路小学',
    address = '南明区解放路',
    id_card = '520102201210180013',
    updated_at = NOW()
WHERE name = '高梓晋Ian'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高梓晋Ian', 70, '13984144305', NULL, NULL, '尚义路小学', '南明区解放路', '520102201210180013', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高梓晋Ian' AND class_id = 70
);

-- Row 1073: 陈胤钒Jason @ 麒麟09班
UPDATE v2.students
SET phone = '18685177010',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '南明小学',
    address = '文昌北路',
    id_card = '520103201404060411',
    updated_at = NOW()
WHERE name = '陈胤钒Jason'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈胤钒Jason', 70, '18685177010', NULL, NULL, '南明小学', '文昌北路', '520103201404060411', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈胤钒Jason' AND class_id = 70
);

-- Row 1074: 周榆涵Zuri @ 麒麟18班
UPDATE v2.students
SET phone = '17784116868',
    primary_guardian_type = '妈妈',
    parent_name = '王安琪',
    school = '花溪区第一实验小学',
    address = '小河恒大翡翠',
    id_card = '520102201605137028',
    updated_at = NOW()
WHERE name = '周榆涵Zuri'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周榆涵Zuri', 78, '17784116868', '妈妈', '王安琪', '花溪区第一实验小学', '小河恒大翡翠', '520102201605137028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周榆涵Zuri' AND class_id = 78
);

-- Row 1075: 邹靖蓝Benjamin @ 麒麟18班
UPDATE v2.students
SET phone = '13985495858',
    primary_guardian_type = '妈妈',
    parent_name = '邹倩',
    school = '第一实验小学',
    address = '中华北路',
    id_card = '520103201411242870',
    updated_at = NOW()
WHERE name = '邹靖蓝Benjamin'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹靖蓝Benjamin', 78, '13985495858', '妈妈', '邹倩', '第一实验小学', '中华北路', '520103201411242870', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹靖蓝Benjamin' AND class_id = 78
);

-- Row 1076: 周砚之Mario @ 麒麟18班
UPDATE v2.students
SET phone = '18984306115',
    primary_guardian_type = '妈妈',
    parent_name = '罗玲',
    school = '实验小学麓山分校',
    address = '云岩区万科麓山',
    id_card = '520102201607032713',
    updated_at = NOW()
WHERE name = '周砚之Mario'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周砚之Mario', 78, '18984306115', '妈妈', '罗玲', '实验小学麓山分校', '云岩区万科麓山', '520102201607032713', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周砚之Mario' AND class_id = 78
);

-- Row 1077: 石浚楷Strong @ 麒麟18班
UPDATE v2.students
SET phone = '18685021237',
    primary_guardian_type = '妈妈',
    parent_name = '李光敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '石浚楷Strong'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '石浚楷Strong', 78, '18685021237', '妈妈', '李光敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '石浚楷Strong' AND class_id = 78
);

-- Row 1078: 施璟雯Angelina @ 麒麟18班
UPDATE v2.students
SET phone = '13984377333',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '尚义路小学',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '施璟雯Angelina'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '施璟雯Angelina', 78, '13984377333', '妈妈', NULL, '尚义路小学', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '施璟雯Angelina' AND class_id = 78
);

-- Row 1079: 杨宇辰Steven @ 麒麟18班
UPDATE v2.students
SET phone = '13595045400',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '北师大附小',
    address = '观山湖区美的林城时代',
    id_card = '520103201506270313',
    updated_at = NOW()
WHERE name = '杨宇辰Steven'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨宇辰Steven', 78, '13595045400', '妈妈', NULL, '北师大附小', '观山湖区美的林城时代', '520103201506270313', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨宇辰Steven' AND class_id = 78
);

-- Row 1080: 王浩名Lionel @ 麒麟18班
UPDATE v2.students
SET phone = '15685126000',
    primary_guardian_type = '妈妈',
    parent_name = '郭皙',
    school = '南明小学',
    address = NULL,
    id_card = '520102201506241217',
    updated_at = NOW()
WHERE name = '王浩名Lionel'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王浩名Lionel', 78, '15685126000', '妈妈', '郭皙', '南明小学', NULL, '520102201506241217', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王浩名Lionel' AND class_id = 78
);

-- Row 1081: 唐方一Thorin @ 麒麟18班
UPDATE v2.students
SET phone = '18984072887',
    primary_guardian_type = '妈妈',
    parent_name = '刘璐',
    school = '北师大贵阳附小',
    address = NULL,
    id_card = '520102201402121210',
    updated_at = NOW()
WHERE name = '唐方一Thorin'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐方一Thorin', 78, '18984072887', '妈妈', '刘璐', '北师大贵阳附小', NULL, '520102201402121210', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐方一Thorin' AND class_id = 78
);

-- Row 1082: 王靖蓝William @ 麒麟18班
UPDATE v2.students
SET phone = '13985495858',
    primary_guardian_type = '妈妈',
    parent_name = '邹倩',
    school = '实验小学',
    address = '中华北路',
    id_card = '520103201411242854',
    updated_at = NOW()
WHERE name = '王靖蓝William'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王靖蓝William', 78, '13985495858', '妈妈', '邹倩', '实验小学', '中华北路', '520103201411242854', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王靖蓝William' AND class_id = 78
);

-- Row 1083: 唐依铉Candy @ 麒麟18班
UPDATE v2.students
SET phone = '13985431287',
    primary_guardian_type = '妈妈',
    parent_name = '刘玉珏',
    school = '贵阳市实验小学',
    address = '枫丹白鹭',
    id_card = '52010220160316302X',
    updated_at = NOW()
WHERE name = '唐依铉Candy'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐依铉Candy', 78, '13985431287', '妈妈', '刘玉珏', '贵阳市实验小学', '枫丹白鹭', '52010220160316302X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐依铉Candy' AND class_id = 78
);

-- Row 1084: 孙靖然Noah @ 麒麟18班
UPDATE v2.students
SET phone = '15519018588',
    primary_guardian_type = '妈妈',
    parent_name = '贺璇',
    school = '贵阳市第一实验小学',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '孙靖然Noah'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙靖然Noah', 78, '15519018588', '妈妈', '贺璇', '贵阳市第一实验小学', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙靖然Noah' AND class_id = 78
);

-- Row 1085: 张恒珺渤Felix @ 麒麟18班
UPDATE v2.students
SET phone = '15685518003',
    primary_guardian_type = '妈妈',
    parent_name = '李忻遥',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张恒珺渤Felix'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张恒珺渤Felix', 78, '15685518003', '妈妈', '李忻遥', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张恒珺渤Felix' AND class_id = 78
);

-- Row 1086: 蒋兴宇James @ 麒麟18班
UPDATE v2.students
SET phone = '13087857874',
    primary_guardian_type = '妈妈',
    parent_name = '卜倩',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋兴宇James'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋兴宇James', 78, '13087857874', '妈妈', '卜倩', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋兴宇James' AND class_id = 78
);

-- Row 1087: 潘婧涵Claire @ 麒麟18班
UPDATE v2.students
SET phone = '18275287031',
    primary_guardian_type = '妈妈',
    parent_name = '刘倩',
    school = '北京路朝阳区实验小学贵阳分校',
    address = '保利凤凰湾',
    id_card = '411725201411170025',
    updated_at = NOW()
WHERE name = '潘婧涵Claire'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '潘婧涵Claire', 78, '18275287031', '妈妈', '刘倩', '北京路朝阳区实验小学贵阳分校', '保利凤凰湾', '411725201411170025', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '潘婧涵Claire' AND class_id = 78
);

-- Row 1088: 胡荆浩Simba @ 麒麟18班
UPDATE v2.students
SET phone = '18685140322',
    primary_guardian_type = '妈妈',
    parent_name = '吉利',
    school = '观山湖一小',
    address = '金元国际新城',
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡荆浩Simba'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡荆浩Simba', 78, '18685140322', '妈妈', '吉利', '观山湖一小', '金元国际新城', NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡荆浩Simba' AND class_id = 78
);

-- Row 1089: 饶芷宁Andy @ 麒麟18班
UPDATE v2.students
SET phone = '13985548226',
    primary_guardian_type = '妈妈',
    parent_name = '冯梅',
    school = '观山湖外国语实验小学',
    address = '观山湖新世界御湖',
    id_card = '520102201602082447',
    updated_at = NOW()
WHERE name = '饶芷宁Andy'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '饶芷宁Andy', 78, '13985548226', '妈妈', '冯梅', '观山湖外国语实验小学', '观山湖新世界御湖', '520102201602082447', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '饶芷宁Andy' AND class_id = 78
);

-- Row 1090: 牟思潼Alisa @ 麒麟18班
UPDATE v2.students
SET phone = '15683146818',
    primary_guardian_type = '妈妈',
    parent_name = '雷恒杰',
    school = '第一实验小学',
    address = '观山湖世纪城',
    id_card = '500222201410289168',
    updated_at = NOW()
WHERE name = '牟思潼Alisa'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '牟思潼Alisa', 78, '15683146818', '妈妈', '雷恒杰', '第一实验小学', '观山湖世纪城', '500222201410289168', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '牟思潼Alisa' AND class_id = 78
);

-- Row 1091: 林久丁Judy @ 麒麟18班
UPDATE v2.students
SET phone = '13595034241',
    primary_guardian_type = '妈妈',
    parent_name = '熊欣',
    school = '甲秀小学',
    address = '中天世纪新城',
    id_card = '520102201603023449',
    updated_at = NOW()
WHERE name = '林久丁Judy'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林久丁Judy', 78, '13595034241', '妈妈', '熊欣', '甲秀小学', '中天世纪新城', '520102201603023449', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林久丁Judy' AND class_id = 78
);

-- Row 1092: 任清元Alain @ 麒麟18班
UPDATE v2.students
SET phone = '18085003541',
    primary_guardian_type = '妈妈',
    parent_name = '邓超男',
    school = '贵阳市实验四小',
    address = '贵阳市市北路',
    id_card = '520103201604270018',
    updated_at = NOW()
WHERE name = '任清元Alain'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '任清元Alain', 78, '18085003541', '妈妈', '邓超男', '贵阳市实验四小', '贵阳市市北路', '520103201604270018', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '任清元Alain' AND class_id = 78
);

-- Row 1093: 马慕橙Cookie M @ 麒麟18班
UPDATE v2.students
SET phone = '15285118050',
    primary_guardian_type = '爸爸',
    parent_name = '马福全',
    school = '实验小学（麓山分校）',
    address = '北京西路万科麓山',
    id_card = '520102201604197846',
    updated_at = NOW()
WHERE name = '马慕橙Cookie M'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马慕橙Cookie M', 78, '15285118050', '爸爸', '马福全', '实验小学（麓山分校）', '北京西路万科麓山', '520102201604197846', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马慕橙Cookie M' AND class_id = 78
);

-- Row 1094: 李彦龙Bob @ 麒麟18班
UPDATE v2.students
SET phone = '13885135900',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '贵阳市实验小学',
    address = '云岩区小石城',
    id_card = '52010320141012483X',
    updated_at = NOW()
WHERE name = '李彦龙Bob'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李彦龙Bob', 78, '13885135900', '妈妈', NULL, '贵阳市实验小学', '云岩区小石城', '52010320141012483X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李彦龙Bob' AND class_id = 78
);

-- Row 1095: 邓博滔Henry @ 麒麟18班
UPDATE v2.students
SET phone = '18984895353',
    primary_guardian_type = '妈妈',
    parent_name = '王媛媛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邓博滔Henry'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邓博滔Henry', 78, '18984895353', '妈妈', '王媛媛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邓博滔Henry' AND class_id = 78
);

-- Row 1096: 郭蕴卓Yuky @ 麒麟18班
UPDATE v2.students
SET phone = '15285608890',
    primary_guardian_type = '妈妈',
    parent_name = '李怡铮',
    school = '贵州师范大学贵安附属小学',
    address = '碧桂园花溪1号',
    id_card = '5201032014099016727',
    updated_at = NOW()
WHERE name = '郭蕴卓Yuky'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭蕴卓Yuky', 78, '15285608890', '妈妈', '李怡铮', '贵州师范大学贵安附属小学', '碧桂园花溪1号', '5201032014099016727', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭蕴卓Yuky' AND class_id = 78
);

-- Row 1097: 范煜晨Colin @ 麒麟18班
UPDATE v2.students
SET phone = '13960692556',
    primary_guardian_type = '妈妈',
    parent_name = '杨小莲',
    school = '南明小学',
    address = '众福家园',
    id_card = '350781201504170415',
    updated_at = NOW()
WHERE name = '范煜晨Colin'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '范煜晨Colin', 78, '13960692556', '妈妈', '杨小莲', '南明小学', '众福家园', '350781201504170415', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '范煜晨Colin' AND class_id = 78
);

-- Row 1098: 陈曼睿Elsa @ 麒麟18班
UPDATE v2.students
SET phone = '13668517823',
    primary_guardian_type = '妈妈',
    parent_name = '何顺',
    school = '乌当新天九年制学校',
    address = '新添寨北街路金颂花园',
    id_card = '52011420151020182X',
    updated_at = NOW()
WHERE name = '陈曼睿Elsa'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈曼睿Elsa', 78, '13668517823', '妈妈', '何顺', '乌当新天九年制学校', '新添寨北街路金颂花园', '52011420151020182X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈曼睿Elsa' AND class_id = 78
);

-- Row 1099: 陈梓萱Amelia @ 麒麟18班
UPDATE v2.students
SET phone = '18285100116',
    primary_guardian_type = '妈妈',
    parent_name = '张莉娜',
    school = '海文小学',
    address = '罗汉营',
    id_card = '520103201312060326',
    updated_at = NOW()
WHERE name = '陈梓萱Amelia'
  AND class_id = 78;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈梓萱Amelia', 78, '18285100116', '妈妈', '张莉娜', '海文小学', '罗汉营', '520103201312060326', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈梓萱Amelia' AND class_id = 78
);

-- Row 1141: 吴佩霖 @ 凤凰27班
UPDATE v2.students
SET phone = '13658506701',
    primary_guardian_type = '妈妈',
    parent_name = '吴艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴佩霖'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴佩霖', 42, '13658506701', '妈妈', '吴艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴佩霖' AND class_id = 42
);

-- Row 1142: 许嘉行 Jacob @ 凤凰27班
UPDATE v2.students
SET phone = '15185013270',
    primary_guardian_type = '妈妈',
    parent_name = '许磊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '许嘉行 Jacob'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '许嘉行 Jacob', 42, '15185013270', '妈妈', '许磊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '许嘉行 Jacob' AND class_id = 42
);

-- Row 1143: 岳声董博 Bunny @ 凤凰27班
UPDATE v2.students
SET phone = '18984854942',
    primary_guardian_type = '妈妈',
    parent_name = '董燕',
    school = '芳草地小学',
    address = '未来方舟',
    id_card = '520102201606022417',
    updated_at = NOW()
WHERE name = '岳声董博 Bunny'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '岳声董博 Bunny', 42, '18984854942', '妈妈', '董燕', '芳草地小学', '未来方舟', '520102201606022417', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '岳声董博 Bunny' AND class_id = 42
);

-- Row 1144: 余妍歆 Sofia @ 凤凰27班
UPDATE v2.students
SET phone = '18223327482',
    primary_guardian_type = '妈妈',
    parent_name = '陈妤',
    school = '观山湖18幼儿园',
    address = '西南上城天悦府二期',
    id_card = '500120201807236322',
    updated_at = NOW()
WHERE name = '余妍歆 Sofia'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余妍歆 Sofia', 42, '18223327482', '妈妈', '陈妤', '观山湖18幼儿园', '西南上城天悦府二期', '500120201807236322', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余妍歆 Sofia' AND class_id = 42
);

-- Row 1145: 王相诚Noct @ 凤凰27班
UPDATE v2.students
SET phone = '18985017990',
    primary_guardian_type = '妈妈',
    parent_name = '李菁蕊',
    school = '花溪英实',
    address = '小河',
    id_card = '520103201612241612',
    updated_at = NOW()
WHERE name = '王相诚Noct'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王相诚Noct', 42, '18985017990', '妈妈', '李菁蕊', '花溪英实', '小河', '520103201612241612', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王相诚Noct' AND class_id = 42
);

-- Row 1146: 魏嘉佑Mario @ 凤凰27班
UPDATE v2.students
SET phone = '15180883689',
    primary_guardian_type = '妈妈',
    parent_name = '向丽媛',
    school = '北京芳草地贵阳分校',
    address = '未来方舟',
    id_card = '520113201701103214',
    updated_at = NOW()
WHERE name = '魏嘉佑Mario'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '魏嘉佑Mario', 42, '15180883689', '妈妈', '向丽媛', '北京芳草地贵阳分校', '未来方舟', '520113201701103214', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '魏嘉佑Mario' AND class_id = 42
);

-- Row 1147: 邹沁珂Abril @ 凤凰27班
UPDATE v2.students
SET phone = '18185196924',
    primary_guardian_type = '妈妈',
    parent_name = '李文玉',
    school = '市府小学',
    address = '花溪大道',
    id_card = '52010220170406272x',
    updated_at = NOW()
WHERE name = '邹沁珂Abril'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹沁珂Abril', 42, '18185196924', '妈妈', '李文玉', '市府小学', '花溪大道', '52010220170406272x', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹沁珂Abril' AND class_id = 42
);

-- Row 1148: 周虹宇Eric @ 凤凰27班
UPDATE v2.students
SET phone = '13765106668',
    primary_guardian_type = '妈妈',
    parent_name = '何芳彬',
    school = '国际城北京实验三小',
    address = '万科翡翠滨江',
    id_card = '520102201703302410',
    updated_at = NOW()
WHERE name = '周虹宇Eric'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周虹宇Eric', 42, '13765106668', '妈妈', '何芳彬', '国际城北京实验三小', '万科翡翠滨江', '520102201703302410', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周虹宇Eric' AND class_id = 42
);

-- Row 1149: 宗浩钦Deacon @ 凤凰27班
UPDATE v2.students
SET phone = '13595004599',
    primary_guardian_type = '妈妈',
    parent_name = '郑倩',
    school = '华东师范学校',
    address = '观山湖金色时代',
    id_card = '520103201704028018',
    updated_at = NOW()
WHERE name = '宗浩钦Deacon'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宗浩钦Deacon', 42, '13595004599', '妈妈', '郑倩', '华东师范学校', '观山湖金色时代', '520103201704028018', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宗浩钦Deacon' AND class_id = 42
);

-- Row 1150: 周靖熹Heidi @ 凤凰27班
UPDATE v2.students
SET phone = '13618595899',
    primary_guardian_type = '妈妈',
    parent_name = '郑潇',
    school = '省府路小学',
    address = '省府路',
    id_card = '520102201705247048',
    updated_at = NOW()
WHERE name = '周靖熹Heidi'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周靖熹Heidi', 42, '13618595899', '妈妈', '郑潇', '省府路小学', '省府路', '520102201705247048', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周靖熹Heidi' AND class_id = 42
);

-- Row 1151: 杨越如Elsa @ 凤凰27班
UPDATE v2.students
SET phone = '18286009602',
    primary_guardian_type = '妈妈',
    parent_name = '顾雨婷',
    school = '吾之幼儿童托育中心',
    address = '金阳新世界麓院',
    id_card = '320582201807140029',
    updated_at = NOW()
WHERE name = '杨越如Elsa'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨越如Elsa', 42, '18286009602', '妈妈', '顾雨婷', '吾之幼儿童托育中心', '金阳新世界麓院', '320582201807140029', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨越如Elsa' AND class_id = 42
);

-- Row 1152: 罗伊宸 Amy @ 凤凰27班
UPDATE v2.students
SET phone = '15685603177',
    primary_guardian_type = '妈妈',
    parent_name = '艾显梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗伊宸 Amy'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗伊宸 Amy', 42, '15685603177', '妈妈', '艾显梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗伊宸 Amy' AND class_id = 42
);

-- Row 1153: 马修齐 Vince @ 凤凰27班
UPDATE v2.students
SET phone = '18685051355',
    primary_guardian_type = '妈妈',
    parent_name = '陈燕翔',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '马修齐 Vince'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马修齐 Vince', 42, '18685051355', '妈妈', '陈燕翔', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马修齐 Vince' AND class_id = 42
);

-- Row 1154: 林羿霖 Lucifer @ 凤凰27班
UPDATE v2.students
SET phone = '15885068671',
    primary_guardian_type = '妈妈',
    parent_name = '林虹亮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '林羿霖 Lucifer'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林羿霖 Lucifer', 42, '15885068671', '妈妈', '林虹亮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林羿霖 Lucifer' AND class_id = 42
);

-- Row 1155: 刘苡辰Eason @ 凤凰27班
UPDATE v2.students
SET phone = '18111881215',
    primary_guardian_type = '妈妈',
    parent_name = '张洁',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘苡辰Eason'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘苡辰Eason', 42, '18111881215', '妈妈', '张洁', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘苡辰Eason' AND class_id = 42
);

-- Row 1156: 权庭锐 Jack @ 凤凰27班
UPDATE v2.students
SET phone = '13639061855',
    primary_guardian_type = '妈妈',
    parent_name = '靳峡',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '权庭锐 Jack'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '权庭锐 Jack', 42, '13639061855', '妈妈', '靳峡', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '权庭锐 Jack' AND class_id = 42
);

-- Row 1157: 黄园棋 Roy @ 凤凰27班
UPDATE v2.students
SET phone = '13765083103',
    primary_guardian_type = '妈妈',
    parent_name = '李依航',
    school = '甲秀小学',
    address = '乌当区翡翠湾',
    id_card = '52011220171230383X',
    updated_at = NOW()
WHERE name = '黄园棋 Roy'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄园棋 Roy', 42, '13765083103', '妈妈', '李依航', '甲秀小学', '乌当区翡翠湾', '52011220171230383X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄园棋 Roy' AND class_id = 42
);

-- Row 1158: 李紫涵Winnie @ 凤凰27班
UPDATE v2.students
SET phone = '15329311342',
    primary_guardian_type = '妈妈',
    parent_name = '蔡小练',
    school = '省府路小学',
    address = '百灵尚品',
    id_card = '522010320170207',
    updated_at = NOW()
WHERE name = '李紫涵Winnie'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李紫涵Winnie', 42, '15329311342', '妈妈', '蔡小练', '省府路小学', '百灵尚品', '522010320170207', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李紫涵Winnie' AND class_id = 42
);

-- Row 1159: 罗晨佳Ruby @ 凤凰27班
UPDATE v2.students
SET phone = '13511952550',
    primary_guardian_type = '妈妈',
    parent_name = '陈高凤',
    school = '市府路小学',
    address = '花果园',
    id_card = '520102201707095025',
    updated_at = NOW()
WHERE name = '罗晨佳Ruby'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗晨佳Ruby', 42, '13511952550', '妈妈', '陈高凤', '市府路小学', '花果园', '520102201707095025', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗晨佳Ruby' AND class_id = 42
);

-- Row 1160: 蒋海印Frank @ 凤凰27班
UPDATE v2.students
SET phone = '17784196036',
    primary_guardian_type = '妈妈',
    parent_name = '王婧华',
    school = '华东师范大学附属贵阳学校',
    address = '云岩六中',
    id_card = '520103201708198815',
    updated_at = NOW()
WHERE name = '蒋海印Frank'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋海印Frank', 42, '17784196036', '妈妈', '王婧华', '华东师范大学附属贵阳学校', '云岩六中', '520103201708198815', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋海印Frank' AND class_id = 42
);

-- Row 1161: 宋卓玲Julia @ 凤凰27班
UPDATE v2.students
SET phone = '13608529549',
    primary_guardian_type = '妈妈',
    parent_name = '王名娟',
    school = '省府路小学',
    address = '贵阳市云岩区扶风路16号',
    id_card = '520103201604128046',
    updated_at = NOW()
WHERE name = '宋卓玲Julia'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋卓玲Julia', 42, '13608529549', '妈妈', '王名娟', '省府路小学', '贵阳市云岩区扶风路16号', '520103201604128046', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋卓玲Julia' AND class_id = 42
);

-- Row 1162: 江牧宸Remon @ 凤凰27班
UPDATE v2.students
SET phone = '18275120613',
    primary_guardian_type = '妈妈',
    parent_name = '张浴凤',
    school = '贵州师范大学贵安新区附属小学',
    address = '花溪碧桂园',
    id_card = '520102201703208213',
    updated_at = NOW()
WHERE name = '江牧宸Remon'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '江牧宸Remon', 42, '18275120613', '妈妈', '张浴凤', '贵州师范大学贵安新区附属小学', '花溪碧桂园', '520102201703208213', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '江牧宸Remon' AND class_id = 42
);

-- Row 1163: 欧阳文怡Wendy @ 凤凰27班
UPDATE v2.students
SET phone = '18685177268',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '实验小学保利分校',
    address = '保利云山',
    id_card = '520103201608043445',
    updated_at = NOW()
WHERE name = '欧阳文怡Wendy'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '欧阳文怡Wendy', 42, '18685177268', '妈妈', NULL, '实验小学保利分校', '保利云山', '520103201608043445', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '欧阳文怡Wendy' AND class_id = 42
);

-- Row 1164: 聂诗沛Samuel @ 凤凰27班
UPDATE v2.students
SET phone = '18785107702',
    primary_guardian_type = '妈妈',
    parent_name = '王露',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '聂诗沛Samuel'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '聂诗沛Samuel', 42, '18785107702', '妈妈', '王露', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '聂诗沛Samuel' AND class_id = 42
);

-- Row 1165: 柳屹海Hiram @ 凤凰27班
UPDATE v2.students
SET phone = '18286002955',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '柳屹海Hiram'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '柳屹海Hiram', 42, '18286002955', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '柳屹海Hiram' AND class_id = 42
);

-- Row 1166: 郭沐菡Moana @ 凤凰27班
UPDATE v2.students
SET phone = '13908502582',
    primary_guardian_type = '妈妈',
    parent_name = '万明',
    school = '实验小学',
    address = '保利云山',
    id_card = '520103201610304827',
    updated_at = NOW()
WHERE name = '郭沐菡Moana'
  AND class_id = 42;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭沐菡Moana', 42, '13908502582', '妈妈', '万明', '实验小学', '保利云山', '520103201610304827', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭沐菡Moana' AND class_id = 42
);

-- Row 1167: 张积妍萱Jenny @ 凤凰39班
UPDATE v2.students
SET phone = '13984186765',
    primary_guardian_type = '妈妈',
    parent_name = '廖苑均',
    school = '市府路小学',
    address = '南明区法院街A座',
    id_card = '520102201804197429',
    updated_at = NOW()
WHERE name = '张积妍萱Jenny'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张积妍萱Jenny', 54, '13984186765', '妈妈', '廖苑均', '市府路小学', '南明区法院街A座', '520102201804197429', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张积妍萱Jenny' AND class_id = 54
);

-- Row 1168: 钟睿泽Barry @ 凤凰39班
UPDATE v2.students
SET phone = '17785600927',
    primary_guardian_type = '妈妈',
    parent_name = '司元艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '钟睿泽Barry'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '钟睿泽Barry', 54, '17785600927', '妈妈', '司元艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '钟睿泽Barry' AND class_id = 54
);

-- Row 1169: 张雅倪Nini @ 凤凰39班
UPDATE v2.students
SET phone = '18785167978',
    primary_guardian_type = '妈妈',
    parent_name = '倪山凤',
    school = '市东小学',
    address = '云岩区九华路9号',
    id_card = '520523201806251621',
    updated_at = NOW()
WHERE name = '张雅倪Nini'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张雅倪Nini', 54, '18785167978', '妈妈', '倪山凤', '市东小学', '云岩区九华路9号', '520523201806251621', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张雅倪Nini' AND class_id = 54
);

-- Row 1170: 张子南Mia @ 凤凰39班
UPDATE v2.students
SET phone = '13658518924',
    primary_guardian_type = '妈妈',
    parent_name = '杨秋菊',
    school = '实验二小',
    address = '云岩区盐务街庆丰路',
    id_card = '52010220184285023',
    updated_at = NOW()
WHERE name = '张子南Mia'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张子南Mia', 54, '13658518924', '妈妈', '杨秋菊', '实验二小', '云岩区盐务街庆丰路', '52010220184285023', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张子南Mia' AND class_id = 54
);

-- Row 1171: 郑云兮Conch @ 凤凰39班
UPDATE v2.students
SET phone = '18984859749',
    primary_guardian_type = '妈妈',
    parent_name = '罗乐',
    school = '省府路小学',
    address = '瑞金南路345号东方大厦',
    id_card = '520102201705021620',
    updated_at = NOW()
WHERE name = '郑云兮Conch'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郑云兮Conch', 54, '18984859749', '妈妈', '罗乐', '省府路小学', '瑞金南路345号东方大厦', '520102201705021620', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郑云兮Conch' AND class_id = 54
);

-- Row 1172: 张轩语Judy @ 凤凰39班
UPDATE v2.students
SET phone = '13985571314',
    primary_guardian_type = '妈妈',
    parent_name = '钟昀希',
    school = '中天北京小学',
    address = '中天未来方舟G组团',
    id_card = '520103201806140422',
    updated_at = NOW()
WHERE name = '张轩语Judy'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张轩语Judy', 54, '13985571314', '妈妈', '钟昀希', '中天北京小学', '中天未来方舟G组团', '520103201806140422', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张轩语Judy' AND class_id = 54
);

-- Row 1173: 左子昂Zorro @ 凤凰39班
UPDATE v2.students
SET phone = '18085156308',
    primary_guardian_type = '妈妈',
    parent_name = '刘洁',
    school = '花溪小学',
    address = '贵州民族大学',
    id_card = '520111201609045012',
    updated_at = NOW()
WHERE name = '左子昂Zorro'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '左子昂Zorro', 54, '18085156308', '妈妈', '刘洁', '花溪小学', '贵州民族大学', '520111201609045012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '左子昂Zorro' AND class_id = 54
);

-- Row 1174: 袁程禧Ron @ 凤凰39班
UPDATE v2.students
SET phone = '13985054425',
    primary_guardian_type = '妈妈',
    parent_name = '张景蓉',
    school = '甲秀小学',
    address = '中天世纪新城组团',
    id_card = '520102201612121219',
    updated_at = NOW()
WHERE name = '袁程禧Ron'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁程禧Ron', 54, '13985054425', '妈妈', '张景蓉', '甲秀小学', '中天世纪新城组团', '520102201612121219', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁程禧Ron' AND class_id = 54
);

-- Row 1175: 张知行Leo @ 凤凰39班
UPDATE v2.students
SET phone = '18586848564',
    primary_guardian_type = '妈妈',
    parent_name = '张鹏',
    school = '贵阳市十三中',
    address = '观山湖区龙湖天曜',
    id_card = '52010320170421921X',
    updated_at = NOW()
WHERE name = '张知行Leo'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张知行Leo', 54, '18586848564', '妈妈', '张鹏', '贵阳市十三中', '观山湖区龙湖天曜', '52010320170421921X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张知行Leo' AND class_id = 54
);

-- Row 1176: 吴珩语Beryl @ 凤凰39班
UPDATE v2.students
SET phone = '18586875234',
    primary_guardian_type = '妈妈',
    parent_name = '邓剑',
    school = '实验三幼',
    address = '贵阳市云岩区',
    id_card = '520103201812286743',
    updated_at = NOW()
WHERE name = '吴珩语Beryl'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴珩语Beryl', 54, '18586875234', '妈妈', '邓剑', '实验三幼', '贵阳市云岩区', '520103201812286743', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴珩语Beryl' AND class_id = 54
);

-- Row 1177: 谢旻君Solkatt @ 凤凰39班
UPDATE v2.students
SET phone = '15508506669',
    primary_guardian_type = '妈妈',
    parent_name = '周丹',
    school = '实验一小',
    address = '观山湖区世纪城龙昌苑',
    id_card = '520102201611283435',
    updated_at = NOW()
WHERE name = '谢旻君Solkatt'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢旻君Solkatt', 54, '15508506669', '妈妈', '周丹', '实验一小', '观山湖区世纪城龙昌苑', '520102201611283435', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢旻君Solkatt' AND class_id = 54
);

-- Row 1178: 申昕瑶Phoebe @ 凤凰39班
UPDATE v2.students
SET phone = '13885117811',
    primary_guardian_type = '妈妈',
    parent_name = '申飚',
    school = '环东小学',
    address = NULL,
    id_card = '520102201612054044',
    updated_at = NOW()
WHERE name = '申昕瑶Phoebe'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '申昕瑶Phoebe', 54, '13885117811', '妈妈', '申飚', '环东小学', NULL, '520102201612054044', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '申昕瑶Phoebe' AND class_id = 54
);

-- Row 1179: 齐梓妤Zoey @ 凤凰39班
UPDATE v2.students
SET phone = '18985003663',
    primary_guardian_type = '妈妈',
    parent_name = '耿静',
    school = '省府路小学',
    address = '会展城',
    id_card = '520103201705273621',
    updated_at = NOW()
WHERE name = '齐梓妤Zoey'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '齐梓妤Zoey', 54, '18985003663', '妈妈', '耿静', '省府路小学', '会展城', '520103201705273621', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '齐梓妤Zoey' AND class_id = 54
);

-- Row 1180: 谢云桐Esme @ 凤凰39班
UPDATE v2.students
SET phone = '13368516233',
    primary_guardian_type = '妈妈',
    parent_name = '王婷',
    school = '实验二小',
    address = '宅学',
    id_card = '520103201709306726',
    updated_at = NOW()
WHERE name = '谢云桐Esme'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢云桐Esme', 54, '13368516233', '妈妈', '王婷', '实验二小', '宅学', '520103201709306726', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢云桐Esme' AND class_id = 54
);

-- Row 1181: 徐子涵Cammy @ 凤凰39班
UPDATE v2.students
SET phone = '18185071999',
    primary_guardian_type = '爸爸',
    parent_name = '徐波',
    school = '省府路小学',
    address = NULL,
    id_card = '52010320161029920',
    updated_at = NOW()
WHERE name = '徐子涵Cammy'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐子涵Cammy', 54, '18185071999', '爸爸', '徐波', '省府路小学', NULL, '52010320161029920', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐子涵Cammy' AND class_id = 54
);

-- Row 1182: 孙瑾瑜Luna @ 凤凰39班
UPDATE v2.students
SET phone = '15180830412',
    primary_guardian_type = '妈妈',
    parent_name = '娄方方',
    school = '甲秀小学',
    address = '首钢贵州之光耀组团',
    id_card = '520102201804301329',
    updated_at = NOW()
WHERE name = '孙瑾瑜Luna'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙瑾瑜Luna', 54, '15180830412', '妈妈', '娄方方', '甲秀小学', '首钢贵州之光耀组团', '520102201804301329', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙瑾瑜Luna' AND class_id = 54
);

-- Row 1183: 韩学仕Henry @ 凤凰39班
UPDATE v2.students
SET phone = '13639078342',
    primary_guardian_type = '妈妈',
    parent_name = '杨曼',
    school = '清镇市实验学校',
    address = '清镇市一号大院',
    id_card = '52018120170215081X',
    updated_at = NOW()
WHERE name = '韩学仕Henry'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '韩学仕Henry', 54, '13639078342', '妈妈', '杨曼', '清镇市实验学校', '清镇市一号大院', '52018120170215081X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '韩学仕Henry' AND class_id = 54
);

-- Row 1184: 兰芷墨Mico @ 凤凰39班
UPDATE v2.students
SET phone = '13595162821',
    primary_guardian_type = '妈妈',
    parent_name = '唐永菊',
    school = '芳草地的小学',
    address = '未来方舟H2组团',
    id_card = '520103201709274824',
    updated_at = NOW()
WHERE name = '兰芷墨Mico'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '兰芷墨Mico', 54, '13595162821', '妈妈', '唐永菊', '芳草地的小学', '未来方舟H2组团', '520103201709274824', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '兰芷墨Mico' AND class_id = 54
);

-- Row 1185: 蒋傲然Yoyo @ 凤凰39班
UPDATE v2.students
SET phone = '18111834891',
    primary_guardian_type = '妈妈',
    parent_name = '柏新天',
    school = '第二实验小学',
    address = '云岩区吉祥路47号',
    id_card = '520102201802274021',
    updated_at = NOW()
WHERE name = '蒋傲然Yoyo'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋傲然Yoyo', 54, '18111834891', '妈妈', '柏新天', '第二实验小学', '云岩区吉祥路47号', '520102201802274021', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋傲然Yoyo' AND class_id = 54
);

-- Row 1186: 李诚恺Jimmy @ 凤凰39班
UPDATE v2.students
SET phone = '18685446909',
    primary_guardian_type = '妈妈',
    parent_name = '彭永镕',
    school = '南明小学',
    address = '云岩区水乐路',
    id_card = '520102201708242131',
    updated_at = NOW()
WHERE name = '李诚恺Jimmy'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李诚恺Jimmy', 54, '18685446909', '妈妈', '彭永镕', '南明小学', '云岩区水乐路', '520102201708242131', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李诚恺Jimmy' AND class_id = 54
);

-- Row 1187: 陈烨霖Oscar @ 凤凰39班
UPDATE v2.students
SET phone = '13647613388',
    primary_guardian_type = '妈妈',
    parent_name = '滕恬',
    school = '花果园小学',
    address = NULL,
    id_card = '50010220160904705X',
    updated_at = NOW()
WHERE name = '陈烨霖Oscar'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈烨霖Oscar', 54, '13647613388', '妈妈', '滕恬', '花果园小学', NULL, '50010220160904705X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈烨霖Oscar' AND class_id = 54
);

-- Row 1188: 程若惜Cici @ 凤凰39班
UPDATE v2.students
SET phone = '18198218371',
    primary_guardian_type = '妈妈',
    parent_name = '董莉媛',
    school = '环西小学',
    address = '北京路银海元隆',
    id_card = '520103201610172828',
    updated_at = NOW()
WHERE name = '程若惜Cici'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '程若惜Cici', 54, '18198218371', '妈妈', '董莉媛', '环西小学', '北京路银海元隆', '520103201610172828', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '程若惜Cici' AND class_id = 54
);

-- Row 1189: 丁睿宸Ryan @ 凤凰39班
UPDATE v2.students
SET phone = '15885015610',
    primary_guardian_type = '妈妈',
    parent_name = '马丽',
    school = '环西小学',
    address = '云岩区花果园A北区',
    id_card = '520103201701184832',
    updated_at = NOW()
WHERE name = '丁睿宸Ryan'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '丁睿宸Ryan', 54, '15885015610', '妈妈', '马丽', '环西小学', '云岩区花果园A北区', '520103201701184832', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '丁睿宸Ryan' AND class_id = 54
);

-- Row 1190: 邓钞祐Lucky @ 凤凰39班
UPDATE v2.students
SET phone = '13985520127',
    primary_guardian_type = '妈妈',
    parent_name = '周璐',
    school = '黄城根小学',
    address = '观山湖美的林城时代北区',
    id_card = '520101201612238037',
    updated_at = NOW()
WHERE name = '邓钞祐Lucky'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邓钞祐Lucky', 54, '13985520127', '妈妈', '周璐', '黄城根小学', '观山湖美的林城时代北区', '520101201612238037', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邓钞祐Lucky' AND class_id = 54
);

-- Row 1191: 高浚芃Eric @ 凤凰39班
UPDATE v2.students
SET phone = '13765153813',
    primary_guardian_type = '妈妈',
    parent_name = '杨帆',
    school = '华东师范大学贵阳附属学校',
    address = '宝山北路76号警苑社区',
    id_card = '520103201807218674',
    updated_at = NOW()
WHERE name = '高浚芃Eric'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高浚芃Eric', 54, '13765153813', '妈妈', '杨帆', '华东师范大学贵阳附属学校', '宝山北路76号警苑社区', '520103201807218674', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高浚芃Eric' AND class_id = 54
);

-- Row 1192: 苏茂晨 Terrence @ 凤凰35班
UPDATE v2.students
SET phone = '15285646798',
    primary_guardian_type = '妈妈',
    parent_name = '于静',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '苏茂晨 Terrence'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '苏茂晨 Terrence', 50, '15285646798', '妈妈', '于静', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '苏茂晨 Terrence' AND class_id = 50
);

-- Row 1193: 武怡昕Abby @ 凤凰35班
UPDATE v2.students
SET phone = '13885366877',
    primary_guardian_type = '妈妈',
    parent_name = '刘红',
    school = '观山湖十二小',
    address = '观山湖翡翠天骄',
    id_card = '520402201612161022',
    updated_at = NOW()
WHERE name = '武怡昕Abby'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '武怡昕Abby', 50, '13885366877', '妈妈', '刘红', '观山湖十二小', '观山湖翡翠天骄', '520402201612161022', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '武怡昕Abby' AND class_id = 50
);

-- Row 1194: 庄显尧Leo @ 凤凰35班
UPDATE v2.students
SET phone = '15885016259',
    primary_guardian_type = '妈妈',
    parent_name = '黄萍萍',
    school = '第三实验幼儿园',
    address = '乌当区恒大雅苑',
    id_card = '520112201809023818',
    updated_at = NOW()
WHERE name = '庄显尧Leo'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '庄显尧Leo', 50, '15885016259', '妈妈', '黄萍萍', '第三实验幼儿园', '乌当区恒大雅苑', '520112201809023818', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '庄显尧Leo' AND class_id = 50
);

-- Row 1195: 徐海淳Felix @ 凤凰35班
UPDATE v2.students
SET phone = '13985118743',
    primary_guardian_type = '妈妈',
    parent_name = '徐萍',
    school = '贵阳中心实验幼儿园',
    address = '南明区中天世纪新城',
    id_card = '520103201811231230',
    updated_at = NOW()
WHERE name = '徐海淳Felix'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐海淳Felix', 50, '13985118743', '妈妈', '徐萍', '贵阳中心实验幼儿园', '南明区中天世纪新城', '520103201811231230', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐海淳Felix' AND class_id = 50
);

-- Row 1196: 宋美澄Mia @ 凤凰35班
UPDATE v2.students
SET phone = '15597707977',
    primary_guardian_type = '妈妈',
    parent_name = '钱雅纯',
    school = NULL,
    address = '云岩区九华路中央公园',
    id_card = '520181201710150422',
    updated_at = NOW()
WHERE name = '宋美澄Mia'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋美澄Mia', 50, '15597707977', '妈妈', '钱雅纯', NULL, '云岩区九华路中央公园', '520181201710150422', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋美澄Mia' AND class_id = 50
);

-- Row 1197: 杨雁冰Cathy @ 凤凰35班
UPDATE v2.students
SET phone = '13984808218',
    primary_guardian_type = '妈妈',
    parent_name = '杨娉',
    school = '南明区第七幼儿园',
    address = '南明区贵州之光',
    id_card = '520114201903271669',
    updated_at = NOW()
WHERE name = '杨雁冰Cathy'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨雁冰Cathy', 50, '13984808218', '妈妈', '杨娉', '南明区第七幼儿园', '南明区贵州之光', '520114201903271669', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨雁冰Cathy' AND class_id = 50
);

-- Row 1198: 周源芯Jasmine @ 凤凰35班
UPDATE v2.students
SET phone = '18285093943',
    primary_guardian_type = '妈妈',
    parent_name = '李小梅',
    school = '实验小学',
    address = '都司路中天广场',
    id_card = '520102201801260023',
    updated_at = NOW()
WHERE name = '周源芯Jasmine'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周源芯Jasmine', 50, '18285093943', '妈妈', '李小梅', '实验小学', '都司路中天广场', '520102201801260023', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周源芯Jasmine' AND class_id = 50
);

-- Row 1199: 谢依恩Ina @ 凤凰35班
UPDATE v2.students
SET phone = '15285105655',
    primary_guardian_type = '妈妈',
    parent_name = '辜倩',
    school = '观山湖一小',
    address = '金云国际',
    id_card = '520103201801182826',
    updated_at = NOW()
WHERE name = '谢依恩Ina'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢依恩Ina', 50, '15285105655', '妈妈', '辜倩', '观山湖一小', '金云国际', '520103201801182826', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢依恩Ina' AND class_id = 50
);

-- Row 1200: 张晟颉Tyler @ 凤凰35班
UPDATE v2.students
SET phone = '18886419999',
    primary_guardian_type = '妈妈',
    parent_name = '张飞',
    school = '达德学校',
    address = '观山湖华润悦府',
    id_card = '520102201612205808',
    updated_at = NOW()
WHERE name = '张晟颉Tyler'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张晟颉Tyler', 50, '18886419999', '妈妈', '张飞', '达德学校', '观山湖华润悦府', '520102201612205808', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张晟颉Tyler' AND class_id = 50
);

-- Row 1201: 涂孝东Asher @ 凤凰35班
UPDATE v2.students
SET phone = '15185065351',
    primary_guardian_type = '妈妈',
    parent_name = '董婷婷',
    school = '北京师范小学贵阳附属分校',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '涂孝东Asher'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '涂孝东Asher', 50, '15185065351', '妈妈', '董婷婷', '北京师范小学贵阳附属分校', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '涂孝东Asher' AND class_id = 50
);

-- Row 1202: 宋卓尔Zelia @ 凤凰35班
UPDATE v2.students
SET phone = '17385939223',
    primary_guardian_type = '妈妈',
    parent_name = '李文娟',
    school = '贵阳市实验小学',
    address = '贵阳市云岩区市北路123号',
    id_card = '520103201710274821',
    updated_at = NOW()
WHERE name = '宋卓尔Zelia'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋卓尔Zelia', 50, '17385939223', '妈妈', '李文娟', '贵阳市实验小学', '贵阳市云岩区市北路123号', '520103201710274821', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋卓尔Zelia' AND class_id = 50
);

-- Row 1203: 陈耀笛Doris @ 凤凰35班
UPDATE v2.students
SET phone = '13984048292',
    primary_guardian_type = '妈妈',
    parent_name = '王萌',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈耀笛Doris'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈耀笛Doris', 50, '13984048292', '妈妈', '王萌', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈耀笛Doris' AND class_id = 50
);

-- Row 1204: 江芮熙Leah @ 凤凰35班
UPDATE v2.students
SET phone = '15180840013',
    primary_guardian_type = '妈妈',
    parent_name = '陈婷',
    school = '甲秀小学',
    address = '贵阳市黔江路小城故事',
    id_card = '52010220161206623',
    updated_at = NOW()
WHERE name = '江芮熙Leah'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '江芮熙Leah', 50, '15180840013', '妈妈', '陈婷', '甲秀小学', '贵阳市黔江路小城故事', '52010220161206623', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '江芮熙Leah' AND class_id = 50
);

-- Row 1205: 李有灏Lucas @ 凤凰35班
UPDATE v2.students
SET phone = '13007849988',
    primary_guardian_type = '妈妈',
    parent_name = '于婕',
    school = '南明小学',
    address = '南明区保利国际广场',
    id_card = '520103201707084410',
    updated_at = NOW()
WHERE name = '李有灏Lucas'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李有灏Lucas', 50, '13007849988', '妈妈', '于婕', '南明小学', '南明区保利国际广场', '520103201707084410', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李有灏Lucas' AND class_id = 50
);

-- Row 1206: 蒲家睿Ricky @ 凤凰35班
UPDATE v2.students
SET phone = '13765117550',
    primary_guardian_type = '妈妈',
    parent_name = '冯其英',
    school = '省幼儿园',
    address = '云岩区紫林庵汇金府',
    id_card = '5201033201809074010',
    updated_at = NOW()
WHERE name = '蒲家睿Ricky'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒲家睿Ricky', 50, '13765117550', '妈妈', '冯其英', '省幼儿园', '云岩区紫林庵汇金府', '5201033201809074010', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒲家睿Ricky' AND class_id = 50
);

-- Row 1207: 黄满蹊Beth @ 凤凰35班
UPDATE v2.students
SET phone = '18285007441',
    primary_guardian_type = '妈妈',
    parent_name = '罗媛',
    school = '南明小学',
    address = '宝山南路50号',
    id_card = '520102201704297027',
    updated_at = NOW()
WHERE name = '黄满蹊Beth'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄满蹊Beth', 50, '18285007441', '妈妈', '罗媛', '南明小学', '宝山南路50号', '520102201704297027', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄满蹊Beth' AND class_id = 50
);

-- Row 1208: 连奕韬Sid @ 凤凰35班
UPDATE v2.students
SET phone = '15519555056',
    primary_guardian_type = '妈妈',
    parent_name = '李文君',
    school = '省府路小学',
    address = '贵山城市花园',
    id_card = '52010320161219043X',
    updated_at = NOW()
WHERE name = '连奕韬Sid'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '连奕韬Sid', 50, '15519555056', '妈妈', '李文君', '省府路小学', '贵山城市花园', '52010320161219043X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '连奕韬Sid' AND class_id = 50
);

-- Row 1209: 解芮珂Rica @ 凤凰35班
UPDATE v2.students
SET phone = '18786117108',
    primary_guardian_type = '妈妈',
    parent_name = '邓素华',
    school = '花三幼儿园',
    address = '花溪区溪山御景',
    id_card = '520111201810090042',
    updated_at = NOW()
WHERE name = '解芮珂Rica'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '解芮珂Rica', 50, '18786117108', '妈妈', '邓素华', '花三幼儿园', '花溪区溪山御景', '520111201810090042', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '解芮珂Rica' AND class_id = 50
);

-- Row 1210: 陈苇杭Wayne @ 凤凰35班
UPDATE v2.students
SET phone = '18608517933',
    primary_guardian_type = '妈妈',
    parent_name = '钱梦怡',
    school = '第二实验小学',
    address = '贵阳市云岩区梦想典城',
    id_card = '520103201805166751',
    updated_at = NOW()
WHERE name = '陈苇杭Wayne'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈苇杭Wayne', 50, '18608517933', '妈妈', '钱梦怡', '第二实验小学', '贵阳市云岩区梦想典城', '520103201805166751', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈苇杭Wayne' AND class_id = 50
);

-- Row 1211: 曾煜宸Kayson @ 凤凰35班
UPDATE v2.students
SET phone = '18685171130',
    primary_guardian_type = '妈妈',
    parent_name = '周子煜',
    school = '南明实验八幼',
    address = '南明区万科翡翠滨江',
    id_card = '520103201812168616',
    updated_at = NOW()
WHERE name = '曾煜宸Kayson'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾煜宸Kayson', 50, '18685171130', '妈妈', '周子煜', '南明实验八幼', '南明区万科翡翠滨江', '520103201812168616', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾煜宸Kayson' AND class_id = 50
);

-- Row 1212: 金钰淼Elsa @ 凤凰35班
UPDATE v2.students
SET phone = '18585037153',
    primary_guardian_type = '妈妈',
    parent_name = '李莎',
    school = '贵阳市实验小学',
    address = '云岩区龙砚东山',
    id_card = '5201032016102412221',
    updated_at = NOW()
WHERE name = '金钰淼Elsa'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '金钰淼Elsa', 50, '18585037153', '妈妈', '李莎', '贵阳市实验小学', '云岩区龙砚东山', '5201032016102412221', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '金钰淼Elsa' AND class_id = 50
);

-- Row 1213: 石航语Harrison @ 凤凰35班
UPDATE v2.students
SET phone = '15180749391',
    primary_guardian_type = '妈妈',
    parent_name = '赵莹莹',
    school = '云岩区向阳实验小学',
    address = '未来方舟',
    id_card = '52010320102158070',
    updated_at = NOW()
WHERE name = '石航语Harrison'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '石航语Harrison', 50, '15180749391', '妈妈', '赵莹莹', '云岩区向阳实验小学', '未来方舟', '52010320102158070', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '石航语Harrison' AND class_id = 50
);

-- Row 1214: 路尧Vivian @ 凤凰35班
UPDATE v2.students
SET phone = '13608593451',
    primary_guardian_type = '妈妈',
    parent_name = '田梅芝',
    school = '云岩区可儿幼儿园',
    address = '宝山北路401号',
    id_card = '520103201904226721',
    updated_at = NOW()
WHERE name = '路尧Vivian'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '路尧Vivian', 50, '13608593451', '妈妈', '田梅芝', '云岩区可儿幼儿园', '宝山北路401号', '520103201904226721', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '路尧Vivian' AND class_id = 50
);

-- Row 1215: 何珂楠Canan @ 凤凰35班
UPDATE v2.students
SET phone = '15285076006',
    primary_guardian_type = '爸爸',
    parent_name = '何鹏飞',
    school = '贵州师范大学',
    address = '花溪区大学城贵州财经大学',
    id_card = '520111201611105029',
    updated_at = NOW()
WHERE name = '何珂楠Canan'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何珂楠Canan', 50, '15285076006', '爸爸', '何鹏飞', '贵州师范大学', '花溪区大学城贵州财经大学', '520111201611105029', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何珂楠Canan' AND class_id = 50
);

-- Row 1216: 阮熙悦Cassie @ 凤凰35班
UPDATE v2.students
SET phone = '15285018167',
    primary_guardian_type = '妈妈',
    parent_name = '杨彩',
    school = '观山湖外国语实验小学',
    address = '观山湖新世界',
    id_card = '520102201707224042',
    updated_at = NOW()
WHERE name = '阮熙悦Cassie'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '阮熙悦Cassie', 50, '15285018167', '妈妈', '杨彩', '观山湖外国语实验小学', '观山湖新世界', '520102201707224042', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '阮熙悦Cassie' AND class_id = 50
);

-- Row 1217: 郭诺恩Norn @ 凤凰35班
UPDATE v2.students
SET phone = '18685007753',
    primary_guardian_type = '爸爸',
    parent_name = '郭大伟',
    school = '省府路小学',
    address = '南明区花溪大道北段',
    id_card = '520114201707081649',
    updated_at = NOW()
WHERE name = '郭诺恩Norn'
  AND class_id = 50;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭诺恩Norn', 50, '18685007753', '爸爸', '郭大伟', '省府路小学', '南明区花溪大道北段', '520114201707081649', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭诺恩Norn' AND class_id = 50
);

-- Row 1252: 周芃翰Ham @ 凤凰38班
UPDATE v2.students
SET phone = '13027829787',
    primary_guardian_type = '妈妈',
    parent_name = '胡琛翼',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周芃翰Ham'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周芃翰Ham', 53, '13027829787', '妈妈', '胡琛翼', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周芃翰Ham' AND class_id = 53
);

-- Row 1253: 杨梓骁Summer @ 凤凰38班
UPDATE v2.students
SET phone = '18585882701',
    primary_guardian_type = '妈妈',
    parent_name = '叶芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨梓骁Summer'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨梓骁Summer', 53, '18585882701', '妈妈', '叶芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨梓骁Summer' AND class_id = 53
);

-- Row 1254: 周佳淇Julie @ 凤凰38班
UPDATE v2.students
SET phone = '18188106626',
    primary_guardian_type = '妈妈',
    parent_name = '罗明英',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周佳淇Julie'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周佳淇Julie', 53, '18188106626', '妈妈', '罗明英', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周佳淇Julie' AND class_id = 53
);

-- Row 1255: 谢武宸Nemo @ 凤凰38班
UPDATE v2.students
SET phone = '18985623362',
    primary_guardian_type = '妈妈',
    parent_name = '王涵儀',
    school = '云岩区人贵实验小学',
    address = '云岩区万科悦城',
    id_card = '520121201706138010',
    updated_at = NOW()
WHERE name = '谢武宸Nemo'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谢武宸Nemo', 53, '18985623362', '妈妈', '王涵儀', '云岩区人贵实验小学', '云岩区万科悦城', '520121201706138010', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谢武宸Nemo' AND class_id = 53
);

-- Row 1256: 赵苠君Candy @ 凤凰38班
UPDATE v2.students
SET phone = '18885162704',
    primary_guardian_type = '妈妈',
    parent_name = '刘双',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵苠君Candy'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵苠君Candy', 53, '18885162704', '妈妈', '刘双', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵苠君Candy' AND class_id = 53
);

-- Row 1257: 张书晗Hank @ 凤凰38班
UPDATE v2.students
SET phone = '13765002587',
    primary_guardian_type = '妈妈',
    parent_name = '龙佑娟',
    school = '贵阳市实验幼儿园',
    address = '云岩区甲秀北路恒大帝景',
    id_card = '520103201809084817',
    updated_at = NOW()
WHERE name = '张书晗Hank'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张书晗Hank', 53, '13765002587', '妈妈', '龙佑娟', '贵阳市实验幼儿园', '云岩区甲秀北路恒大帝景', '520103201809084817', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张书晗Hank' AND class_id = 53
);

-- Row 1258: 周云岐Andy @ 凤凰38班
UPDATE v2.students
SET phone = '13511911559',
    primary_guardian_type = '妈妈',
    parent_name = '唐庆祝',
    school = '省政府机关幼儿园',
    address = '云岩区市北路文峰苑',
    id_card = '520103201809058416',
    updated_at = NOW()
WHERE name = '周云岐Andy'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周云岐Andy', 53, '13511911559', '妈妈', '唐庆祝', '省政府机关幼儿园', '云岩区市北路文峰苑', '520103201809058416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周云岐Andy' AND class_id = 53
);

-- Row 1259: 朱宜馨Ivy @ 凤凰38班
UPDATE v2.students
SET phone = '18984186975',
    primary_guardian_type = '妈妈',
    parent_name = '代兰',
    school = '苗苗小学',
    address = '南明区花果园U区',
    id_card = '5223233201704160041',
    updated_at = NOW()
WHERE name = '朱宜馨Ivy'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱宜馨Ivy', 53, '18984186975', '妈妈', '代兰', '苗苗小学', '南明区花果园U区', '5223233201704160041', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱宜馨Ivy' AND class_id = 53
);

-- Row 1260: 王艺芸Annie @ 凤凰38班
UPDATE v2.students
SET phone = '13639094246',
    primary_guardian_type = '妈妈',
    parent_name = '艾丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王艺芸Annie'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王艺芸Annie', 53, '13639094246', '妈妈', '艾丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王艺芸Annie' AND class_id = 53
);

-- Row 1261: 魏雅湉Iris @ 凤凰38班
UPDATE v2.students
SET phone = '15286030088',
    primary_guardian_type = '妈妈',
    parent_name = '袁娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '魏雅湉Iris'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '魏雅湉Iris', 53, '15286030088', '妈妈', '袁娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '魏雅湉Iris' AND class_id = 53
);

-- Row 1262: 宋明佳Zoe @ 凤凰38班
UPDATE v2.students
SET phone = '18685121911',
    primary_guardian_type = '妈妈',
    parent_name = '邓元媛',
    school = '省府路小学',
    address = '中天花园茶花园',
    id_card = '520103201709240827',
    updated_at = NOW()
WHERE name = '宋明佳Zoe'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋明佳Zoe', 53, '18685121911', '妈妈', '邓元媛', '省府路小学', '中天花园茶花园', '520103201709240827', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋明佳Zoe' AND class_id = 53
);

-- Row 1263: 武星睿Raven @ 凤凰38班
UPDATE v2.students
SET phone = '13984893796',
    primary_guardian_type = '妈妈',
    parent_name = '桂习群',
    school = '修文县第八小学',
    address = '修文县第四中学',
    id_card = '52011320160980014',
    updated_at = NOW()
WHERE name = '武星睿Raven'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '武星睿Raven', 53, '13984893796', '妈妈', '桂习群', '修文县第八小学', '修文县第四中学', '52011320160980014', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '武星睿Raven' AND class_id = 53
);

-- Row 1264: 向语馨Clara @ 凤凰38班
UPDATE v2.students
SET phone = '19985314673',
    primary_guardian_type = '爸爸',
    parent_name = '向远',
    school = '芳草地小学',
    address = '芳草地小学',
    id_card = '520103201807218068',
    updated_at = NOW()
WHERE name = '向语馨Clara'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '向语馨Clara', 53, '19985314673', '爸爸', '向远', '芳草地小学', '芳草地小学', '520103201807218068', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '向语馨Clara' AND class_id = 53
);

-- Row 1265: 文桢煜Freddy @ 凤凰38班
UPDATE v2.students
SET phone = '18786121440',
    primary_guardian_type = '妈妈',
    parent_name = '张璐',
    school = '贵阳市实验小学',
    address = '贵阳市水东路万科玲珑湾',
    id_card = '520102201802143419',
    updated_at = NOW()
WHERE name = '文桢煜Freddy'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '文桢煜Freddy', 53, '18786121440', '妈妈', '张璐', '贵阳市实验小学', '贵阳市水东路万科玲珑湾', '520102201802143419', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '文桢煜Freddy' AND class_id = 53
);

-- Row 1266: 曾悠然 @ 凤凰38班
UPDATE v2.students
SET phone = '13628568004',
    primary_guardian_type = '妈妈',
    parent_name = '杨友珠',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾悠然'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾悠然', 53, '13628568004', '妈妈', '杨友珠', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾悠然' AND class_id = 53
);

-- Row 1267: 刘鸿平Oliver @ 凤凰38班
UPDATE v2.students
SET phone = '13312237823',
    primary_guardian_type = '妈妈',
    parent_name = '苟传兰',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘鸿平Oliver'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘鸿平Oliver', 53, '13312237823', '妈妈', '苟传兰', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘鸿平Oliver' AND class_id = 53
);

-- Row 1268: 马瑾博Drake @ 凤凰38班
UPDATE v2.students
SET phone = '13648576878',
    primary_guardian_type = '爸爸',
    parent_name = '马敏江',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '马瑾博Drake'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马瑾博Drake', 53, '13648576878', '爸爸', '马敏江', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马瑾博Drake' AND class_id = 53
);

-- Row 1269: 孟柏妍Elva @ 凤凰38班
UPDATE v2.students
SET phone = '18984814885',
    primary_guardian_type = '妈妈',
    parent_name = '皮建华',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '孟柏妍Elva'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孟柏妍Elva', 53, '18984814885', '妈妈', '皮建华', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孟柏妍Elva' AND class_id = 53
);

-- Row 1270: 刘煜婷Lisa @ 凤凰38班
UPDATE v2.students
SET phone = '18748611888',
    primary_guardian_type = '妈妈',
    parent_name = '张红梅',
    school = '省府路小学',
    address = '文昌苑',
    id_card = '520203201612180907',
    updated_at = NOW()
WHERE name = '刘煜婷Lisa'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘煜婷Lisa', 53, '18748611888', '妈妈', '张红梅', '省府路小学', '文昌苑', '520203201612180907', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘煜婷Lisa' AND class_id = 53
);

-- Row 1271: 黄晗洛Leah @ 凤凰38班
UPDATE v2.students
SET phone = '18786765772',
    primary_guardian_type = '妈妈',
    parent_name = '李玉西',
    school = '师大幼儿园',
    address = '贵阳市云岩区樱花巷',
    id_card = '520103201810262828',
    updated_at = NOW()
WHERE name = '黄晗洛Leah'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄晗洛Leah', 53, '18786765772', '妈妈', '李玉西', '师大幼儿园', '贵阳市云岩区樱花巷', '520103201810262828', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄晗洛Leah' AND class_id = 53
);

-- Row 1272: 高亦谦Kevin @ 凤凰38班
UPDATE v2.students
SET phone = '13984028753',
    primary_guardian_type = '妈妈',
    parent_name = '张微',
    school = '南明小学',
    address = '盛世华城',
    id_card = '520102201801071214',
    updated_at = NOW()
WHERE name = '高亦谦Kevin'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高亦谦Kevin', 53, '13984028753', '妈妈', '张微', '南明小学', '盛世华城', '520102201801071214', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高亦谦Kevin' AND class_id = 53
);

-- Row 1273: 李蕊檬Venus @ 凤凰38班
UPDATE v2.students
SET phone = '17716690315',
    primary_guardian_type = '妈妈',
    parent_name = '余章',
    school = '南明区实验四小',
    address = '山水黔城十一组团',
    id_card = '520102201708123825',
    updated_at = NOW()
WHERE name = '李蕊檬Venus'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李蕊檬Venus', 53, '17716690315', '妈妈', '余章', '南明区实验四小', '山水黔城十一组团', '520102201708123825', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李蕊檬Venus' AND class_id = 53
);

-- Row 1274: 贾翎孖 Sally @ 凤凰38班
UPDATE v2.students
SET phone = '18685105780',
    primary_guardian_type = '妈妈',
    parent_name = '王燕',
    school = '实验小学',
    address = '未来方舟E4组团5栋',
    id_card = '520103201612051640',
    updated_at = NOW()
WHERE name = '贾翎孖 Sally'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '贾翎孖 Sally', 53, '18685105780', '妈妈', '王燕', '实验小学', '未来方舟E4组团5栋', '520103201612051640', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '贾翎孖 Sally' AND class_id = 53
);

-- Row 1275: 郑媛月Kitty @ 凤凰37班
UPDATE v2.students
SET phone = '18984181289',
    primary_guardian_type = '妈妈',
    parent_name = '况金莎',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '郑媛月Kitty'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郑媛月Kitty', 52, '18984181289', '妈妈', '况金莎', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郑媛月Kitty' AND class_id = 52
);

-- Row 1276: 周令偲Selena @ 凤凰37班
UPDATE v2.students
SET phone = '15180848440',
    primary_guardian_type = '妈妈',
    parent_name = '周超',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周令偲Selena'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周令偲Selena', 52, '15180848440', '妈妈', '周超', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周令偲Selena' AND class_id = 52
);

-- Row 1277: 杨涵宇Shelley @ 凤凰37班
UPDATE v2.students
SET phone = '15885536921',
    primary_guardian_type = '妈妈',
    parent_name = '张莉',
    school = '花溪实验小学',
    address = '贵阳市小河区长江路乐街小区樱花园1栋2单元12号',
    id_card = '520114201708051644',
    updated_at = NOW()
WHERE name = '杨涵宇Shelley'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨涵宇Shelley', 52, '15885536921', '妈妈', '张莉', '花溪实验小学', '贵阳市小河区长江路乐街小区樱花园1栋2单元12号', '520114201708051644', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨涵宇Shelley' AND class_id = 52
);

-- Row 1278: 张月瑄Dimple @ 凤凰37班
UPDATE v2.students
SET phone = '18685015510',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = '观山湖区万科翰林C8',
    id_card = '35020620180723006X',
    updated_at = NOW()
WHERE name = '张月瑄Dimple'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张月瑄Dimple', 52, '18685015510', '妈妈', NULL, NULL, '观山湖区万科翰林C8', '35020620180723006X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张月瑄Dimple' AND class_id = 52
);

-- Row 1279: 张以安Mia @ 凤凰37班
UPDATE v2.students
SET phone = '15285647115',
    primary_guardian_type = '妈妈',
    parent_name = '钟珊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张以安Mia'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张以安Mia', 52, '15285647115', '妈妈', '钟珊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张以安Mia' AND class_id = 52
);

-- Row 1280: 周嘉禾Couno @ 凤凰37班
UPDATE v2.students
SET phone = '18798034362',
    primary_guardian_type = '妈妈',
    parent_name = '张福蓉',
    school = '观山湖世纪城小学',
    address = '观山湖世纪城龙慈苑6栋1单元',
    id_card = '520103201805254014',
    updated_at = NOW()
WHERE name = '周嘉禾Couno'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周嘉禾Couno', 52, '18798034362', '妈妈', '张福蓉', '观山湖世纪城小学', '观山湖世纪城龙慈苑6栋1单元', '520103201805254014', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周嘉禾Couno' AND class_id = 52
);

-- Row 1281: 赵浚权Lucas Z @ 凤凰37班
UPDATE v2.students
SET phone = '18786635465',
    primary_guardian_type = '妈妈',
    parent_name = '常云',
    school = '普瑞',
    address = '世纪城',
    id_card = '520123201710163078',
    updated_at = NOW()
WHERE name = '赵浚权Lucas Z'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵浚权Lucas Z', 52, '18786635465', '妈妈', '常云', '普瑞', '世纪城', '520123201710163078', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵浚权Lucas Z' AND class_id = 52
);

-- Row 1282: 权庭宇Max @ 凤凰37班
UPDATE v2.students
SET phone = '13639061855',
    primary_guardian_type = '妈妈',
    parent_name = '靳峡',
    school = '世纪城小学',
    address = '观山湖区世纪城龙慈苑4-1-5-1',
    id_card = '520115201701182015',
    updated_at = NOW()
WHERE name = '权庭宇Max'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '权庭宇Max', 52, '13639061855', '妈妈', '靳峡', '世纪城小学', '观山湖区世纪城龙慈苑4-1-5-1', '520115201701182015', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '权庭宇Max' AND class_id = 52
);

-- Row 1283: 王诺柯Lock @ 凤凰37班
UPDATE v2.students
SET phone = '13595066902',
    primary_guardian_type = '妈妈',
    parent_name = '兰娅',
    school = '贵阳市实验小学未来方舟分校',
    address = NULL,
    id_card = '52010320171222801X',
    updated_at = NOW()
WHERE name = '王诺柯Lock'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王诺柯Lock', 52, '13595066902', '妈妈', '兰娅', '贵阳市实验小学未来方舟分校', NULL, '52010320171222801X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王诺柯Lock' AND class_id = 52
);

-- Row 1284: 李浠苒Bella @ 凤凰37班
UPDATE v2.students
SET phone = '18985170271',
    primary_guardian_type = '妈妈',
    parent_name = '彭雨霖',
    school = '尚义路小学',
    address = '南明区青云路125号',
    id_card = '520102201609141649',
    updated_at = NOW()
WHERE name = '李浠苒Bella'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李浠苒Bella', 52, '18985170271', '妈妈', '彭雨霖', '尚义路小学', '南明区青云路125号', '520102201609141649', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李浠苒Bella' AND class_id = 52
);

-- Row 1285: 帅语橙Elva @ 凤凰37班
UPDATE v2.students
SET phone = '13985130289',
    primary_guardian_type = '妈妈',
    parent_name = '崔洪增',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '帅语橙Elva'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '帅语橙Elva', 52, '13985130289', '妈妈', '崔洪增', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '帅语橙Elva' AND class_id = 52
);

-- Row 1286: 杨宸睿Summer @ 凤凰37班
UPDATE v2.students
SET phone = '19984412554',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '市东小学',
    address = '宝山北路180号54栋1单元601号',
    id_card = '52010320161004112',
    updated_at = NOW()
WHERE name = '杨宸睿Summer'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨宸睿Summer', 52, '19984412554', '妈妈', NULL, '市东小学', '宝山北路180号54栋1单元601号', '52010320161004112', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨宸睿Summer' AND class_id = 52
);

-- Row 1287: 刘子宸Ricky @ 凤凰37班
UPDATE v2.students
SET phone = '13985282985',
    primary_guardian_type = '妈妈',
    parent_name = '郭洪菊',
    school = '花溪第二小学万科校区',
    address = '花溪田园路万科大都会D区',
    id_card = '52011120180616001X',
    updated_at = NOW()
WHERE name = '刘子宸Ricky'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘子宸Ricky', 52, '13985282985', '妈妈', '郭洪菊', '花溪第二小学万科校区', '花溪田园路万科大都会D区', '52011120180616001X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘子宸Ricky' AND class_id = 52
);

-- Row 1288: 刘宗佑Flynn @ 凤凰37班
UPDATE v2.students
SET phone = '15285016957',
    primary_guardian_type = '妈妈',
    parent_name = '马梅',
    school = '观山湖中学至美小学部',
    address = '乌当区保利公园瑞玺10-6',
    id_card = '520103201712157418',
    updated_at = NOW()
WHERE name = '刘宗佑Flynn'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘宗佑Flynn', 52, '15285016957', '妈妈', '马梅', '观山湖中学至美小学部', '乌当区保利公园瑞玺10-6', '520103201712157418', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘宗佑Flynn' AND class_id = 52
);

-- Row 1289: 沈煜青墨Shelton @ 凤凰37班
UPDATE v2.students
SET phone = '18685159821',
    primary_guardian_type = '妈妈',
    parent_name = '侯雯',
    school = '北京市芳草地国际学校贵阳分校',
    address = '云岩区北京西路金龙星岛国际',
    id_card = '520103201609183618',
    updated_at = NOW()
WHERE name = '沈煜青墨Shelton'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '沈煜青墨Shelton', 52, '18685159821', '妈妈', '侯雯', '北京市芳草地国际学校贵阳分校', '云岩区北京西路金龙星岛国际', '520103201609183618', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '沈煜青墨Shelton' AND class_id = 52
);

-- Row 1290: 胡瑞瑜Ricky @ 凤凰37班
UPDATE v2.students
SET phone = '13885128368',
    primary_guardian_type = '妈妈',
    parent_name = '王云',
    school = '贵阳市第一实验小学',
    address = '世纪城',
    id_card = '52011520170511209X',
    updated_at = NOW()
WHERE name = '胡瑞瑜Ricky'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡瑞瑜Ricky', 52, '13885128368', '妈妈', '王云', '贵阳市第一实验小学', '世纪城', '52011520170511209X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡瑞瑜Ricky' AND class_id = 52
);

-- Row 1291: 陈昱吉Lucy @ 凤凰37班
UPDATE v2.students
SET phone = '13765081122',
    primary_guardian_type = '妈妈',
    parent_name = '王菲',
    school = '云岩区向阳小学',
    address = '云岩区未来方舟D15组团10栋25楼2号',
    id_card = '52010220170201584X',
    updated_at = NOW()
WHERE name = '陈昱吉Lucy'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈昱吉Lucy', 52, '13765081122', '妈妈', '王菲', '云岩区向阳小学', '云岩区未来方舟D15组团10栋25楼2号', '52010220170201584X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈昱吉Lucy' AND class_id = 52
);

-- Row 1292: 顾梓萱Zoe @ 凤凰37班
UPDATE v2.students
SET phone = '15850780606',
    primary_guardian_type = '妈妈',
    parent_name = '王莉',
    school = '华东师范贵阳附属学校',
    address = '观山湖区金谷区',
    id_card = '321088201611120044',
    updated_at = NOW()
WHERE name = '顾梓萱Zoe'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '顾梓萱Zoe', 52, '15850780606', '妈妈', '王莉', '华东师范贵阳附属学校', '观山湖区金谷区', '321088201611120044', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '顾梓萱Zoe' AND class_id = 52
);

-- Row 1293: 何克西Clukr @ 凤凰37班
UPDATE v2.students
SET phone = '13984879895',
    primary_guardian_type = '妈妈',
    parent_name = '杨慧',
    school = '北师大贵安分校',
    address = '贵安新区碧桂园一号星月湾',
    id_card = '522229201611010012',
    updated_at = NOW()
WHERE name = '何克西Clukr'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何克西Clukr', 52, '13984879895', '妈妈', '杨慧', '北师大贵安分校', '贵安新区碧桂园一号星月湾', '522229201611010012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何克西Clukr' AND class_id = 52
);

-- Row 1294: 贺子珝Luna @ 凤凰37班
UPDATE v2.students
SET phone = '17308513834',
    primary_guardian_type = '妈妈',
    parent_name = '罗潇',
    school = '贵阳市新世界学校',
    address = '观山湖区龙湖区舜山府A3-1-2802',
    id_card = '520115201802091243',
    updated_at = NOW()
WHERE name = '贺子珝Luna'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '贺子珝Luna', 52, '17308513834', '妈妈', '罗潇', '贵阳市新世界学校', '观山湖区龙湖区舜山府A3-1-2802', '520115201802091243', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '贺子珝Luna' AND class_id = 52
);

-- Row 1295: 杜雨霏Leona @ 凤凰37班
UPDATE v2.students
SET phone = '13638504765',
    primary_guardian_type = '妈妈',
    parent_name = '王璇',
    school = '花果园第三小学',
    address = NULL,
    id_card = '520102201804173427',
    updated_at = NOW()
WHERE name = '杜雨霏Leona'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜雨霏Leona', 52, '13638504765', '妈妈', '王璇', '花果园第三小学', NULL, '520102201804173427', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜雨霏Leona' AND class_id = 52
);

-- Row 1296: 江兴妤Elsa @ 凤凰37班
UPDATE v2.students
SET phone = '18886888852',
    primary_guardian_type = '妈妈',
    parent_name = '程娉婷',
    school = '华润国际小学',
    address = '华润悦府',
    id_card = '520115201808071227',
    updated_at = NOW()
WHERE name = '江兴妤Elsa'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '江兴妤Elsa', 52, '18886888852', '妈妈', '程娉婷', '华润国际小学', '华润悦府', '520115201808071227', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '江兴妤Elsa' AND class_id = 52
);

-- Row 1297: 胡睿禾Ray @ 凤凰37班
UPDATE v2.students
SET phone = '15108506711',
    primary_guardian_type = '妈妈',
    parent_name = '赵雪',
    school = '金宝幼儿园',
    address = NULL,
    id_card = '520103201901258410',
    updated_at = NOW()
WHERE name = '胡睿禾Ray'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡睿禾Ray', 52, '15108506711', '妈妈', '赵雪', '金宝幼儿园', NULL, '520103201901258410', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡睿禾Ray' AND class_id = 52
);

-- Row 1298: 安杨瑾萱Amy @ 凤凰37班
UPDATE v2.students
SET phone = '18300886881',
    primary_guardian_type = '妈妈',
    parent_name = '杨锦艳',
    school = '云岩区向阳小学',
    address = '贵阳市未来方舟',
    id_card = '520103201611108027',
    updated_at = NOW()
WHERE name = '安杨瑾萱Amy'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '安杨瑾萱Amy', 52, '18300886881', '妈妈', '杨锦艳', '云岩区向阳小学', '贵阳市未来方舟', '520103201611108027', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '安杨瑾萱Amy' AND class_id = 52
);

-- Row 1299: 陈俊予Lucas @ 凤凰37班
UPDATE v2.students
SET phone = '13618588268',
    primary_guardian_type = '爸爸',
    parent_name = '陈杨',
    school = '贵阳市环西小学',
    address = '飞山横街',
    id_card = '520103201807072011',
    updated_at = NOW()
WHERE name = '陈俊予Lucas'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈俊予Lucas', 52, '13618588268', '爸爸', '陈杨', '贵阳市环西小学', '飞山横街', '520103201807072011', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈俊予Lucas' AND class_id = 52
);

-- Row 1300: 曾庆禾Leah @ 凤凰37班
UPDATE v2.students
SET phone = '13595078189',
    primary_guardian_type = '妈妈',
    parent_name = '何维之',
    school = '实验四小',
    address = '贵阳市云岩区市北路6号文峰苑',
    id_card = '520103201807098422',
    updated_at = NOW()
WHERE name = '曾庆禾Leah'
  AND class_id = 52;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾庆禾Leah', 52, '13595078189', '妈妈', '何维之', '实验四小', '贵阳市云岩区市北路6号文峰苑', '520103201807098422', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾庆禾Leah' AND class_id = 52
);

-- Row 1301: 陈柯言 Kayla @ 凤凰43班
UPDATE v2.students
SET phone = '13539495431',
    primary_guardian_type = '妈妈',
    parent_name = '陈颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈柯言 Kayla'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈柯言 Kayla', 58, '13539495431', '妈妈', '陈颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈柯言 Kayla' AND class_id = 58
);

-- Row 1302: 邹骏屿 Park @ 凤凰43班
UPDATE v2.students
SET phone = '18885100510',
    primary_guardian_type = '妈妈',
    parent_name = '雷翔',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邹骏屿 Park'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹骏屿 Park', 58, '18885100510', '妈妈', '雷翔', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹骏屿 Park' AND class_id = 58
);

-- Row 1303: 周琬玥 Winnie @ 凤凰43班
UPDATE v2.students
SET phone = '18786733587',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周琬玥 Winnie'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周琬玥 Winnie', 58, '18786733587', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周琬玥 Winnie' AND class_id = 58
);

-- Row 1304: 钟景修 Jamie @ 凤凰43班
UPDATE v2.students
SET phone = '15338606676',
    primary_guardian_type = '妈妈',
    parent_name = '晓艺',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '钟景修 Jamie'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '钟景修 Jamie', 58, '15338606676', '妈妈', '晓艺', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '钟景修 Jamie' AND class_id = 58
);

-- Row 1305: 赵品懿 Judy @ 凤凰43班
UPDATE v2.students
SET phone = '18685189220',
    primary_guardian_type = '妈妈',
    parent_name = '王淑',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵品懿 Judy'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵品懿 Judy', 58, '18685189220', '妈妈', '王淑', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵品懿 Judy' AND class_id = 58
);

-- Row 1306: 张先琳 Lisa @ 凤凰43班
UPDATE v2.students
SET phone = '18886488228',
    primary_guardian_type = '妈妈',
    parent_name = '石黎黎',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张先琳 Lisa'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张先琳 Lisa', 58, '18886488228', '妈妈', '石黎黎', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张先琳 Lisa' AND class_id = 58
);

-- Row 1307: 姚沫宇 Kyson @ 凤凰43班
UPDATE v2.students
SET phone = '18111890095',
    primary_guardian_type = '妈妈',
    parent_name = '刘颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '姚沫宇 Kyson'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '姚沫宇 Kyson', 58, '18111890095', '妈妈', '刘颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '姚沫宇 Kyson' AND class_id = 58
);

-- Row 1308: 张煜辰 Max @ 凤凰43班
UPDATE v2.students
SET phone = '15599232771',
    primary_guardian_type = '妈妈',
    parent_name = '胡晓雪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张煜辰 Max'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张煜辰 Max', 58, '15599232771', '妈妈', '胡晓雪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张煜辰 Max' AND class_id = 58
);

-- Row 1309: 张凌川 Johnson @ 凤凰43班
UPDATE v2.students
SET phone = '18288748600',
    primary_guardian_type = '妈妈',
    parent_name = '杜星梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张凌川 Johnson'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张凌川 Johnson', 58, '18288748600', '妈妈', '杜星梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张凌川 Johnson' AND class_id = 58
);

-- Row 1310: 张文馨 Yuna @ 凤凰43班
UPDATE v2.students
SET phone = '18685156005',
    primary_guardian_type = '妈妈',
    parent_name = '陈丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张文馨 Yuna'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张文馨 Yuna', 58, '18685156005', '妈妈', '陈丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张文馨 Yuna' AND class_id = 58
);

-- Row 1311: 杨璨宇 Cyrus @ 凤凰43班
UPDATE v2.students
SET phone = '18684119944',
    primary_guardian_type = '妈妈',
    parent_name = '朱可露',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨璨宇 Cyrus'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨璨宇 Cyrus', 58, '18684119944', '妈妈', '朱可露', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨璨宇 Cyrus' AND class_id = 58
);

-- Row 1312: 唐童羽Eva @ 凤凰43班
UPDATE v2.students
SET phone = '13985447424',
    primary_guardian_type = '妈妈',
    parent_name = '顾晓鸣',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '唐童羽Eva'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐童羽Eva', 58, '13985447424', '妈妈', '顾晓鸣', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐童羽Eva' AND class_id = 58
);

-- Row 1313: 田岩鑫 Freddy @ 凤凰43班
UPDATE v2.students
SET phone = '13885505088',
    primary_guardian_type = '妈妈',
    parent_name = '潘敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '田岩鑫 Freddy'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '田岩鑫 Freddy', 58, '13885505088', '妈妈', '潘敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '田岩鑫 Freddy' AND class_id = 58
);

-- Row 1314: 夏梓璇 Sharon @ 凤凰43班
UPDATE v2.students
SET phone = '13765096341',
    primary_guardian_type = '妈妈',
    parent_name = '夏庆红',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '夏梓璇 Sharon'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '夏梓璇 Sharon', 58, '13765096341', '妈妈', '夏庆红', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '夏梓璇 Sharon' AND class_id = 58
);

-- Row 1315: 项易霖 Saun @ 凤凰43班
UPDATE v2.students
SET phone = '18984380704',
    primary_guardian_type = '妈妈',
    parent_name = '章燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '项易霖 Saun'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '项易霖 Saun', 58, '18984380704', '妈妈', '章燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '项易霖 Saun' AND class_id = 58
);

-- Row 1316: 申芸希 Cici @ 凤凰43班
UPDATE v2.students
SET phone = '18608507623',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '申芸希 Cici'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '申芸希 Cici', 58, '18608507623', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '申芸希 Cici' AND class_id = 58
);

-- Row 1317: 万子睿 Dylan @ 凤凰43班
UPDATE v2.students
SET phone = '17385834006',
    primary_guardian_type = '妈妈',
    parent_name = '张妮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '万子睿 Dylan'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '万子睿 Dylan', 58, '17385834006', '妈妈', '张妮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '万子睿 Dylan' AND class_id = 58
);

-- Row 1318: 牟焱睿 Ambrose @ 凤凰43班
UPDATE v2.students
SET phone = '18985107854',
    primary_guardian_type = '爸爸',
    parent_name = '牟小虎',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '牟焱睿 Ambrose'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '牟焱睿 Ambrose', 58, '18985107854', '爸爸', '牟小虎', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '牟焱睿 Ambrose' AND class_id = 58
);

-- Row 1319: 王盛丰 Timi @ 凤凰43班
UPDATE v2.students
SET phone = '17308503235',
    primary_guardian_type = '妈妈',
    parent_name = '章玉群',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王盛丰 Timi'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王盛丰 Timi', 58, '17308503235', '妈妈', '章玉群', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王盛丰 Timi' AND class_id = 58
);

-- Row 1320: 罗伊一 Abby @ 凤凰43班
UPDATE v2.students
SET phone = '15285218911',
    primary_guardian_type = '妈妈',
    parent_name = '勾萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗伊一 Abby'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗伊一 Abby', 58, '15285218911', '妈妈', '勾萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗伊一 Abby' AND class_id = 58
);

-- Row 1321: 陆泽贤 Leo @ 凤凰43班
UPDATE v2.students
SET phone = '18285128340',
    primary_guardian_type = '妈妈',
    parent_name = '石秋诗',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陆泽贤 Leo'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陆泽贤 Leo', 58, '18285128340', '妈妈', '石秋诗', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陆泽贤 Leo' AND class_id = 58
);

-- Row 1322: 郭哲光 Wally @ 凤凰43班
UPDATE v2.students
SET phone = '13984828363',
    primary_guardian_type = '妈妈',
    parent_name = '单燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '郭哲光 Wally'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭哲光 Wally', 58, '13984828363', '妈妈', '单燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭哲光 Wally' AND class_id = 58
);

-- Row 1323: 杜明睿 Elsa @ 凤凰43班
UPDATE v2.students
SET phone = '18932016981',
    primary_guardian_type = '妈妈',
    parent_name = '田维捷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杜明睿 Elsa'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜明睿 Elsa', 58, '18932016981', '妈妈', '田维捷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜明睿 Elsa' AND class_id = 58
);

-- Row 1324: 李杨正航 Ares @ 凤凰43班
UPDATE v2.students
SET phone = '15180879558',
    primary_guardian_type = '妈妈',
    parent_name = '杨红',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李杨正航 Ares'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李杨正航 Ares', 58, '15180879558', '妈妈', '杨红', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李杨正航 Ares' AND class_id = 58
);

-- Row 1325: 胡云章 Owen @ 凤凰43班
UPDATE v2.students
SET phone = '13765164966',
    primary_guardian_type = '妈妈',
    parent_name = '雷萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡云章 Owen'
  AND class_id = 58;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡云章 Owen', 58, '13765164966', '妈妈', '雷萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡云章 Owen' AND class_id = 58
);

-- Row 1326: 唐骅琛Fyman @ 凤凰34班
UPDATE v2.students
SET phone = '13809460704',
    primary_guardian_type = '妈妈',
    parent_name = '皮君',
    school = '华东师范附小',
    address = '观山湖景怡苑',
    id_card = '520103201606038415',
    updated_at = NOW()
WHERE name = '唐骅琛Fyman'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐骅琛Fyman', 49, '13809460704', '妈妈', '皮君', '华东师范附小', '观山湖景怡苑', '520103201606038415', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐骅琛Fyman' AND class_id = 49
);

-- Row 1327: 宋佳宜Wendy @ 凤凰34班
UPDATE v2.students
SET phone = '13984140222',
    primary_guardian_type = '妈妈',
    parent_name = '朱丹',
    school = '贵阳市实验二小',
    address = '中天花园',
    id_card = '520103201708110246',
    updated_at = NOW()
WHERE name = '宋佳宜Wendy'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋佳宜Wendy', 49, '13984140222', '妈妈', '朱丹', '贵阳市实验二小', '中天花园', '520103201708110246', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋佳宜Wendy' AND class_id = 49
);

-- Row 1328: 熊梓皓Leo @ 凤凰34班
UPDATE v2.students
SET phone = '18085094915',
    primary_guardian_type = '妈妈',
    parent_name = '魏艳娟',
    school = '世纪城小学',
    address = '金龙星岛国际',
    id_card = '511602201609020413',
    updated_at = NOW()
WHERE name = '熊梓皓Leo'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '熊梓皓Leo', 49, '18085094915', '妈妈', '魏艳娟', '世纪城小学', '金龙星岛国际', '511602201609020413', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '熊梓皓Leo' AND class_id = 49
);

-- Row 1329: 杨佳雨Carol @ 凤凰34班
UPDATE v2.students
SET phone = '18786606190',
    primary_guardian_type = '妈妈',
    parent_name = '杨春琼',
    school = '实验二小',
    address = '云岩区金仓路',
    id_card = '520103201703155226',
    updated_at = NOW()
WHERE name = '杨佳雨Carol'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨佳雨Carol', 49, '18786606190', '妈妈', '杨春琼', '实验二小', '云岩区金仓路', '520103201703155226', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨佳雨Carol' AND class_id = 49
);

-- Row 1330: 于沐廷Lucas @ 凤凰34班
UPDATE v2.students
SET phone = '15519128611',
    primary_guardian_type = '妈妈',
    parent_name = '李丽',
    school = '省府路小学恒大帝景校区',
    address = '贵州省贵阳市云岩区甲秀北路恒大帝景',
    id_card = '520103201806298211',
    updated_at = NOW()
WHERE name = '于沐廷Lucas'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '于沐廷Lucas', 49, '15519128611', '妈妈', '李丽', '省府路小学恒大帝景校区', '贵州省贵阳市云岩区甲秀北路恒大帝景', '520103201806298211', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '于沐廷Lucas' AND class_id = 49
);

-- Row 1331: 肖朗Allen @ 凤凰34班
UPDATE v2.students
SET phone = '18286038114',
    primary_guardian_type = '妈妈',
    parent_name = '刘利利',
    school = '南明小学',
    address = '贵阳南明区宝山南路',
    id_card = '520102201803215074',
    updated_at = NOW()
WHERE name = '肖朗Allen'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖朗Allen', 49, '18286038114', '妈妈', '刘利利', '南明小学', '贵阳南明区宝山南路', '520102201803215074', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖朗Allen' AND class_id = 49
);

-- Row 1332: 张天阅Carmen @ 凤凰34班
UPDATE v2.students
SET phone = '18908517696',
    primary_guardian_type = '妈妈',
    parent_name = '曾一',
    school = '甲秀小学',
    address = '金典时代',
    id_card = '520102201612304023',
    updated_at = NOW()
WHERE name = '张天阅Carmen'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张天阅Carmen', 49, '18908517696', '妈妈', '曾一', '甲秀小学', '金典时代', '520102201612304023', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张天阅Carmen' AND class_id = 49
);

-- Row 1333: 张佑辰Kai @ 凤凰34班
UPDATE v2.students
SET phone = '15285612127',
    primary_guardian_type = '妈妈',
    parent_name = '汪茜',
    school = '白云区第十小学',
    address = '云城尚品',
    id_card = '52010220160916041X',
    updated_at = NOW()
WHERE name = '张佑辰Kai'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张佑辰Kai', 49, '15285612127', '妈妈', '汪茜', '白云区第十小学', '云城尚品', '52010220160916041X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张佑辰Kai' AND class_id = 49
);

-- Row 1334: 杨刘如懿Ruby @ 凤凰34班
UPDATE v2.students
SET phone = '17784133069',
    primary_guardian_type = '妈妈',
    parent_name = '刘婉婷',
    school = '花溪一小',
    address = '南明区航天路',
    id_card = '520111201808080048',
    updated_at = NOW()
WHERE name = '杨刘如懿Ruby'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨刘如懿Ruby', 49, '17784133069', '妈妈', '刘婉婷', '花溪一小', '南明区航天路', '520111201808080048', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨刘如懿Ruby' AND class_id = 49
);

-- Row 1335: 宋明格Ryan @ 凤凰34班
UPDATE v2.students
SET phone = '15285068081',
    primary_guardian_type = '妈妈',
    parent_name = '黄菊',
    school = '尚义路小学',
    address = '南明区桃源路',
    id_card = '520222201612095533',
    updated_at = NOW()
WHERE name = '宋明格Ryan'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋明格Ryan', 49, '15285068081', '妈妈', '黄菊', '尚义路小学', '南明区桃源路', '520222201612095533', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋明格Ryan' AND class_id = 49
);

-- Row 1336: 杨雅涵Jojo @ 凤凰34班
UPDATE v2.students
SET phone = '13078567926',
    primary_guardian_type = '妈妈',
    parent_name = '罗玉春',
    school = '华东师范大学附属贵阳学校',
    address = '观山湖睿力上城',
    id_card = '500223201709262548',
    updated_at = NOW()
WHERE name = '杨雅涵Jojo'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨雅涵Jojo', 49, '13078567926', '妈妈', '罗玉春', '华东师范大学附属贵阳学校', '观山湖睿力上城', '500223201709262548', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨雅涵Jojo' AND class_id = 49
);

-- Row 1337: 宋舶源Bryan @ 凤凰34班
UPDATE v2.students
SET phone = '13007835798',
    primary_guardian_type = '妈妈',
    parent_name = '宋庆泉',
    school = '甲秀小学',
    address = '南明区护国路',
    id_card = '520102201807060815',
    updated_at = NOW()
WHERE name = '宋舶源Bryan'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋舶源Bryan', 49, '13007835798', '妈妈', '宋庆泉', '甲秀小学', '南明区护国路', '520102201807060815', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋舶源Bryan' AND class_id = 49
);

-- Row 1338: 姜骏淇Seven @ 凤凰34班
UPDATE v2.students
SET phone = '16608501313',
    primary_guardian_type = '妈妈',
    parent_name = '罗荣',
    school = '世纪城小学',
    address = '贵阳南明区湘雅村',
    id_card = '520103201707142019',
    updated_at = NOW()
WHERE name = '姜骏淇Seven'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '姜骏淇Seven', 49, '16608501313', '妈妈', '罗荣', '世纪城小学', '贵阳南明区湘雅村', '520103201707142019', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '姜骏淇Seven' AND class_id = 49
);

-- Row 1339: 石歆迪Mary @ 凤凰34班
UPDATE v2.students
SET phone = '15885477788',
    primary_guardian_type = '妈妈',
    parent_name = '黄黎黎',
    school = '云岩一小',
    address = '鹿冲关路中建华府',
    id_card = '522731201701211300',
    updated_at = NOW()
WHERE name = '石歆迪Mary'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '石歆迪Mary', 49, '15885477788', '妈妈', '黄黎黎', '云岩一小', '鹿冲关路中建华府', '522731201701211300', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '石歆迪Mary' AND class_id = 49
);

-- Row 1340: 史佳泽Jacky @ 凤凰34班
UPDATE v2.students
SET phone = '15285054768',
    primary_guardian_type = '妈妈',
    parent_name = '余君',
    school = '达德学校青秀校区',
    address = '南明区青秀校区',
    id_card = '520102201807192711',
    updated_at = NOW()
WHERE name = '史佳泽Jacky'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '史佳泽Jacky', 49, '15285054768', '妈妈', '余君', '达德学校青秀校区', '南明区青秀校区', '520102201807192711', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '史佳泽Jacky' AND class_id = 49
);

-- Row 1341: 施沐希Luna @ 凤凰34班
UPDATE v2.students
SET phone = '13985463283',
    primary_guardian_type = '妈妈',
    parent_name = '杨玥',
    school = '花溪第二小学保利校区',
    address = '贵阳花溪区保利溪湖',
    id_card = '520111201806230049',
    updated_at = NOW()
WHERE name = '施沐希Luna'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '施沐希Luna', 49, '13985463283', '妈妈', '杨玥', '花溪第二小学保利校区', '贵阳花溪区保利溪湖', '520111201806230049', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '施沐希Luna' AND class_id = 49
);

-- Row 1342: 李宥霖Liam @ 凤凰34班
UPDATE v2.students
SET phone = '13765000101',
    primary_guardian_type = '妈妈',
    parent_name = '徐晓庆',
    school = '华麟小学',
    address = '无',
    id_card = '520103201807068012',
    updated_at = NOW()
WHERE name = '李宥霖Liam'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李宥霖Liam', 49, '13765000101', '妈妈', '徐晓庆', '华麟小学', '无', '520103201807068012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李宥霖Liam' AND class_id = 49
);

-- Row 1343: 刘翊翾Harry @ 凤凰34班
UPDATE v2.students
SET phone = '18275027888',
    primary_guardian_type = NULL,
    parent_name = '晋婷婷',
    school = '剑桥小学',
    address = '南明区钻石广场',
    id_card = '520114201710270010',
    updated_at = NOW()
WHERE name = '刘翊翾Harry'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘翊翾Harry', 49, '18275027888', NULL, '晋婷婷', '剑桥小学', '南明区钻石广场', '520114201710270010', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘翊翾Harry' AND class_id = 49
);

-- Row 1344: 雷梦杨Eric @ 凤凰34班
UPDATE v2.students
SET phone = '18984019480',
    primary_guardian_type = NULL,
    parent_name = '杨启燕',
    school = '南明区尚义路小学',
    address = '南明区保利凤凰湾',
    id_card = '520122201612254113',
    updated_at = NOW()
WHERE name = '雷梦杨Eric'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '雷梦杨Eric', 49, '18984019480', NULL, '杨启燕', '南明区尚义路小学', '南明区保利凤凰湾', '520122201612254113', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '雷梦杨Eric' AND class_id = 49
);

-- Row 1345: 柯峻彦Kevin @ 凤凰34班
UPDATE v2.students
SET phone = '13639107777',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '柯峻彦Kevin'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '柯峻彦Kevin', 49, '13639107777', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '柯峻彦Kevin' AND class_id = 49
);

-- Row 1346: 高梓栩Hugo @ 凤凰34班
UPDATE v2.students
SET phone = '13984139857',
    primary_guardian_type = '妈妈',
    parent_name = '熊佳',
    school = '北师大附小',
    address = '观山湖区金龙国际',
    id_card = '520102201610027018',
    updated_at = NOW()
WHERE name = '高梓栩Hugo'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高梓栩Hugo', 49, '13984139857', '妈妈', '熊佳', '北师大附小', '观山湖区金龙国际', '520102201610027018', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高梓栩Hugo' AND class_id = 49
);

-- Row 1347: 丁筱玲Linda @ 凤凰34班
UPDATE v2.students
SET phone = '17708518116',
    primary_guardian_type = '妈妈',
    parent_name = '杨玉梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '丁筱玲Linda'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '丁筱玲Linda', 49, '17708518116', '妈妈', '杨玉梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '丁筱玲Linda' AND class_id = 49
);

-- Row 1348: 党子铭Max @ 凤凰34班
UPDATE v2.students
SET phone = '18798849246',
    primary_guardian_type = '妈妈',
    parent_name = '袁华敏',
    school = '南明小学',
    address = '花果园半山小镇',
    id_card = '520102201707145053',
    updated_at = NOW()
WHERE name = '党子铭Max'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '党子铭Max', 49, '18798849246', '妈妈', '袁华敏', '南明小学', '花果园半山小镇', '520102201707145053', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '党子铭Max' AND class_id = 49
);

-- Row 1349: 耿康淇Felix @ 凤凰34班
UPDATE v2.students
SET phone = '18984084660',
    primary_guardian_type = '妈妈',
    parent_name = '代光丽',
    school = '南明小学',
    address = '南明区',
    id_card = '52010220170801125X',
    updated_at = NOW()
WHERE name = '耿康淇Felix'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '耿康淇Felix', 49, '18984084660', '妈妈', '代光丽', '南明小学', '南明区', '52010220170801125X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '耿康淇Felix' AND class_id = 49
);

-- Row 1350: 黄麟涵Candy @ 凤凰34班
UPDATE v2.students
SET phone = '18685102247',
    primary_guardian_type = '妈妈',
    parent_name = '刘昭慧',
    school = '环西小学',
    address = '贵阳市白云区俊发城',
    id_card = '520103201703292822',
    updated_at = NOW()
WHERE name = '黄麟涵Candy'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄麟涵Candy', 49, '18685102247', '妈妈', '刘昭慧', '环西小学', '贵阳市白云区俊发城', '520103201703292822', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄麟涵Candy' AND class_id = 49
);

-- Row 1351: 陈楷凌Kellyne @ 凤凰34班
UPDATE v2.students
SET phone = '18685156809',
    primary_guardian_type = '妈妈',
    parent_name = '谢雨初',
    school = '清镇市第二小学',
    address = '清镇市上观小区',
    id_card = '520181201704060455',
    updated_at = NOW()
WHERE name = '陈楷凌Kellyne'
  AND class_id = 49;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈楷凌Kellyne', 49, '18685156809', '妈妈', '谢雨初', '清镇市第二小学', '清镇市上观小区', '520181201704060455', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈楷凌Kellyne' AND class_id = 49
);

-- Row 1352: 岳靖轩Alex @ 凤凰33班
UPDATE v2.students
SET phone = '13668506737',
    primary_guardian_type = '妈妈',
    parent_name = '岳子钰',
    school = '南明小学',
    address = '华润九悦',
    id_card = '52010220160907161X',
    updated_at = NOW()
WHERE name = '岳靖轩Alex'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '岳靖轩Alex', 48, '13668506737', '妈妈', '岳子钰', '南明小学', '华润九悦', '52010220160907161X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '岳靖轩Alex' AND class_id = 48
);

-- Row 1353: 余昕骏Allen @ 凤凰33班
UPDATE v2.students
SET phone = '18111914060',
    primary_guardian_type = NULL,
    parent_name = '余家兴',
    school = '尚义路小学',
    address = '南明区太慈桥',
    id_card = '520103201703274436',
    updated_at = NOW()
WHERE name = '余昕骏Allen'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余昕骏Allen', 48, '18111914060', NULL, '余家兴', '尚义路小学', '南明区太慈桥', '520103201703274436', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余昕骏Allen' AND class_id = 48
);

-- Row 1354: 尹诗丽Lily @ 凤凰33班
UPDATE v2.students
SET phone = '18798009485',
    primary_guardian_type = NULL,
    parent_name = '翁学丽',
    school = '南明小学',
    address = '中铁国际城',
    id_card = '520102201610262421',
    updated_at = NOW()
WHERE name = '尹诗丽Lily'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '尹诗丽Lily', 48, '18798009485', NULL, '翁学丽', '南明小学', '中铁国际城', '520102201610262421', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '尹诗丽Lily' AND class_id = 48
);

-- Row 1355: 张慕辰Heart @ 凤凰33班
UPDATE v2.students
SET phone = '15180740320',
    primary_guardian_type = NULL,
    parent_name = '田维佳',
    school = '甲秀小学',
    address = '云岩区友谊路',
    id_card = '52010220805041629',
    updated_at = NOW()
WHERE name = '张慕辰Heart'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张慕辰Heart', 48, '15180740320', NULL, '田维佳', '甲秀小学', '云岩区友谊路', '52010220805041629', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张慕辰Heart' AND class_id = 48
);

-- Row 1356: 王博榆 Leo W @ 凤凰33班
UPDATE v2.students
SET phone = '13158008002',
    primary_guardian_type = '妈妈',
    parent_name = '陈竹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王博榆 Leo W'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王博榆 Leo W', 48, '13158008002', '妈妈', '陈竹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王博榆 Leo W' AND class_id = 48
);

-- Row 1357: 刘锦奇Cola @ 凤凰33班
UPDATE v2.students
SET phone = '13984317117',
    primary_guardian_type = '妈妈',
    parent_name = '詹致军',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘锦奇Cola'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘锦奇Cola', 48, '13984317117', '妈妈', '詹致军', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘锦奇Cola' AND class_id = 48
);

-- Row 1358: 杨胤泽Zane @ 凤凰33班
UPDATE v2.students
SET phone = '18285140810',
    primary_guardian_type = '妈妈',
    parent_name = '冉素',
    school = '环西小学',
    address = '云岩区通衢街',
    id_card = '520181201808225218',
    updated_at = NOW()
WHERE name = '杨胤泽Zane'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨胤泽Zane', 48, '18285140810', '妈妈', '冉素', '环西小学', '云岩区通衢街', '520181201808225218', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨胤泽Zane' AND class_id = 48
);

-- Row 1359: 马锦程Martin @ 凤凰33班
UPDATE v2.students
SET phone = '15902696988',
    primary_guardian_type = '妈妈',
    parent_name = '武清',
    school = '贵阳市东山小学',
    address = '云岩区宝山北路',
    id_card = '520103201707110113',
    updated_at = NOW()
WHERE name = '马锦程Martin'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马锦程Martin', 48, '15902696988', '妈妈', '武清', '贵阳市东山小学', '云岩区宝山北路', '520103201707110113', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马锦程Martin' AND class_id = 48
);

-- Row 1360: 汪泓霖Benson @ 凤凰33班
UPDATE v2.students
SET phone = '18275363085',
    primary_guardian_type = NULL,
    parent_name = '郭静',
    school = '中天北京小学',
    address = '云岩区新添大道',
    id_card = '520302201611294434',
    updated_at = NOW()
WHERE name = '汪泓霖Benson'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '汪泓霖Benson', 48, '18275363085', NULL, '郭静', '中天北京小学', '云岩区新添大道', '520302201611294434', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '汪泓霖Benson' AND class_id = 48
);

-- Row 1361: 吕静仪Beryl @ 凤凰33班
UPDATE v2.students
SET phone = '15085973971',
    primary_guardian_type = NULL,
    parent_name = '许莹',
    school = '实验小学未来方舟分校',
    address = '云岩区未来方舟',
    id_card = '52010320170548045',
    updated_at = NOW()
WHERE name = '吕静仪Beryl'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吕静仪Beryl', 48, '15085973971', NULL, '许莹', '实验小学未来方舟分校', '云岩区未来方舟', '52010320170548045', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吕静仪Beryl' AND class_id = 48
);

-- Row 1362: 刘翊涵Leah @ 凤凰33班
UPDATE v2.students
SET phone = '13984854501',
    primary_guardian_type = NULL,
    parent_name = '张良芬',
    school = '贵阳市花溪区华阳小学',
    address = '花溪区黄河路',
    id_card = '520114101704240042',
    updated_at = NOW()
WHERE name = '刘翊涵Leah'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘翊涵Leah', 48, '13984854501', NULL, '张良芬', '贵阳市花溪区华阳小学', '花溪区黄河路', '520114101704240042', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘翊涵Leah' AND class_id = 48
);

-- Row 1363: 李秉燃Daniel @ 凤凰33班
UPDATE v2.students
SET phone = '18585083266',
    primary_guardian_type = '妈妈',
    parent_name = '徐睿婕',
    school = '环西小学',
    address = '南明区',
    id_card = '520102201807192412',
    updated_at = NOW()
WHERE name = '李秉燃Daniel'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李秉燃Daniel', 48, '18585083266', '妈妈', '徐睿婕', '环西小学', '南明区', '520102201807192412', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李秉燃Daniel' AND class_id = 48
);

-- Row 1364: 唐若曦Sunny @ 凤凰33班
UPDATE v2.students
SET phone = '18984162368',
    primary_guardian_type = NULL,
    parent_name = '杜蓉蓉',
    school = '甲秀小学',
    address = '贵阳市南明区',
    id_card = '520102201611101224',
    updated_at = NOW()
WHERE name = '唐若曦Sunny'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐若曦Sunny', 48, '18984162368', NULL, '杜蓉蓉', '甲秀小学', '贵阳市南明区', '520102201611101224', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐若曦Sunny' AND class_id = 48
);

-- Row 1365: 杨承志远Mark @ 凤凰33班
UPDATE v2.students
SET phone = '13885073057',
    primary_guardian_type = NULL,
    parent_name = '罗庆丽',
    school = NULL,
    address = '宝山南路',
    id_card = '520112201802123859',
    updated_at = NOW()
WHERE name = '杨承志远Mark'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨承志远Mark', 48, '13885073057', NULL, '罗庆丽', NULL, '宝山南路', '520112201802123859', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨承志远Mark' AND class_id = 48
);

-- Row 1366: 杨林熹Qila @ 凤凰33班
UPDATE v2.students
SET phone = '13984003305',
    primary_guardian_type = '妈妈',
    parent_name = '黄心辰',
    school = '实验小学',
    address = '云岩区中天花园',
    id_card = '520115201708291660',
    updated_at = NOW()
WHERE name = '杨林熹Qila'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨林熹Qila', 48, '13984003305', '妈妈', '黄心辰', '实验小学', '云岩区中天花园', '520115201708291660', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨林熹Qila' AND class_id = 48
);

-- Row 1367: 黄相轶Bob @ 凤凰33班
UPDATE v2.students
SET phone = '13985462385',
    primary_guardian_type = '妈妈',
    parent_name = '周丽华',
    school = '花溪区第二小学',
    address = '花溪区溪山御景',
    id_card = '52011120170703603X',
    updated_at = NOW()
WHERE name = '黄相轶Bob'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄相轶Bob', 48, '13985462385', '妈妈', '周丽华', '花溪区第二小学', '花溪区溪山御景', '52011120170703603X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄相轶Bob' AND class_id = 48
);

-- Row 1368: 顾子谦Harry @ 凤凰33班
UPDATE v2.students
SET phone = '13608552998',
    primary_guardian_type = '妈妈',
    parent_name = '邓丽',
    school = '贵阳市南明小学',
    address = '南明区保利凤凰湾',
    id_card = '520102201709217014',
    updated_at = NOW()
WHERE name = '顾子谦Harry'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '顾子谦Harry', 48, '13608552998', '妈妈', '邓丽', '贵阳市南明小学', '南明区保利凤凰湾', '520102201709217014', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '顾子谦Harry' AND class_id = 48
);

-- Row 1369: 贾梦葭Jocelyn @ 凤凰33班
UPDATE v2.students
SET phone = '18286057757',
    primary_guardian_type = '妈妈',
    parent_name = '彭梦',
    school = '实验小学',
    address = '云岩区宝山北路',
    id_card = '52010320171024442X',
    updated_at = NOW()
WHERE name = '贾梦葭Jocelyn'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '贾梦葭Jocelyn', 48, '18286057757', '妈妈', '彭梦', '实验小学', '云岩区宝山北路', '52010320171024442X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '贾梦葭Jocelyn' AND class_id = 48
);

-- Row 1370: 黄健勋Simba @ 凤凰33班
UPDATE v2.students
SET phone = '13341107716',
    primary_guardian_type = '妈妈',
    parent_name = '王杰',
    school = NULL,
    address = '南明区',
    id_card = '520102201805103818',
    updated_at = NOW()
WHERE name = '黄健勋Simba'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄健勋Simba', 48, '13341107716', '妈妈', '王杰', NULL, '南明区', '520102201805103818', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄健勋Simba' AND class_id = 48
);

-- Row 1371: 雷懋晨Macie @ 凤凰33班
UPDATE v2.students
SET phone = '18608506020',
    primary_guardian_type = NULL,
    parent_name = '毕丹',
    school = '花溪区第二小学',
    address = '花溪区',
    id_card = '520111201703146020',
    updated_at = NOW()
WHERE name = '雷懋晨Macie'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '雷懋晨Macie', 48, '18608506020', NULL, '毕丹', '花溪区第二小学', '花溪区', '520111201703146020', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '雷懋晨Macie' AND class_id = 48
);

-- Row 1372: 黄宥童Queena @ 凤凰33班
UPDATE v2.students
SET phone = '18685049099',
    primary_guardian_type = NULL,
    parent_name = '闫乐宁',
    school = '中天北京小学',
    address = '中天花园',
    id_card = '520103201807042624',
    updated_at = NOW()
WHERE name = '黄宥童Queena'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄宥童Queena', 48, '18685049099', NULL, '闫乐宁', '中天北京小学', '中天花园', '520103201807042624', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄宥童Queena' AND class_id = 48
);

-- Row 1373: 蹇沂宏Jerry @ 凤凰33班
UPDATE v2.students
SET phone = '18985165335',
    primary_guardian_type = NULL,
    parent_name = '张艳',
    school = '贵阳市实验小学',
    address = '云岩区',
    id_card = '520103201803078432',
    updated_at = NOW()
WHERE name = '蹇沂宏Jerry'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蹇沂宏Jerry', 48, '18985165335', NULL, '张艳', '贵阳市实验小学', '云岩区', '520103201803078432', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蹇沂宏Jerry' AND class_id = 48
);

-- Row 1374: 曾钰航Tyler @ 凤凰33班
UPDATE v2.students
SET phone = '13985558581',
    primary_guardian_type = NULL,
    parent_name = '黄小丫',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾钰航Tyler'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾钰航Tyler', 48, '13985558581', NULL, '黄小丫', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾钰航Tyler' AND class_id = 48
);

-- Row 1375: 曹楷淳Domin @ 凤凰33班
UPDATE v2.students
SET phone = '18685369860',
    primary_guardian_type = NULL,
    parent_name = '陆艺秋月',
    school = '花果园第三小学',
    address = '花果园',
    id_card = '520103201706301612',
    updated_at = NOW()
WHERE name = '曹楷淳Domin'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹楷淳Domin', 48, '18685369860', NULL, '陆艺秋月', '花果园第三小学', '花果园', '520103201706301612', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹楷淳Domin' AND class_id = 48
);

-- Row 1376: 杜昊燊Monkey @ 凤凰33班
UPDATE v2.students
SET phone = '13608577929',
    primary_guardian_type = '妈妈',
    parent_name = '张娓',
    school = '观山湖区外国语实验小学',
    address = '观山湖区恒大金阳新世界',
    id_card = '520102201605273035',
    updated_at = NOW()
WHERE name = '杜昊燊Monkey'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜昊燊Monkey', 48, '13608577929', '妈妈', '张娓', '观山湖区外国语实验小学', '观山湖区恒大金阳新世界', '520102201605273035', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜昊燊Monkey' AND class_id = 48
);

-- Row 1377: 曹竞之Leo @ 凤凰33班
UPDATE v2.students
SET phone = '18585055021',
    primary_guardian_type = NULL,
    parent_name = '张洁',
    school = '芳草地',
    address = '未来方舟',
    id_card = '520103201802248032',
    updated_at = NOW()
WHERE name = '曹竞之Leo'
  AND class_id = 48;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹竞之Leo', 48, '18585055021', NULL, '张洁', '芳草地', '未来方舟', '520103201802248032', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹竞之Leo' AND class_id = 48
);

-- Row 1386: 禹知宜Lumi @ 小锦鲤37班
UPDATE v2.students
SET phone = '18585818160',
    primary_guardian_type = '妈妈',
    parent_name = '杨雨',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '禹知宜Lumi'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '禹知宜Lumi', 20, '18585818160', '妈妈', '杨雨', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '禹知宜Lumi' AND class_id = 20
);

-- Row 1387: 张璟宸Johnny @ 小锦鲤37班
UPDATE v2.students
SET phone = '15985124936',
    primary_guardian_type = '妈妈',
    parent_name = '陈余美',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张璟宸Johnny'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张璟宸Johnny', 20, '15985124936', '妈妈', '陈余美', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张璟宸Johnny' AND class_id = 20
);

-- Row 1388: 熊薛灵Apple @ 小锦鲤37班
UPDATE v2.students
SET phone = '18585208010',
    primary_guardian_type = '妈妈',
    parent_name = '熊颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '熊薛灵Apple'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '熊薛灵Apple', 20, '18585208010', '妈妈', '熊颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '熊薛灵Apple' AND class_id = 20
);

-- Row 1389: 龚林煊朔Tommy @ 小锦鲤37班
UPDATE v2.students
SET phone = '15519095678',
    primary_guardian_type = '妈妈',
    parent_name = '龚辉军',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '龚林煊朔Tommy'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龚林煊朔Tommy', 20, '15519095678', '妈妈', '龚辉军', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龚林煊朔Tommy' AND class_id = 20
);

-- Row 1390: 曹盛屿Cosmo @ 小锦鲤37班
UPDATE v2.students
SET phone = '18985045160',
    primary_guardian_type = '妈妈',
    parent_name = '林丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曹盛屿Cosmo'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曹盛屿Cosmo', 20, '18985045160', '妈妈', '林丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曹盛屿Cosmo' AND class_id = 20
);

-- Row 1391: 农曦尧Arthur @ 小锦鲤37班
UPDATE v2.students
SET phone = '18096017919',
    primary_guardian_type = '妈妈',
    parent_name = '汪红廷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '农曦尧Arthur'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '农曦尧Arthur', 20, '18096017919', '妈妈', '汪红廷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '农曦尧Arthur' AND class_id = 20
);

-- Row 1392: 王战Tyler @ 小锦鲤37班
UPDATE v2.students
SET phone = '18651907571',
    primary_guardian_type = '妈妈',
    parent_name = '曾玉婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王战Tyler'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王战Tyler', 20, '18651907571', '妈妈', '曾玉婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王战Tyler' AND class_id = 20
);

-- Row 1393: 何晋东Henry @ 小锦鲤37班
UPDATE v2.students
SET phone = '15285587151',
    primary_guardian_type = '妈妈',
    parent_name = '曾子奚',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '何晋东Henry'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何晋东Henry', 20, '15285587151', '妈妈', '曾子奚', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何晋东Henry' AND class_id = 20
);

-- Row 1394: 黄清雅Candy @ 小锦鲤37班
UPDATE v2.students
SET phone = '18798773541',
    primary_guardian_type = '妈妈',
    parent_name = '林静娴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄清雅Candy'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄清雅Candy', 20, '18798773541', '妈妈', '林静娴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄清雅Candy' AND class_id = 20
);

-- Row 1395: 刘枢妍Serena @ 小锦鲤37班
UPDATE v2.students
SET phone = '17385871035',
    primary_guardian_type = '妈妈',
    parent_name = '刘浪沙',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘枢妍Serena'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘枢妍Serena', 20, '17385871035', '妈妈', '刘浪沙', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘枢妍Serena' AND class_id = 20
);

-- Row 1396: 唐伊诺Zoe @ 小锦鲤37班
UPDATE v2.students
SET phone = '18164883713',
    primary_guardian_type = '爸爸',
    parent_name = '唐诚',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '唐伊诺Zoe'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐伊诺Zoe', 20, '18164883713', '爸爸', '唐诚', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐伊诺Zoe' AND class_id = 20
);

-- Row 1411: 余舒窈 Lucy @ 凤凰51班
UPDATE v2.students
SET phone = '18209821818',
    primary_guardian_type = '妈妈',
    parent_name = '魏万宇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '余舒窈 Lucy'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余舒窈 Lucy', 66, '18209821818', '妈妈', '魏万宇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余舒窈 Lucy' AND class_id = 66
);

-- Row 1412: 张奕麟 Lion @ 凤凰51班
UPDATE v2.students
SET phone = '13984350355',
    primary_guardian_type = '妈妈',
    parent_name = '张斌',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张奕麟 Lion'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张奕麟 Lion', 66, '13984350355', '妈妈', '张斌', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张奕麟 Lion' AND class_id = 66
);

-- Row 1413: 赵乾博 Oliver Z @ 凤凰51班
UPDATE v2.students
SET phone = '19885672687',
    primary_guardian_type = '妈妈',
    parent_name = '杨艳君',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵乾博 Oliver Z'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵乾博 Oliver Z', 66, '19885672687', '妈妈', '杨艳君', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵乾博 Oliver Z' AND class_id = 66
);

-- Row 1414: 王昊珺博 Owen @ 凤凰51班
UPDATE v2.students
SET phone = '18302626696',
    primary_guardian_type = '妈妈',
    parent_name = '世馨',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王昊珺博 Owen'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王昊珺博 Owen', 66, '18302626696', '妈妈', '世馨', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王昊珺博 Owen' AND class_id = 66
);

-- Row 1415: 张家栋 Eric @ 凤凰51班
UPDATE v2.students
SET phone = '15180853555',
    primary_guardian_type = '妈妈',
    parent_name = '龚雪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张家栋 Eric'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张家栋 Eric', 66, '15180853555', '妈妈', '龚雪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张家栋 Eric' AND class_id = 66
);

-- Row 1416: 杨季凡 Given @ 凤凰51班
UPDATE v2.students
SET phone = '13007808971',
    primary_guardian_type = '妈妈',
    parent_name = '杨哲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨季凡 Given'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨季凡 Given', 66, '13007808971', '妈妈', '杨哲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨季凡 Given' AND class_id = 66
);

-- Row 1417: 王显恒 Andy @ 凤凰51班
UPDATE v2.students
SET phone = '18785047248',
    primary_guardian_type = '妈妈',
    parent_name = '郑运菊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王显恒 Andy'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王显恒 Andy', 66, '18785047248', '妈妈', '郑运菊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王显恒 Andy' AND class_id = 66
);

-- Row 1418: 刘政儒 Marco @ 凤凰51班
UPDATE v2.students
SET phone = '13984382811',
    primary_guardian_type = '妈妈',
    parent_name = '胡玉飞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘政儒 Marco'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘政儒 Marco', 66, '13984382811', '妈妈', '胡玉飞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘政儒 Marco' AND class_id = 66
);

-- Row 1419: 佘昊恩 Drew @ 凤凰51班
UPDATE v2.students
SET phone = '13809420305',
    primary_guardian_type = '妈妈',
    parent_name = '朱艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '佘昊恩 Drew'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '佘昊恩 Drew', 66, '13809420305', '妈妈', '朱艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '佘昊恩 Drew' AND class_id = 66
);

-- Row 1420: 彭嘉锐 Selena @ 凤凰51班
UPDATE v2.students
SET phone = '18585415809',
    primary_guardian_type = '妈妈',
    parent_name = '赵燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '彭嘉锐 Selena'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '彭嘉锐 Selena', 66, '18585415809', '妈妈', '赵燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '彭嘉锐 Selena' AND class_id = 66
);

-- Row 1421: 马晟桐 Nick @ 凤凰51班
UPDATE v2.students
SET phone = '18685472090',
    primary_guardian_type = '妈妈',
    parent_name = '田恬',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '马晟桐 Nick'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马晟桐 Nick', 66, '18685472090', '妈妈', '田恬', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马晟桐 Nick' AND class_id = 66
);

-- Row 1422: 刘艺涵 Grace @ 凤凰51班
UPDATE v2.students
SET phone = '18722723912',
    primary_guardian_type = '妈妈',
    parent_name = '周芬',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘艺涵 Grace'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘艺涵 Grace', 66, '18722723912', '妈妈', '周芬', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘艺涵 Grace' AND class_id = 66
);

-- Row 1423: 刘芯语 Kaia @ 凤凰51班
UPDATE v2.students
SET phone = '18908517561',
    primary_guardian_type = '妈妈',
    parent_name = '徐莉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘芯语 Kaia'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘芯语 Kaia', 66, '18908517561', '妈妈', '徐莉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘芯语 Kaia' AND class_id = 66
);

-- Row 1424: 邵柯源 Ray @ 凤凰51班
UPDATE v2.students
SET phone = '17784166527',
    primary_guardian_type = '妈妈',
    parent_name = '范钰苹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邵柯源 Ray'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邵柯源 Ray', 66, '17784166527', '妈妈', '范钰苹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邵柯源 Ray' AND class_id = 66
);

-- Row 1425: 唐绍轩 Tyler @ 凤凰51班
UPDATE v2.students
SET phone = '18908501313',
    primary_guardian_type = '妈妈',
    parent_name = '郑名明',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '唐绍轩 Tyler'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐绍轩 Tyler', 66, '18908501313', '妈妈', '郑名明', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐绍轩 Tyler' AND class_id = 66
);

-- Row 1426: 黄筠雅 Angel @ 凤凰51班
UPDATE v2.students
SET phone = '18685168801',
    primary_guardian_type = '妈妈',
    parent_name = '叶玟彤',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄筠雅 Angel'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄筠雅 Angel', 66, '18685168801', '妈妈', '叶玟彤', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄筠雅 Angel' AND class_id = 66
);

-- Row 1427: 来千淇 Alice @ 凤凰51班
UPDATE v2.students
SET phone = '15185061081',
    primary_guardian_type = '妈妈',
    parent_name = '李海丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '来千淇 Alice'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '来千淇 Alice', 66, '15185061081', '妈妈', '李海丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '来千淇 Alice' AND class_id = 66
);

-- Row 1428: 陈予瑶 Amy C @ 凤凰51班
UPDATE v2.students
SET phone = '13984189934',
    primary_guardian_type = '妈妈',
    parent_name = '姚阳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈予瑶 Amy C'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈予瑶 Amy C', 66, '13984189934', '妈妈', '姚阳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈予瑶 Amy C' AND class_id = 66
);

-- Row 1429: 陈奕阳 Oliver C @ 凤凰51班
UPDATE v2.students
SET phone = '13885134295',
    primary_guardian_type = '妈妈',
    parent_name = '陈洁',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈奕阳 Oliver C'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈奕阳 Oliver C', 66, '13885134295', '妈妈', '陈洁', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈奕阳 Oliver C' AND class_id = 66
);

-- Row 1430: 何欣雨 Amy H @ 凤凰51班
UPDATE v2.students
SET phone = '18690746845',
    primary_guardian_type = '妈妈',
    parent_name = '肖敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '何欣雨 Amy H'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何欣雨 Amy H', 66, '18690746845', '妈妈', '肖敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何欣雨 Amy H' AND class_id = 66
);

-- Row 1431: 何欣怡 Andrea @ 凤凰51班
UPDATE v2.students
SET phone = '18690746845',
    primary_guardian_type = '妈妈',
    parent_name = '肖敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '何欣怡 Andrea'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '何欣怡 Andrea', 66, '18690746845', '妈妈', '肖敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '何欣怡 Andrea' AND class_id = 66
);

-- Row 1432: 葛维娜 Verna @ 凤凰51班
UPDATE v2.students
SET phone = '18096095938',
    primary_guardian_type = '妈妈',
    parent_name = '陈利',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '葛维娜 Verna'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '葛维娜 Verna', 66, '18096095938', '妈妈', '陈利', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '葛维娜 Verna' AND class_id = 66
);

-- Row 1433: 简铭禹 Lucas @ 凤凰51班
UPDATE v2.students
SET phone = '18885226882',
    primary_guardian_type = '妈妈',
    parent_name = '陈迪迪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '简铭禹 Lucas'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '简铭禹 Lucas', 66, '18885226882', '妈妈', '陈迪迪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '简铭禹 Lucas' AND class_id = 66
);

-- Row 1434: 曾令源晨 Leo @ 凤凰51班
UPDATE v2.students
SET phone = '13608514842',
    primary_guardian_type = '妈妈',
    parent_name = '王萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾令源晨 Leo'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾令源晨 Leo', 66, '13608514842', '妈妈', '王萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾令源晨 Leo' AND class_id = 66
);

-- Row 1435: 曾宇城 God @ 凤凰51班
UPDATE v2.students
SET phone = '15985158315',
    primary_guardian_type = '妈妈',
    parent_name = '李冬莲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾宇城 God'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾宇城 God', 66, '15985158315', '妈妈', '李冬莲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾宇城 God' AND class_id = 66
);

-- Row 1436: 曾家耀 Aire @ 凤凰51班
UPDATE v2.students
SET phone = '18984535196',
    primary_guardian_type = '妈妈',
    parent_name = '李飘',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾家耀 Aire'
  AND class_id = 66;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾家耀 Aire', 66, '18984535196', '妈妈', '李飘', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾家耀 Aire' AND class_id = 66
);

-- Row 1437: Dream 侯晨钧 @ 凤凰47班
UPDATE v2.students
SET phone = '15285141943',
    primary_guardian_type = '妈妈',
    parent_name = '张婷婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Dream 侯晨钧'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Dream 侯晨钧', 62, '15285141943', '妈妈', '张婷婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Dream 侯晨钧' AND class_id = 62
);

-- Row 1438: Simba 杜轲致远 @ 凤凰47班
UPDATE v2.students
SET phone = '13985577068',
    primary_guardian_type = '妈妈',
    parent_name = '张万霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Simba 杜轲致远'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Simba 杜轲致远', 62, '13985577068', '妈妈', '张万霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Simba 杜轲致远' AND class_id = 62
);

-- Row 1439: Vivi 杨雅薇 @ 凤凰47班
UPDATE v2.students
SET phone = '18184116049',
    primary_guardian_type = '妈妈',
    parent_name = '耿忠梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Vivi 杨雅薇'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Vivi 杨雅薇', 62, '18184116049', '妈妈', '耿忠梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Vivi 杨雅薇' AND class_id = 62
);

-- Row 1440: Tom 龙泳丞 @ 凤凰47班
UPDATE v2.students
SET phone = '18285031158',
    primary_guardian_type = '妈妈',
    parent_name = '吴德会',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Tom 龙泳丞'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Tom 龙泳丞', 62, '18285031158', '妈妈', '吴德会', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Tom 龙泳丞' AND class_id = 62
);

-- Row 1441: Lucas C 陈子睿 @ 凤凰47班
UPDATE v2.students
SET phone = '15685056517',
    primary_guardian_type = '妈妈',
    parent_name = '彭莹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Lucas C 陈子睿'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Lucas C 陈子睿', 62, '15685056517', '妈妈', '彭莹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Lucas C 陈子睿' AND class_id = 62
);

-- Row 1442: Lucas Z 曾子恒 @ 凤凰47班
UPDATE v2.students
SET phone = '18286192510',
    primary_guardian_type = '妈妈',
    parent_name = '张慧媛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Lucas Z 曾子恒'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Lucas Z 曾子恒', 62, '18286192510', '妈妈', '张慧媛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Lucas Z 曾子恒' AND class_id = 62
);

-- Row 1443: Solomon 林子一 @ 凤凰47班
UPDATE v2.students
SET phone = '13885056033',
    primary_guardian_type = '爸爸',
    parent_name = '林志康',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Solomon 林子一'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Solomon 林子一', 62, '13885056033', '爸爸', '林志康', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Solomon 林子一' AND class_id = 62
);

-- Row 1444: York 王奕诺 @ 凤凰47班
UPDATE v2.students
SET phone = '13639126955',
    primary_guardian_type = '妈妈',
    parent_name = '倪芸',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'York 王奕诺'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'York 王奕诺', 62, '13639126955', '妈妈', '倪芸', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'York 王奕诺' AND class_id = 62
);

-- Row 1445: Harry 熊浩铭 @ 凤凰47班
UPDATE v2.students
SET phone = '18198519892',
    primary_guardian_type = '妈妈',
    parent_name = '陈晓娇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Harry 熊浩铭'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Harry 熊浩铭', 62, '18198519892', '妈妈', '陈晓娇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Harry 熊浩铭' AND class_id = 62
);

-- Row 1446: Janis 余子泉 @ 凤凰47班
UPDATE v2.students
SET phone = '13885018543',
    primary_guardian_type = '妈妈',
    parent_name = '屈婉超',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Janis 余子泉'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Janis 余子泉', 62, '13885018543', '妈妈', '屈婉超', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Janis 余子泉' AND class_id = 62
);

-- Row 1447: Henry 曹善森 @ 凤凰47班
UPDATE v2.students
SET phone = '15685895995',
    primary_guardian_type = '妈妈',
    parent_name = '肖畅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Henry 曹善森'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Henry 曹善森', 62, '15685895995', '妈妈', '肖畅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Henry 曹善森' AND class_id = 62
);

-- Row 1448: Johnny 胡榆昊 @ 凤凰47班
UPDATE v2.students
SET phone = '18608508666',
    primary_guardian_type = '妈妈',
    parent_name = '段雪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Johnny 胡榆昊'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Johnny 胡榆昊', 62, '18608508666', '妈妈', '段雪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Johnny 胡榆昊' AND class_id = 62
);

-- Row 1449: Leo 陈君扬 @ 凤凰47班
UPDATE v2.students
SET phone = '18586895531',
    primary_guardian_type = '妈妈',
    parent_name = '周鑫辽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Leo 陈君扬'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Leo 陈君扬', 62, '18586895531', '妈妈', '周鑫辽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Leo 陈君扬' AND class_id = 62
);

-- Row 1450: Jack 张自捷 @ 凤凰47班
UPDATE v2.students
SET phone = '18627229989',
    primary_guardian_type = '妈妈',
    parent_name = '杨寒晴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jack 张自捷'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jack 张自捷', 62, '18627229989', '妈妈', '杨寒晴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jack 张自捷' AND class_id = 62
);

-- Row 1451: Jason 许廷锴 @ 凤凰47班
UPDATE v2.students
SET phone = '15185017791',
    primary_guardian_type = '妈妈',
    parent_name = '苏婧鸿',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jason 许廷锴'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jason 许廷锴', 62, '15185017791', '妈妈', '苏婧鸿', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jason 许廷锴' AND class_id = 62
);

-- Row 1452: Ian 黎奕阳 @ 凤凰47班
UPDATE v2.students
SET phone = '18188507069',
    primary_guardian_type = '妈妈',
    parent_name = '程妍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ian 黎奕阳'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ian 黎奕阳', 62, '18188507069', '妈妈', '程妍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ian 黎奕阳' AND class_id = 62
);

-- Row 1453: Felix 张牧谦 @ 凤凰47班
UPDATE v2.students
SET phone = '13639076171',
    primary_guardian_type = '妈妈',
    parent_name = '黄金',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Felix 张牧谦'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Felix 张牧谦', 62, '13639076171', '妈妈', '黄金', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Felix 张牧谦' AND class_id = 62
);

-- Row 1454: Hanson 崔正汉 @ 凤凰47班
UPDATE v2.students
SET phone = '19522823331',
    primary_guardian_type = '妈妈',
    parent_name = '李立文',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Hanson 崔正汉'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Hanson 崔正汉', 62, '19522823331', '妈妈', '李立文', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Hanson 崔正汉' AND class_id = 62
);

-- Row 1455: Ella 韦雅文 @ 凤凰47班
UPDATE v2.students
SET phone = '18685577085',
    primary_guardian_type = '妈妈',
    parent_name = '杨通桅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ella 韦雅文'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ella 韦雅文', 62, '18685577085', '妈妈', '杨通桅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ella 韦雅文' AND class_id = 62
);

-- Row 1456: Ethan 龙训灏 @ 凤凰47班
UPDATE v2.students
SET phone = '15085921726',
    primary_guardian_type = '妈妈',
    parent_name = '代娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ethan 龙训灏'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ethan 龙训灏', 62, '15085921726', '妈妈', '代娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ethan 龙训灏' AND class_id = 62
);

-- Row 1457: Cody 李欣哲 @ 凤凰47班
UPDATE v2.students
SET phone = '15185050610',
    primary_guardian_type = '妈妈',
    parent_name = '刘利玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Cody 李欣哲'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Cody 李欣哲', 62, '15185050610', '妈妈', '刘利玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Cody 李欣哲' AND class_id = 62
);

-- Row 1458: Ellie 陈奕杉 @ 凤凰47班
UPDATE v2.students
SET phone = '13984832105',
    primary_guardian_type = '妈妈',
    parent_name = '赵佳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ellie 陈奕杉'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ellie 陈奕杉', 62, '13984832105', '妈妈', '赵佳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ellie 陈奕杉' AND class_id = 62
);

-- Row 1459: Derek 杜尹彦珩 @ 凤凰47班
UPDATE v2.students
SET phone = '13765093949',
    primary_guardian_type = '妈妈',
    parent_name = '尹倩',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Derek 杜尹彦珩'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Derek 杜尹彦珩', 62, '13765093949', '妈妈', '尹倩', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Derek 杜尹彦珩' AND class_id = 62
);

-- Row 1460: Claire 严馨悦 @ 凤凰47班
UPDATE v2.students
SET phone = '15285501443',
    primary_guardian_type = '妈妈',
    parent_name = '张云',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Claire 严馨悦'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Claire 严馨悦', 62, '15285501443', '妈妈', '张云', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Claire 严馨悦' AND class_id = 62
);

-- Row 1461: Amy 李沛铃 @ 凤凰47班
UPDATE v2.students
SET phone = '13885090968',
    primary_guardian_type = '妈妈',
    parent_name = '孔维峥',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Amy 李沛铃'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Amy 李沛铃', 62, '13885090968', '妈妈', '孔维峥', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Amy 李沛铃' AND class_id = 62
);

-- Row 1462: Able 杨长龙 @ 凤凰47班
UPDATE v2.students
SET phone = '18785182867',
    primary_guardian_type = '妈妈',
    parent_name = '张燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Able 杨长龙'
  AND class_id = 62;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Able 杨长龙', 62, '18785182867', '妈妈', '张燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Able 杨长龙' AND class_id = 62
);

-- Row 1463: 赵雪君 Ella @ 凤凰36班
UPDATE v2.students
SET phone = '13985589879',
    primary_guardian_type = '妈妈',
    parent_name = '代丽萍',
    school = '花溪第二小学保利校区',
    address = '花溪碧桂园印象花溪',
    id_card = '520111201805036041',
    updated_at = NOW()
WHERE name = '赵雪君 Ella'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵雪君 Ella', 51, '13985589879', '妈妈', '代丽萍', '花溪第二小学保利校区', '花溪碧桂园印象花溪', '520111201805036041', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵雪君 Ella' AND class_id = 51
);

-- Row 1464: 周羽潼 Beryl @ 凤凰36班
UPDATE v2.students
SET phone = '18932003570',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '观十中',
    address = '恒大中央公园',
    id_card = '520102201612103424',
    updated_at = NOW()
WHERE name = '周羽潼 Beryl'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周羽潼 Beryl', 51, '18932003570', '妈妈', NULL, '观十中', '恒大中央公园', '520102201612103424', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周羽潼 Beryl' AND class_id = 51
);

-- Row 1465: 张煜祺 Mango @ 凤凰36班
UPDATE v2.students
SET phone = '18685390917',
    primary_guardian_type = '妈妈',
    parent_name = '韦秋萌',
    school = '实验小学',
    address = '云岩区百花山路金狮小区',
    id_card = '520103201805034871',
    updated_at = NOW()
WHERE name = '张煜祺 Mango'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张煜祺 Mango', 51, '18685390917', '妈妈', '韦秋萌', '实验小学', '云岩区百花山路金狮小区', '520103201805034871', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张煜祺 Mango' AND class_id = 51
);

-- Row 1466: 王奕邱程 Chris @ 凤凰36班
UPDATE v2.students
SET phone = '13984337677',
    primary_guardian_type = '妈妈',
    parent_name = '邱竹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王奕邱程 Chris'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王奕邱程 Chris', 51, '13984337677', '妈妈', '邱竹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王奕邱程 Chris' AND class_id = 51
);

-- Row 1467: 杨子萱Ella @ 凤凰36班
UPDATE v2.students
SET phone = '13984106402',
    primary_guardian_type = '妈妈',
    parent_name = '陈芳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨子萱Ella'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨子萱Ella', 51, '13984106402', '妈妈', '陈芳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨子萱Ella' AND class_id = 51
);

-- Row 1468: 张运舟 Tyler @ 凤凰36班
UPDATE v2.students
SET phone = '15285649141',
    primary_guardian_type = '爸爸',
    parent_name = '张超',
    school = '甲秀小学',
    address = '南明区保利凤凰湾',
    id_card = '520102201804303818',
    updated_at = NOW()
WHERE name = '张运舟 Tyler'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张运舟 Tyler', 51, '15285649141', '爸爸', '张超', '甲秀小学', '南明区保利凤凰湾', '520102201804303818', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张运舟 Tyler' AND class_id = 51
);

-- Row 1469: 龙诗晗 Tina @ 凤凰36班
UPDATE v2.students
SET phone = '15185109917',
    primary_guardian_type = '妈妈',
    parent_name = '徐荣',
    school = '花溪实验3小',
    address = '花溪区',
    id_card = '520114201704070426',
    updated_at = NOW()
WHERE name = '龙诗晗 Tina'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '龙诗晗 Tina', 51, '15185109917', '妈妈', '徐荣', '花溪实验3小', '花溪区', '520114201704070426', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '龙诗晗 Tina' AND class_id = 51
);

-- Row 1470: 颜荣泽 Zachary @ 凤凰36班
UPDATE v2.students
SET phone = '18275357455',
    primary_guardian_type = '妈妈',
    parent_name = '龙琴',
    school = '花三小',
    address = '花果园J区',
    id_card = '520102201804095035',
    updated_at = NOW()
WHERE name = '颜荣泽 Zachary'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '颜荣泽 Zachary', 51, '18275357455', '妈妈', '龙琴', '花三小', '花果园J区', '520102201804095035', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '颜荣泽 Zachary' AND class_id = 51
);

-- Row 1471: 宋恕诚 Squirrel @ 凤凰36班
UPDATE v2.students
SET phone = '13595112750',
    primary_guardian_type = '妈妈',
    parent_name = '罗绮云',
    school = '贵阳实验小学',
    address = '观山湖区华润国际',
    id_card = '520103201805228027',
    updated_at = NOW()
WHERE name = '宋恕诚 Squirrel'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋恕诚 Squirrel', 51, '13595112750', '妈妈', '罗绮云', '贵阳实验小学', '观山湖区华润国际', '520103201805228027', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋恕诚 Squirrel' AND class_id = 51
);

-- Row 1472: 王艺憬 Angel @ 凤凰36班
UPDATE v2.students
SET phone = '13595116035',
    primary_guardian_type = '爸爸',
    parent_name = '王焜',
    school = '广大实验幼儿园',
    address = '贵阳清真市金清大道广大上城',
    id_card = '520102201810164623',
    updated_at = NOW()
WHERE name = '王艺憬 Angel'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王艺憬 Angel', 51, '13595116035', '爸爸', '王焜', '广大实验幼儿园', '贵阳清真市金清大道广大上城', '520102201810164623', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王艺憬 Angel' AND class_id = 51
);

-- Row 1473: 武梦心瑶 Yoyo @ 凤凰36班
UPDATE v2.students
SET phone = '18985189191',
    primary_guardian_type = '妈妈',
    parent_name = '游佳',
    school = '东山小学',
    address = '云岩区龙砚东山小区',
    id_card = '520103201702258426',
    updated_at = NOW()
WHERE name = '武梦心瑶 Yoyo'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '武梦心瑶 Yoyo', 51, '18985189191', '妈妈', '游佳', '东山小学', '云岩区龙砚东山小区', '520103201702258426', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '武梦心瑶 Yoyo' AND class_id = 51
);

-- Row 1474: 唐梓桐 Grape @ 凤凰36班
UPDATE v2.students
SET phone = '13985505517',
    primary_guardian_type = '妈妈',
    parent_name = '成永会',
    school = '实验二小',
    address = '云岩区盐务街中天宅吉大厦',
    id_card = '520103201612126729',
    updated_at = NOW()
WHERE name = '唐梓桐 Grape'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐梓桐 Grape', 51, '13985505517', '妈妈', '成永会', '实验二小', '云岩区盐务街中天宅吉大厦', '520103201612126729', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐梓桐 Grape' AND class_id = 51
);

-- Row 1475: 余梦琪 Renee @ 凤凰36班
UPDATE v2.students
SET phone = '13985408828',
    primary_guardian_type = '妈妈',
    parent_name = '朱江兰',
    school = '甲秀小学',
    address = '未来方舟E4组团',
    id_card = '520103201702048103',
    updated_at = NOW()
WHERE name = '余梦琪 Renee'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余梦琪 Renee', 51, '13985408828', '妈妈', '朱江兰', '甲秀小学', '未来方舟E4组团', '520103201702048103', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余梦琪 Renee' AND class_id = 51
);

-- Row 1476: 罗祖钧睿 Owen @ 凤凰36班
UPDATE v2.students
SET phone = '15180852030',
    primary_guardian_type = '妈妈',
    parent_name = '章清',
    school = '省府路小学',
    address = '云岩区贝地卢加诺',
    id_card = '520114201807300415',
    updated_at = NOW()
WHERE name = '罗祖钧睿 Owen'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗祖钧睿 Owen', 51, '15180852030', '妈妈', '章清', '省府路小学', '云岩区贝地卢加诺', '520114201807300415', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗祖钧睿 Owen' AND class_id = 51
);

-- Row 1477: 罗语萱 Grace @ 凤凰36班
UPDATE v2.students
SET phone = '15180852030',
    primary_guardian_type = '妈妈',
    parent_name = '章清',
    school = '省府路小学',
    address = '云岩区贝地卢加诺',
    id_card = '520114201701040440',
    updated_at = NOW()
WHERE name = '罗语萱 Grace'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗语萱 Grace', 51, '15180852030', '妈妈', '章清', '省府路小学', '云岩区贝地卢加诺', '520114201701040440', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗语萱 Grace' AND class_id = 51
);

-- Row 1478: 王一甯 Allen @ 凤凰36班
UPDATE v2.students
SET phone = '18685167872',
    primary_guardian_type = '妈妈',
    parent_name = '邵何庆庆',
    school = '花果园第二小学',
    address = '花果园一期',
    id_card = '520102201803075032',
    updated_at = NOW()
WHERE name = '王一甯 Allen'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王一甯 Allen', 51, '18685167872', '妈妈', '邵何庆庆', '花果园第二小学', '花果园一期', '520102201803075032', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王一甯 Allen' AND class_id = 51
);

-- Row 1479: 袁月希 Minnie @ 凤凰36班
UPDATE v2.students
SET phone = '18685156136',
    primary_guardian_type = '妈妈',
    parent_name = '昌舒',
    school = '省幼',
    address = NULL,
    id_card = '520115201808144245',
    updated_at = NOW()
WHERE name = '袁月希 Minnie'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁月希 Minnie', 51, '18685156136', '妈妈', '昌舒', '省幼', NULL, '520115201808144245', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁月希 Minnie' AND class_id = 51
);

-- Row 1480: 杜聿函Oren @ 凤凰36班
UPDATE v2.students
SET phone = '13985131288',
    primary_guardian_type = '妈妈',
    parent_name = '胡珊珊',
    school = '贵阳市金顶山幼儿园',
    address = '智慧龙城',
    id_card = '520102201810195032',
    updated_at = NOW()
WHERE name = '杜聿函Oren'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜聿函Oren', 51, '13985131288', '妈妈', '胡珊珊', '贵阳市金顶山幼儿园', '智慧龙城', '520102201810195032', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜聿函Oren' AND class_id = 51
);

-- Row 1481: 曾心媛 Lucy @ 凤凰36班
UPDATE v2.students
SET phone = '18338397707',
    primary_guardian_type = '妈妈',
    parent_name = '马星',
    school = '省府路小学',
    address = '云岩区恒大帝景',
    id_card = '520103201703189426',
    updated_at = NOW()
WHERE name = '曾心媛 Lucy'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾心媛 Lucy', 51, '18338397707', '妈妈', '马星', '省府路小学', '云岩区恒大帝景', '520103201703189426', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾心媛 Lucy' AND class_id = 51
);

-- Row 1482: 曾子彤 Rita @ 凤凰36班
UPDATE v2.students
SET phone = '15764354703',
    primary_guardian_type = '妈妈',
    parent_name = '朱章青',
    school = '云岩一小',
    address = '金狮小区顺海苑',
    id_card = '520103201706054869',
    updated_at = NOW()
WHERE name = '曾子彤 Rita'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾子彤 Rita', 51, '15764354703', '妈妈', '朱章青', '云岩一小', '金狮小区顺海苑', '520103201706054869', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾子彤 Rita' AND class_id = 51
);

-- Row 1483: 刘承谦 Leo @ 凤凰36班
UPDATE v2.students
SET phone = '15885506845',
    primary_guardian_type = '妈妈',
    parent_name = '张诗旋',
    school = '中天北京小学',
    address = '中天帝景传说B栋601',
    id_card = '520115201711031210',
    updated_at = NOW()
WHERE name = '刘承谦 Leo'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘承谦 Leo', 51, '15885506845', '妈妈', '张诗旋', '中天北京小学', '中天帝景传说B栋601', '520115201711031210', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘承谦 Leo' AND class_id = 51
);

-- Row 1484: 黄雨辰 Joy @ 凤凰36班
UPDATE v2.students
SET phone = '18984899278',
    primary_guardian_type = '妈妈',
    parent_name = '邹梅林',
    school = '花溪二小',
    address = '花溪保利溪湖',
    id_card = '431322201610310548',
    updated_at = NOW()
WHERE name = '黄雨辰 Joy'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄雨辰 Joy', 51, '18984899278', '妈妈', '邹梅林', '花溪二小', '花溪保利溪湖', '431322201610310548', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄雨辰 Joy' AND class_id = 51
);

-- Row 1485: 郭瑄怡 Yvonne @ 凤凰36班
UPDATE v2.students
SET phone = '13007885797',
    primary_guardian_type = '妈妈',
    parent_name = '龙梦琦',
    school = '观山湖第43幼儿园',
    address = '观山湖华润悦府',
    id_card = '520115201810181222',
    updated_at = NOW()
WHERE name = '郭瑄怡 Yvonne'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭瑄怡 Yvonne', 51, '13007885797', '妈妈', '龙梦琦', '观山湖第43幼儿园', '观山湖华润悦府', '520115201810181222', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭瑄怡 Yvonne' AND class_id = 51
);

-- Row 1486: 刘若霆 Max @ 凤凰36班
UPDATE v2.students
SET phone = '18786750905',
    primary_guardian_type = '妈妈',
    parent_name = '周曼玲',
    school = '世纪城小学',
    address = '世纪城龙宇苑',
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘若霆 Max'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘若霆 Max', 51, '18786750905', '妈妈', '周曼玲', '世纪城小学', '世纪城龙宇苑', NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘若霆 Max' AND class_id = 51
);

-- Row 1487: 梁祁嘉 Aaron @ 凤凰36班
UPDATE v2.students
SET phone = '15285912117',
    primary_guardian_type = '妈妈',
    parent_name = '徐婧怡',
    school = '师大幼儿园',
    address = '百灵尚品1号',
    id_card = '520102201809281216',
    updated_at = NOW()
WHERE name = '梁祁嘉 Aaron'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '梁祁嘉 Aaron', 51, '15285912117', '妈妈', '徐婧怡', '师大幼儿园', '百灵尚品1号', '520102201809281216', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '梁祁嘉 Aaron' AND class_id = 51
);

-- Row 1488: 梁若辰 Sage @ 凤凰36班
UPDATE v2.students
SET phone = '15285021109',
    primary_guardian_type = '妈妈',
    parent_name = '孙竹君',
    school = '实验二小',
    address = '云岩区观山东路天誉城',
    id_card = '520103201805064827',
    updated_at = NOW()
WHERE name = '梁若辰 Sage'
  AND class_id = 51;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '梁若辰 Sage', 51, '15285021109', '妈妈', '孙竹君', '实验二小', '云岩区观山东路天誉城', '520103201805064827', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '梁若辰 Sage' AND class_id = 51
);

-- Row 1489: 周颖宁 Mickey @ 凤凰41班
UPDATE v2.students
SET phone = '18685179822',
    primary_guardian_type = '妈妈',
    parent_name = '彭晓霁',
    school = '达德学校',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周颖宁 Mickey'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周颖宁 Mickey', 56, '18685179822', '妈妈', '彭晓霁', '达德学校', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周颖宁 Mickey' AND class_id = 56
);

-- Row 1490: 杨皓宇 Aaron @ 凤凰41班
UPDATE v2.students
SET phone = '15085928650',
    primary_guardian_type = '妈妈',
    parent_name = '罗耀意',
    school = '南明小学',
    address = '贵阳市南明区宝山南路179号',
    id_card = '520321201609140216',
    updated_at = NOW()
WHERE name = '杨皓宇 Aaron'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨皓宇 Aaron', 56, '15085928650', '妈妈', '罗耀意', '南明小学', '贵阳市南明区宝山南路179号', '520321201609140216', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨皓宇 Aaron' AND class_id = 56
);

-- Row 1491: 周一荣 Joy @ 凤凰41班
UPDATE v2.students
SET phone = '13809427640',
    primary_guardian_type = '妈妈',
    parent_name = '代小菊',
    school = '贵阳市实验小学',
    address = '贵阳市云岩区虎门巷',
    id_card = '520122197911273020',
    updated_at = NOW()
WHERE name = '周一荣 Joy'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周一荣 Joy', 56, '13809427640', '妈妈', '代小菊', '贵阳市实验小学', '贵阳市云岩区虎门巷', '520122197911273020', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周一荣 Joy' AND class_id = 56
);

-- Row 1492: 张邹恒 Hyman @ 凤凰41班
UPDATE v2.students
SET phone = '13984368366',
    primary_guardian_type = '妈妈',
    parent_name = '邹胜飞',
    school = '花溪一中',
    address = '花溪区印象花溪55栋',
    id_card = '520111201712265814',
    updated_at = NOW()
WHERE name = '张邹恒 Hyman'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张邹恒 Hyman', 56, '13984368366', '妈妈', '邹胜飞', '花溪一中', '花溪区印象花溪55栋', '520111201712265814', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张邹恒 Hyman' AND class_id = 56
);

-- Row 1493: 张博彦 Ryan @ 凤凰41班
UPDATE v2.students
SET phone = '18085137685',
    primary_guardian_type = '妈妈',
    parent_name = '邹丽',
    school = '白云21小',
    address = '白云建发',
    id_card = '520103201801225611',
    updated_at = NOW()
WHERE name = '张博彦 Ryan'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张博彦 Ryan', 56, '18085137685', '妈妈', '邹丽', '白云21小', '白云建发', '520103201801225611', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张博彦 Ryan' AND class_id = 56
);

-- Row 1494: 杨清竹 Amy @ 凤凰41班
UPDATE v2.students
SET phone = '13648506846',
    primary_guardian_type = '妈妈',
    parent_name = '陈光凤',
    school = '云岩四小',
    address = '半山小镇W2区3栋',
    id_card = '522731201707116144',
    updated_at = NOW()
WHERE name = '杨清竹 Amy'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨清竹 Amy', 56, '13648506846', '妈妈', '陈光凤', '云岩四小', '半山小镇W2区3栋', '522731201707116144', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨清竹 Amy' AND class_id = 56
);

-- Row 1495: 许浩楠 Eric @ 凤凰41班
UPDATE v2.students
SET phone = '18785151151',
    primary_guardian_type = '妈妈',
    parent_name = '王叶佼',
    school = '乌当新龙学校',
    address = '新添寨',
    id_card = '520112201805183814',
    updated_at = NOW()
WHERE name = '许浩楠 Eric'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '许浩楠 Eric', 56, '18785151151', '妈妈', '王叶佼', '乌当新龙学校', '新添寨', '520112201805183814', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '许浩楠 Eric' AND class_id = 56
);

-- Row 1496: 殷润桐 Felix @ 凤凰41班
UPDATE v2.students
SET phone = '13603606285',
    primary_guardian_type = '妈妈',
    parent_name = '王静',
    school = '贵阳一中星辰学校',
    address = '龙湖景粦',
    id_card = '210123201710111013',
    updated_at = NOW()
WHERE name = '殷润桐 Felix'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '殷润桐 Felix', 56, '13603606285', '妈妈', '王静', '贵阳一中星辰学校', '龙湖景粦', '210123201710111013', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '殷润桐 Felix' AND class_id = 56
);

-- Row 1497: 吴沐宸 Mia @ 凤凰41班
UPDATE v2.students
SET phone = '13007867587',
    primary_guardian_type = '妈妈',
    parent_name = '邓蔓',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴沐宸 Mia'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴沐宸 Mia', 56, '13007867587', '妈妈', '邓蔓', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴沐宸 Mia' AND class_id = 56
);

-- Row 1498: 孙筱雨 Esther @ 凤凰41班
UPDATE v2.students
SET phone = '15185036653',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '南明实验幼儿园',
    address = '南明区蟠桃宫宝山南路',
    id_card = '520102201904057028',
    updated_at = NOW()
WHERE name = '孙筱雨 Esther'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙筱雨 Esther', 56, '15185036653', '妈妈', NULL, '南明实验幼儿园', '南明区蟠桃宫宝山南路', '520102201904057028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙筱雨 Esther' AND class_id = 56
);

-- Row 1499: 齐雨汐 Betty @ 凤凰41班
UPDATE v2.students
SET phone = '13765373145',
    primary_guardian_type = '妈妈',
    parent_name = '齐锋毅',
    school = '北师大附小',
    address = '观山湖金华园',
    id_card = '520402201610010028',
    updated_at = NOW()
WHERE name = '齐雨汐 Betty'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '齐雨汐 Betty', 56, '13765373145', '妈妈', '齐锋毅', '北师大附小', '观山湖金华园', '520402201610010028', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '齐雨汐 Betty' AND class_id = 56
);

-- Row 1500: 马芷涵 Pattie @ 凤凰41班
UPDATE v2.students
SET phone = '15761697960',
    primary_guardian_type = '妈妈',
    parent_name = '杨燕',
    school = '贵阳市实验小学',
    address = '贵阳市云岩区甲秀北路8号',
    id_card = '520103201710088228',
    updated_at = NOW()
WHERE name = '马芷涵 Pattie'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马芷涵 Pattie', 56, '15761697960', '妈妈', '杨燕', '贵阳市实验小学', '贵阳市云岩区甲秀北路8号', '520103201710088228', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马芷涵 Pattie' AND class_id = 56
);

-- Row 1501: 唐穆辰 Pugs @ 凤凰41班
UPDATE v2.students
SET phone = '13984368686',
    primary_guardian_type = '妈妈',
    parent_name = '陈韫冰',
    school = '北京第二实验小学贵阳分校',
    address = '贵阳市南明区太慈桥国际城',
    id_card = '520103201806011639',
    updated_at = NOW()
WHERE name = '唐穆辰 Pugs'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐穆辰 Pugs', 56, '13984368686', '妈妈', '陈韫冰', '北京第二实验小学贵阳分校', '贵阳市南明区太慈桥国际城', '520103201806011639', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐穆辰 Pugs' AND class_id = 56
);

-- Row 1502: 李越鹏 Money @ 凤凰41班
UPDATE v2.students
SET phone = '13984842520',
    primary_guardian_type = '妈妈',
    parent_name = '陈晓玲',
    school = '省府路小学',
    address = '华官新苑1403',
    id_card = '520103201709301239',
    updated_at = NOW()
WHERE name = '李越鹏 Money'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李越鹏 Money', 56, '13984842520', '妈妈', '陈晓玲', '省府路小学', '华官新苑1403', '520103201709301239', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李越鹏 Money' AND class_id = 56
);

-- Row 1503: 邱思博 Jacob @ 凤凰41班
UPDATE v2.students
SET phone = '13885051701',
    primary_guardian_type = '妈妈',
    parent_name = '尹莉',
    school = '观山湖外国语实验小学',
    address = '恒大金阳新世界珑玥',
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邱思博 Jacob'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邱思博 Jacob', 56, '13885051701', '妈妈', '尹莉', '观山湖外国语实验小学', '恒大金阳新世界珑玥', NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邱思博 Jacob' AND class_id = 56
);

-- Row 1504: 潘衍谕 Remy @ 凤凰41班
UPDATE v2.students
SET phone = '18798776610',
    primary_guardian_type = '妈妈',
    parent_name = '柳睿迪',
    school = '贵阳一中星辰学校',
    address = '贵阳市花溪区龙湖景A6-2-2504',
    id_card = '520102201808052710',
    updated_at = NOW()
WHERE name = '潘衍谕 Remy'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '潘衍谕 Remy', 56, '18798776610', '妈妈', '柳睿迪', '贵阳一中星辰学校', '贵阳市花溪区龙湖景A6-2-2504', '520102201808052710', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '潘衍谕 Remy' AND class_id = 56
);

-- Row 1505: 孙煜凯 Kai @ 凤凰41班
UPDATE v2.students
SET phone = '13985003999',
    primary_guardian_type = '妈妈',
    parent_name = '李成育',
    school = '南明小学',
    address = '南明区宝山南路香榭丽舍E栋404',
    id_card = '520102201804251210',
    updated_at = NOW()
WHERE name = '孙煜凯 Kai'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孙煜凯 Kai', 56, '13985003999', '妈妈', '李成育', '南明小学', '南明区宝山南路香榭丽舍E栋404', '520102201804251210', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孙煜凯 Kai' AND class_id = 56
);

-- Row 1506: 李业兴 Edison @ 凤凰41班
UPDATE v2.students
SET phone = '18153110449',
    primary_guardian_type = '妈妈',
    parent_name = '杨珍',
    school = '实验二小',
    address = '贵阳市天誉城',
    id_card = '520103201705064854',
    updated_at = NOW()
WHERE name = '李业兴 Edison'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李业兴 Edison', 56, '18153110449', '妈妈', '杨珍', '实验二小', '贵阳市天誉城', '520103201705064854', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李业兴 Edison' AND class_id = 56
);

-- Row 1507: 安玥潾 Fiona @ 凤凰41班
UPDATE v2.students
SET phone = '18798434423',
    primary_guardian_type = '妈妈',
    parent_name = '贺知霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '安玥潾 Fiona'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '安玥潾 Fiona', 56, '18798434423', '妈妈', '贺知霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '安玥潾 Fiona' AND class_id = 56
);

-- Row 1508: 李延熙 Luna @ 凤凰41班
UPDATE v2.students
SET phone = '13595033351',
    primary_guardian_type = '妈妈',
    parent_name = '杨茜',
    school = '甲秀小学',
    address = '世纪南山',
    id_card = '520103201704284863',
    updated_at = NOW()
WHERE name = '李延熙 Luna'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李延熙 Luna', 56, '13595033351', '妈妈', '杨茜', '甲秀小学', '世纪南山', '520103201704284863', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李延熙 Luna' AND class_id = 56
);

-- Row 1509: 丁子淋 Amber @ 凤凰41班
UPDATE v2.students
SET phone = '13048521605',
    primary_guardian_type = '妈妈',
    parent_name = '潘运',
    school = '贵阳市第二实验小学',
    address = '万科玲珑湾',
    id_card = '520103201701054843',
    updated_at = NOW()
WHERE name = '丁子淋 Amber'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '丁子淋 Amber', 56, '13048521605', '妈妈', '潘运', '贵阳市第二实验小学', '万科玲珑湾', '520103201701054843', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '丁子淋 Amber' AND class_id = 56
);

-- Row 1510: 李熙瑞 Jeremy @ 凤凰41班
UPDATE v2.students
SET phone = '15285150270',
    primary_guardian_type = '妈妈',
    parent_name = '吴成',
    school = '观山湖区二十幼',
    address = '贵阳市云岩区万科新都荟18组团12栋',
    id_card = '520102201812292418',
    updated_at = NOW()
WHERE name = '李熙瑞 Jeremy'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李熙瑞 Jeremy', 56, '15285150270', '妈妈', '吴成', '观山湖区二十幼', '贵阳市云岩区万科新都荟18组团12栋', '520102201812292418', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李熙瑞 Jeremy' AND class_id = 56
);

-- Row 1511: 刘晞龄Nico @ 凤凰41班
UPDATE v2.students
SET phone = '15085956203',
    primary_guardian_type = '妈妈',
    parent_name = '周婷',
    school = '观山湖外国语实验小学',
    address = '观山湖区碧桂园西南上城博士府',
    id_card = '52012320171107582X',
    updated_at = NOW()
WHERE name = '刘晞龄Nico'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘晞龄Nico', 56, '15085956203', '妈妈', '周婷', '观山湖外国语实验小学', '观山湖区碧桂园西南上城博士府', '52012320171107582X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘晞龄Nico' AND class_id = 56
);

-- Row 1512: 刘纯熙 Emma @ 凤凰41班
UPDATE v2.students
SET phone = '18084479358',
    primary_guardian_type = '妈妈',
    parent_name = '徐丽飞',
    school = '贵定一小',
    address = '贵定一小',
    id_card = '522723201807061128',
    updated_at = NOW()
WHERE name = '刘纯熙 Emma'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘纯熙 Emma', 56, '18084479358', '妈妈', '徐丽飞', '贵定一小', '贵定一小', '522723201807061128', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘纯熙 Emma' AND class_id = 56
);

-- Row 1513: 陈梓玥 Candy @ 凤凰41班
UPDATE v2.students
SET phone = '15985138811',
    primary_guardian_type = '妈妈',
    parent_name = '周婷',
    school = '贵阳市花溪小学',
    address = '贵阳市花溪区溪北街道吉麟社区',
    id_card = '520111201703155429',
    updated_at = NOW()
WHERE name = '陈梓玥 Candy'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈梓玥 Candy', 56, '15985138811', '妈妈', '周婷', '贵阳市花溪小学', '贵阳市花溪区溪北街道吉麟社区', '520111201703155429', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈梓玥 Candy' AND class_id = 56
);

-- Row 1514: 崔惜墨 Jofia @ 凤凰41班
UPDATE v2.students
SET phone = '13438142542',
    primary_guardian_type = '妈妈',
    parent_name = '钱清',
    school = '南明小学',
    address = '宝山南路中天星园',
    id_card = '520111201801316247',
    updated_at = NOW()
WHERE name = '崔惜墨 Jofia'
  AND class_id = 56;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '崔惜墨 Jofia', 56, '13438142542', '妈妈', '钱清', '南明小学', '宝山南路中天星园', '520111201801316247', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '崔惜墨 Jofia' AND class_id = 56
);

-- Row 1515: 张晨曦 Bryce @ 凤凰40班
UPDATE v2.students
SET phone = '18768688688',
    primary_guardian_type = '妈妈',
    parent_name = '张弦',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张晨曦 Bryce'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张晨曦 Bryce', 55, '18768688688', '妈妈', '张弦', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张晨曦 Bryce' AND class_id = 55
);

-- Row 1516: 郑欣羽 Zephyra @ 凤凰40班
UPDATE v2.students
SET phone = '15285959662',
    primary_guardian_type = '妈妈',
    parent_name = '申静',
    school = '新东门小学',
    address = '贵阳市云岩区普陀路',
    id_card = '520103201704284425',
    updated_at = NOW()
WHERE name = '郑欣羽 Zephyra'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郑欣羽 Zephyra', 55, '15285959662', '妈妈', '申静', '新东门小学', '贵阳市云岩区普陀路', '520103201704284425', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郑欣羽 Zephyra' AND class_id = 55
);

-- Row 1517: 周泠汐 Molly @ 凤凰40班
UPDATE v2.students
SET phone = '18984118663',
    primary_guardian_type = '妈妈',
    parent_name = '陈莉',
    school = '省府路小学',
    address = '师大书香门第',
    id_card = '520102201803111224',
    updated_at = NOW()
WHERE name = '周泠汐 Molly'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周泠汐 Molly', 55, '18984118663', '妈妈', '陈莉', '省府路小学', '师大书香门第', '520102201803111224', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周泠汐 Molly' AND class_id = 55
);

-- Row 1518: 尹赵蓁 Ivy @ 凤凰40班
UPDATE v2.students
SET phone = '18694063980',
    primary_guardian_type = '妈妈',
    parent_name = '赵贤芳',
    school = '观山湖区第八中学',
    address = '观山湖区云著9栋',
    id_card = '520103201611298844',
    updated_at = NOW()
WHERE name = '尹赵蓁 Ivy'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '尹赵蓁 Ivy', 55, '18694063980', '妈妈', '赵贤芳', '观山湖区第八中学', '观山湖区云著9栋', '520103201611298844', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '尹赵蓁 Ivy' AND class_id = 55
);

-- Row 1519: 喻鼎然 Andy @ 凤凰40班
UPDATE v2.students
SET phone = '18085139155',
    primary_guardian_type = '妈妈',
    parent_name = '谢燕燕',
    school = '贵阳市第一实验小学',
    address = '贵阳市文昌北路君子巷52号',
    id_card = '520103201803190416',
    updated_at = NOW()
WHERE name = '喻鼎然 Andy'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '喻鼎然 Andy', 55, '18085139155', '妈妈', '谢燕燕', '贵阳市第一实验小学', '贵阳市文昌北路君子巷52号', '520103201803190416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '喻鼎然 Andy' AND class_id = 55
);

-- Row 1520: 袁子淇 Kitty @ 凤凰40班
UPDATE v2.students
SET phone = '18786082659',
    primary_guardian_type = '妈妈',
    parent_name = '张会',
    school = '实验二小',
    address = '贵阳市云岩区宅吉小区吉祥巷18号',
    id_card = '520103201807035245',
    updated_at = NOW()
WHERE name = '袁子淇 Kitty'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '袁子淇 Kitty', 55, '18786082659', '妈妈', '张会', '实验二小', '贵阳市云岩区宅吉小区吉祥巷18号', '520103201807035245', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '袁子淇 Kitty' AND class_id = 55
);

-- Row 1521: 周芷玲 Mia @ 凤凰40班
UPDATE v2.students
SET phone = '13985127766',
    primary_guardian_type = '妈妈',
    parent_name = '杨玲',
    school = '华麟学校',
    address = '中天世纪新城',
    id_card = '520103201803108012',
    updated_at = NOW()
WHERE name = '周芷玲 Mia'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周芷玲 Mia', 55, '13985127766', '妈妈', '杨玲', '华麟学校', '中天世纪新城', '520103201803108012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周芷玲 Mia' AND class_id = 55
);

-- Row 1522: 吴庆源Jerry @ 凤凰40班
UPDATE v2.students
SET phone = '13511930493',
    primary_guardian_type = '妈妈',
    parent_name = '汤泽姣',
    school = '北京市朝阳区实验小学贵阳分校',
    address = '南明区花溪大道保利凤凰湾',
    id_card = '520102201706203813',
    updated_at = NOW()
WHERE name = '吴庆源Jerry'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴庆源Jerry', 55, '13511930493', '妈妈', '汤泽姣', '北京市朝阳区实验小学贵阳分校', '南明区花溪大道保利凤凰湾', '520102201706203813', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴庆源Jerry' AND class_id = 55
);

-- Row 1523: 许皓轩 Luke @ 凤凰40班
UPDATE v2.students
SET phone = '15285000718',
    primary_guardian_type = '妈妈',
    parent_name = '杨秋萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '许皓轩 Luke'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '许皓轩 Luke', 55, '15285000718', '妈妈', '杨秋萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '许皓轩 Luke' AND class_id = 55
);

-- Row 1524: 陶书鸿 Theo @ 凤凰40班
UPDATE v2.students
SET phone = '13985117343',
    primary_guardian_type = '妈妈',
    parent_name = '郭俊',
    school = '贵阳市实验小学',
    address = '中大国际B2-25-2',
    id_card = '520103201609304897',
    updated_at = NOW()
WHERE name = '陶书鸿 Theo'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陶书鸿 Theo', 55, '13985117343', '妈妈', '郭俊', '贵阳市实验小学', '中大国际B2-25-2', '520103201609304897', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陶书鸿 Theo' AND class_id = 55
);

-- Row 1525: 任子晴 Halena @ 凤凰40班
UPDATE v2.students
SET phone = '18984118451',
    primary_guardian_type = '妈妈',
    parent_name = '岑川',
    school = '甲秀小学',
    address = '贵阳市云岩区保利凤凰湾',
    id_card = '520103201609300423',
    updated_at = NOW()
WHERE name = '任子晴 Halena'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '任子晴 Halena', 55, '18984118451', '妈妈', '岑川', '甲秀小学', '贵阳市云岩区保利凤凰湾', '520103201609300423', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '任子晴 Halena' AND class_id = 55
);

-- Row 1526: 杨庚洋 Winnie @ 凤凰40班
UPDATE v2.students
SET phone = '15085936637',
    primary_guardian_type = '妈妈',
    parent_name = '姚培',
    school = '贵阳市实验小学保利云山分校',
    address = '贵阳市云岩区市北路148号保利云山国际11栋',
    id_card = '520103201806294835',
    updated_at = NOW()
WHERE name = '杨庚洋 Winnie'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨庚洋 Winnie', 55, '15085936637', '妈妈', '姚培', '贵阳市实验小学保利云山分校', '贵阳市云岩区市北路148号保利云山国际11栋', '520103201806294835', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨庚洋 Winnie' AND class_id = 55
);

-- Row 1527: 唐榆凯 Kai @ 凤凰40班
UPDATE v2.students
SET phone = '13595019315',
    primary_guardian_type = '妈妈',
    parent_name = '尹方',
    school = '贵阳市实验小学',
    address = '观山湖区美的林城时代',
    id_card = '520103201612279119',
    updated_at = NOW()
WHERE name = '唐榆凯 Kai'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '唐榆凯 Kai', 55, '13595019315', '妈妈', '尹方', '贵阳市实验小学', '观山湖区美的林城时代', '520103201612279119', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '唐榆凯 Kai' AND class_id = 55
);

-- Row 1528: 莫馨予Candice @ 凤凰40班
UPDATE v2.students
SET phone = '13511911096',
    primary_guardian_type = '妈妈',
    parent_name = '谢俊',
    school = '贵阳市中心实验幼儿园',
    address = '保利明玥半山11#601',
    id_card = '520102201902074027',
    updated_at = NOW()
WHERE name = '莫馨予Candice'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '莫馨予Candice', 55, '13511911096', '妈妈', '谢俊', '贵阳市中心实验幼儿园', '保利明玥半山11#601', '520102201902074027', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '莫馨予Candice' AND class_id = 55
);

-- Row 1529: 李梓墨 Seven @ 凤凰40班
UPDATE v2.students
SET phone = '18083603539',
    primary_guardian_type = '妈妈',
    parent_name = '李馨',
    school = '观山湖培文学校',
    address = '小河黔江路江南苑',
    id_card = '52010320171225121X',
    updated_at = NOW()
WHERE name = '李梓墨 Seven'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李梓墨 Seven', 55, '18083603539', '妈妈', '李馨', '观山湖培文学校', '小河黔江路江南苑', '52010320171225121X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李梓墨 Seven' AND class_id = 55
);

-- Row 1530: 刘婉婷 Esme @ 凤凰40班
UPDATE v2.students
SET phone = '18608515449',
    primary_guardian_type = '妈妈',
    parent_name = '王格',
    school = '贵阳市实验小学',
    address = '贵阳市观山湖区观府壹号二组团5栋',
    id_card = '520113201809291025',
    updated_at = NOW()
WHERE name = '刘婉婷 Esme'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘婉婷 Esme', 55, '18608515449', '妈妈', '王格', '贵阳市实验小学', '贵阳市观山湖区观府壹号二组团5栋', '520113201809291025', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘婉婷 Esme' AND class_id = 55
);

-- Row 1531: 尹赵曦 Eva @ 凤凰40班
UPDATE v2.students
SET phone = '18694063980',
    primary_guardian_type = '妈妈',
    parent_name = '赵贤芳',
    school = '观山湖区第八中学',
    address = '观山湖区云著9栋',
    id_card = '520103201802238828',
    updated_at = NOW()
WHERE name = '尹赵曦 Eva'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '尹赵曦 Eva', 55, '18694063980', '妈妈', '赵贤芳', '观山湖区第八中学', '观山湖区云著9栋', '520103201802238828', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '尹赵曦 Eva' AND class_id = 55
);

-- Row 1532: 刘妙萱 Lucy @ 凤凰40班
UPDATE v2.students
SET phone = '13551021684',
    primary_guardian_type = '妈妈',
    parent_name = '邓佳',
    school = '贵州师范大学贵安新区附属小学',
    address = '花溪区印象花溪35栋',
    id_card = '520115201710010045',
    updated_at = NOW()
WHERE name = '刘妙萱 Lucy'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘妙萱 Lucy', 55, '13551021684', '妈妈', '邓佳', '贵州师范大学贵安新区附属小学', '花溪区印象花溪35栋', '520115201710010045', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘妙萱 Lucy' AND class_id = 55
);

-- Row 1533: 刘响 Felix @ 凤凰40班
UPDATE v2.students
SET phone = '18286055223',
    primary_guardian_type = '妈妈',
    parent_name = '吴建蓉',
    school = '达德学校',
    address = '贵阳市南明区护国路132号明秀宫',
    id_card = '520102201610261250',
    updated_at = NOW()
WHERE name = '刘响 Felix'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘响 Felix', 55, '18286055223', '妈妈', '吴建蓉', '达德学校', '贵阳市南明区护国路132号明秀宫', '520102201610261250', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘响 Felix' AND class_id = 55
);

-- Row 1534: 肖菱妤 Ariel @ 凤凰40班
UPDATE v2.students
SET phone = '18585066117',
    primary_guardian_type = '妈妈',
    parent_name = '李燕妮',
    school = '华麟',
    address = '山水黔城',
    id_card = '520102201609282046',
    updated_at = NOW()
WHERE name = '肖菱妤 Ariel'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '肖菱妤 Ariel', 55, '18585066117', '妈妈', '李燕妮', '华麟', '山水黔城', '520102201609282046', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '肖菱妤 Ariel' AND class_id = 55
);

-- Row 1535: 李定轩 Darren @ 凤凰40班
UPDATE v2.students
SET phone = '13668500786',
    primary_guardian_type = '妈妈',
    parent_name = '彭心彤',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李定轩 Darren'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李定轩 Darren', 55, '13668500786', '妈妈', '彭心彤', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李定轩 Darren' AND class_id = 55
);

-- Row 1536: 蒋佩昕 Elsa @ 凤凰40班
UPDATE v2.students
SET phone = '17608507777',
    primary_guardian_type = '妈妈',
    parent_name = '佟吉丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋佩昕 Elsa'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋佩昕 Elsa', 55, '17608507777', '妈妈', '佟吉丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋佩昕 Elsa' AND class_id = 55
);

-- Row 1537: 孔芷君 Diana @ 凤凰40班
UPDATE v2.students
SET phone = '18984598971',
    primary_guardian_type = '妈妈',
    parent_name = '孔海',
    school = '云岩一小',
    address = '云岩区大营路',
    id_card = '520103201704165223',
    updated_at = NOW()
WHERE name = '孔芷君 Diana'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '孔芷君 Diana', 55, '18984598971', '妈妈', '孔海', '云岩一小', '云岩区大营路', '520103201704165223', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '孔芷君 Diana' AND class_id = 55
);

-- Row 1538: 胡霖浛 Miki @ 凤凰40班
UPDATE v2.students
SET phone = '18685173607',
    primary_guardian_type = '妈妈',
    parent_name = '晋晓卿',
    school = '师大幼儿园',
    address = '九华路中央公园27-12',
    id_card = '520103201809160429',
    updated_at = NOW()
WHERE name = '胡霖浛 Miki'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡霖浛 Miki', 55, '18685173607', '妈妈', '晋晓卿', '师大幼儿园', '九华路中央公园27-12', '520103201809160429', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡霖浛 Miki' AND class_id = 55
);

-- Row 1539: 鞠维则 Raymond @ 凤凰40班
UPDATE v2.students
SET phone = '13765147402',
    primary_guardian_type = '妈妈',
    parent_name = '冉晓',
    school = '贵阳市省府路小学',
    address = '贵阳市云岩区北京路吾悦广场',
    id_card = '520103201711012815',
    updated_at = NOW()
WHERE name = '鞠维则 Raymond'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '鞠维则 Raymond', 55, '13765147402', '妈妈', '冉晓', '贵阳市省府路小学', '贵阳市云岩区北京路吾悦广场', '520103201711012815', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '鞠维则 Raymond' AND class_id = 55
);

-- Row 1540: 郭沐辰 Lucas @ 凤凰40班
UPDATE v2.students
SET phone = '17385489913',
    primary_guardian_type = '妈妈',
    parent_name = '朱媚平',
    school = '贵州师范大学附属小学',
    address = '花溪大学城贵州财经大学',
    id_card = '520181201803162617',
    updated_at = NOW()
WHERE name = '郭沐辰 Lucas'
  AND class_id = 55;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭沐辰 Lucas', 55, '17385489913', '妈妈', '朱媚平', '贵州师范大学附属小学', '花溪大学城贵州财经大学', '520181201803162617', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭沐辰 Lucas' AND class_id = 55
);

-- Row 1541: 赵梓勋Victor @ 凤凰48班
UPDATE v2.students
SET phone = '18768768998',
    primary_guardian_type = '妈妈',
    parent_name = '张嘉玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵梓勋Victor'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵梓勋Victor', 63, '18768768998', '妈妈', '张嘉玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵梓勋Victor' AND class_id = 63
);

-- Row 1542: 朱泽妤Candy Z @ 凤凰48班
UPDATE v2.students
SET phone = '15286003231',
    primary_guardian_type = '妈妈',
    parent_name = '简利',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '朱泽妤Candy Z'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱泽妤Candy Z', 63, '15286003231', '妈妈', '简利', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱泽妤Candy Z' AND class_id = 63
);

-- Row 1543: 周文泽Wenzle @ 凤凰48班
UPDATE v2.students
SET phone = '13595004244',
    primary_guardian_type = '妈妈',
    parent_name = '尤艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周文泽Wenzle'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周文泽Wenzle', 63, '13595004244', '妈妈', '尤艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周文泽Wenzle' AND class_id = 63
);

-- Row 1544: 徐书凡Doni @ 凤凰48班
UPDATE v2.students
SET phone = '18885084002',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '徐书凡Doni'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐书凡Doni', 63, '18885084002', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐书凡Doni' AND class_id = 63
);

-- Row 1545: 邵铃轶Lynn @ 凤凰48班
UPDATE v2.students
SET phone = '17784166527',
    primary_guardian_type = '妈妈',
    parent_name = '范钰苹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邵铃轶Lynn'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邵铃轶Lynn', 63, '17784166527', '妈妈', '范钰苹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邵铃轶Lynn' AND class_id = 63
);

-- Row 1546: 伍紫依Amelia @ 凤凰48班
UPDATE v2.students
SET phone = '13765844512',
    primary_guardian_type = '妈妈',
    parent_name = '张禹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '伍紫依Amelia'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '伍紫依Amelia', 63, '13765844512', '妈妈', '张禹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '伍紫依Amelia' AND class_id = 63
);

-- Row 1547: 夏欣瑶Kaya @ 凤凰48班
UPDATE v2.students
SET phone = '13017479530',
    primary_guardian_type = '妈妈',
    parent_name = '何淑丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '夏欣瑶Kaya'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '夏欣瑶Kaya', 63, '13017479530', '妈妈', '何淑丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '夏欣瑶Kaya' AND class_id = 63
);

-- Row 1548: 宋明熙Aiden @ 凤凰48班
UPDATE v2.students
SET phone = '13639122256',
    primary_guardian_type = '妈妈',
    parent_name = '邓丽佳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '宋明熙Aiden'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '宋明熙Aiden', 63, '13639122256', '妈妈', '邓丽佳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '宋明熙Aiden' AND class_id = 63
);

-- Row 1549: 吴欣倪Shiny @ 凤凰48班
UPDATE v2.students
SET phone = '13608545736',
    primary_guardian_type = '妈妈',
    parent_name = '王艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴欣倪Shiny'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴欣倪Shiny', 63, '13608545736', '妈妈', '王艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴欣倪Shiny' AND class_id = 63
);

-- Row 1550: 王柏晔Bob @ 凤凰48班
UPDATE v2.students
SET phone = '13885166053',
    primary_guardian_type = '妈妈',
    parent_name = '张永碧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王柏晔Bob'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王柏晔Bob', 63, '13885166053', '妈妈', '张永碧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王柏晔Bob' AND class_id = 63
);

-- Row 1551: 吴青语Judy @ 凤凰48班
UPDATE v2.students
SET phone = '13984178772',
    primary_guardian_type = '妈妈',
    parent_name = '汤顺飞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴青语Judy'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴青语Judy', 63, '13984178772', '妈妈', '汤顺飞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴青语Judy' AND class_id = 63
);

-- Row 1552: 任善桢Shane @ 凤凰48班
UPDATE v2.students
SET phone = '18960700729',
    primary_guardian_type = '妈妈',
    parent_name = '林清兰',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '任善桢Shane'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '任善桢Shane', 63, '18960700729', '妈妈', '林清兰', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '任善桢Shane' AND class_id = 63
);

-- Row 1553: 刘河西Candy L @ 凤凰48班
UPDATE v2.students
SET phone = '18101218217',
    primary_guardian_type = '妈妈',
    parent_name = '王红云',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘河西Candy L'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘河西Candy L', 63, '18101218217', '妈妈', '王红云', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘河西Candy L' AND class_id = 63
);

-- Row 1554: 林昱伶Lynsey @ 凤凰48班
UPDATE v2.students
SET phone = '18685180594',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '林昱伶Lynsey'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林昱伶Lynsey', 63, '18685180594', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林昱伶Lynsey' AND class_id = 63
);

-- Row 1555: 马清朗Liam @ 凤凰48班
UPDATE v2.students
SET phone = '18586890853',
    primary_guardian_type = '妈妈',
    parent_name = '赵斯维',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '马清朗Liam'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '马清朗Liam', 63, '18586890853', '妈妈', '赵斯维', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '马清朗Liam' AND class_id = 63
);

-- Row 1556: 刘霏霖Serena @ 凤凰48班
UPDATE v2.students
SET phone = '15985008631',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘霏霖Serena'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘霏霖Serena', 63, '15985008631', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘霏霖Serena' AND class_id = 63
);

-- Row 1557: 罗浩瑄Luke @ 凤凰48班
UPDATE v2.students
SET phone = '18785096777',
    primary_guardian_type = '妈妈',
    parent_name = '袁颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗浩瑄Luke'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗浩瑄Luke', 63, '18785096777', '妈妈', '袁颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗浩瑄Luke' AND class_id = 63
);

-- Row 1558: 黄昱铭Sam @ 凤凰48班
UPDATE v2.students
SET phone = '13985484366',
    primary_guardian_type = '妈妈',
    parent_name = '陈娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄昱铭Sam'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄昱铭Sam', 63, '13985484366', '妈妈', '陈娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄昱铭Sam' AND class_id = 63
);

-- Row 1559: 罗佳泽Leo @ 凤凰48班
UPDATE v2.students
SET phone = '15800356963',
    primary_guardian_type = '妈妈',
    parent_name = '房雷真',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗佳泽Leo'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗佳泽Leo', 63, '15800356963', '妈妈', '房雷真', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗佳泽Leo' AND class_id = 63
);

-- Row 1560: 郭沛桢Nick @ 凤凰48班
UPDATE v2.students
SET phone = '15285608890',
    primary_guardian_type = '妈妈',
    parent_name = '李怡铮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '郭沛桢Nick'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郭沛桢Nick', 63, '15285608890', '妈妈', '李怡铮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郭沛桢Nick' AND class_id = 63
);

-- Row 1561: 邓景之Jojo @ 凤凰48班
UPDATE v2.students
SET phone = '18685156918',
    primary_guardian_type = '妈妈',
    parent_name = '邓娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邓景之Jojo'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邓景之Jojo', 63, '18685156918', '妈妈', '邓娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邓景之Jojo' AND class_id = 63
);

-- Row 1562: 董奕泽Dylan @ 凤凰48班
UPDATE v2.students
SET phone = '13595184987',
    primary_guardian_type = '妈妈',
    parent_name = '牟婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '董奕泽Dylan'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '董奕泽Dylan', 63, '13595184987', '妈妈', '牟婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '董奕泽Dylan' AND class_id = 63
);

-- Row 1563: 陈于诗睿Amy @ 凤凰48班
UPDATE v2.students
SET phone = '15885010007',
    primary_guardian_type = '妈妈',
    parent_name = '于峥嵘',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈于诗睿Amy'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈于诗睿Amy', 63, '15885010007', '妈妈', '于峥嵘', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈于诗睿Amy' AND class_id = 63
);

-- Row 1564: 柴裕恒Cody @ 凤凰48班
UPDATE v2.students
SET phone = '13118591201',
    primary_guardian_type = '妈妈',
    parent_name = '丁敏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '柴裕恒Cody'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '柴裕恒Cody', 63, '13118591201', '妈妈', '丁敏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '柴裕恒Cody' AND class_id = 63
);

-- Row 1565: 安梓彤Lena @ 凤凰48班
UPDATE v2.students
SET phone = '17784919746',
    primary_guardian_type = '妈妈',
    parent_name = '陆红',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '安梓彤Lena'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '安梓彤Lena', 63, '17784919746', '妈妈', '陆红', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '安梓彤Lena' AND class_id = 63
);

-- Row 1566: 赵兹博文Eric @ 麒麟20班
UPDATE v2.students
SET phone = '18984552319',
    primary_guardian_type = '爸爸',
    parent_name = '赵祥全',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵兹博文Eric'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵兹博文Eric', 80, '18984552319', '爸爸', '赵祥全', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵兹博文Eric' AND class_id = 80
);

-- Row 1567: 赵佑铖Austin @ 麒麟20班
UPDATE v2.students
SET phone = '13885016824',
    primary_guardian_type = '妈妈',
    parent_name = '王语琪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵佑铖Austin'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵佑铖Austin', 80, '13885016824', '妈妈', '王语琪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵佑铖Austin' AND class_id = 80
);

-- Row 1568: 赵靖涵Echo @ 麒麟20班
UPDATE v2.students
SET phone = '18786635465',
    primary_guardian_type = '妈妈',
    parent_name = '常云',
    school = '普瑞国际学校',
    address = '世纪城',
    id_card = '520123201605063040',
    updated_at = NOW()
WHERE name = '赵靖涵Echo'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵靖涵Echo', 80, '18786635465', '妈妈', '常云', '普瑞国际学校', '世纪城', '520123201605063040', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵靖涵Echo' AND class_id = 80
);

-- Row 1569: 李筱玥 Agnes @ 麒麟20班
UPDATE v2.students
SET phone = '13985516677',
    primary_guardian_type = '妈妈',
    parent_name = '李兴能',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李筱玥 Agnes'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李筱玥 Agnes', 80, '13985516677', '妈妈', '李兴能', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李筱玥 Agnes' AND class_id = 80
);

-- Row 1570: 林妤姝Elimia @ 麒麟20班
UPDATE v2.students
SET phone = '13368699849',
    primary_guardian_type = '妈妈',
    parent_name = '曹檬',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '林妤姝Elimia'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林妤姝Elimia', 80, '13368699849', '妈妈', '曹檬', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林妤姝Elimia' AND class_id = 80
);

-- Row 1571: 张友成Jeff @ 麒麟20班
UPDATE v2.students
SET phone = '18985185825',
    primary_guardian_type = '妈妈',
    parent_name = '刘艳婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张友成Jeff'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张友成Jeff', 80, '18985185825', '妈妈', '刘艳婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张友成Jeff' AND class_id = 80
);

-- Row 1572: 陶志远Nathen @ 麒麟20班
UPDATE v2.students
SET phone = '15086327770',
    primary_guardian_type = '妈妈',
    parent_name = '陶侃',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陶志远Nathen'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陶志远Nathen', 80, '15086327770', '妈妈', '陶侃', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陶志远Nathen' AND class_id = 80
);

-- Row 1573: 王浩宸Allen @ 麒麟20班
UPDATE v2.students
SET phone = '19539297896',
    primary_guardian_type = '妈妈',
    parent_name = '谢丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王浩宸Allen'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王浩宸Allen', 80, '19539297896', '妈妈', '谢丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王浩宸Allen' AND class_id = 80
);

-- Row 1574: 熊睦岩Caspian @ 麒麟20班
UPDATE v2.students
SET phone = '13984800777',
    primary_guardian_type = '妈妈',
    parent_name = '熊妍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '熊睦岩Caspian'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '熊睦岩Caspian', 80, '13984800777', '妈妈', '熊妍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '熊睦岩Caspian' AND class_id = 80
);

-- Row 1575: 向弈成Felix X @ 麒麟20班
UPDATE v2.students
SET phone = '13595022677',
    primary_guardian_type = '妈妈',
    parent_name = '王维',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '向弈成Felix X'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '向弈成Felix X', 80, '13595022677', '妈妈', '王维', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '向弈成Felix X' AND class_id = 80
);

-- Row 1576: 苑子荣Enzo @ 麒麟20班
UPDATE v2.students
SET phone = '18685112314',
    primary_guardian_type = '妈妈',
    parent_name = '陈思颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '苑子荣Enzo'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '苑子荣Enzo', 80, '18685112314', '妈妈', '陈思颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '苑子荣Enzo' AND class_id = 80
);

-- Row 1577: 秦铭优Yoner @ 麒麟20班
UPDATE v2.students
SET phone = '13639004035',
    primary_guardian_type = '妈妈',
    parent_name = '张婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '秦铭优Yoner'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '秦铭优Yoner', 80, '13639004035', '妈妈', '张婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '秦铭优Yoner' AND class_id = 80
);

-- Row 1578: 许沛灵Linda @ 麒麟20班
UPDATE v2.students
SET phone = '18786091846',
    primary_guardian_type = '妈妈',
    parent_name = '黄小飞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '许沛灵Linda'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '许沛灵Linda', 80, '18786091846', '妈妈', '黄小飞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '许沛灵Linda' AND class_id = 80
);

-- Row 1579: 石峻熙Jim @ 麒麟20班
UPDATE v2.students
SET phone = '13984051805',
    primary_guardian_type = '妈妈',
    parent_name = '王晓霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '石峻熙Jim'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '石峻熙Jim', 80, '13984051805', '妈妈', '王晓霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '石峻熙Jim' AND class_id = 80
);

-- Row 1580: 杨淳亦Lilly @ 麒麟20班
UPDATE v2.students
SET phone = '18685883433',
    primary_guardian_type = '妈妈',
    parent_name = '杜盈萱',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨淳亦Lilly'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨淳亦Lilly', 80, '18685883433', '妈妈', '杜盈萱', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨淳亦Lilly' AND class_id = 80
);

-- Row 1581: 伍紫涵Olivia @ 麒麟20班
UPDATE v2.students
SET phone = '13765844512',
    primary_guardian_type = '妈妈',
    parent_name = '张禹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '伍紫涵Olivia'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '伍紫涵Olivia', 80, '13765844512', '妈妈', '张禹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '伍紫涵Olivia' AND class_id = 80
);

-- Row 1582: 刘心博Aire @ 麒麟20班
UPDATE v2.students
SET phone = '13765071803',
    primary_guardian_type = '妈妈',
    parent_name = '刘宝瑞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘心博Aire'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘心博Aire', 80, '13765071803', '妈妈', '刘宝瑞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘心博Aire' AND class_id = 80
);

-- Row 1583: 雷婧榆Lucy @ 麒麟20班
UPDATE v2.students
SET phone = '13158037881',
    primary_guardian_type = '妈妈',
    parent_name = '丁莉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '雷婧榆Lucy'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '雷婧榆Lucy', 80, '13158037881', '妈妈', '丁莉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '雷婧榆Lucy' AND class_id = 80
);

-- Row 1584: 侯翊婕Hailey @ 麒麟20班
UPDATE v2.students
SET phone = '13368691655',
    primary_guardian_type = '妈妈',
    parent_name = '美孟春',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '侯翊婕Hailey'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '侯翊婕Hailey', 80, '13368691655', '妈妈', '美孟春', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '侯翊婕Hailey' AND class_id = 80
);

-- Row 1585: 金纯熙Emma @ 麒麟20班
UPDATE v2.students
SET phone = '17785612852',
    primary_guardian_type = '妈妈',
    parent_name = '王雪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '金纯熙Emma'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '金纯熙Emma', 80, '17785612852', '妈妈', '王雪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '金纯熙Emma' AND class_id = 80
);

-- Row 1586: 白方圆Lucas @ 麒麟20班
UPDATE v2.students
SET phone = '18085018331',
    primary_guardian_type = '妈妈',
    parent_name = '李元元',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '白方圆Lucas'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '白方圆Lucas', 80, '18085018331', '妈妈', '李元元', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '白方圆Lucas' AND class_id = 80
);

-- Row 1587: 代思睿Ricky @ 麒麟20班
UPDATE v2.students
SET phone = '17385154931',
    primary_guardian_type = '妈妈',
    parent_name = '代思睿',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '代思睿Ricky'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '代思睿Ricky', 80, '17385154931', '妈妈', '代思睿', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '代思睿Ricky' AND class_id = 80
);

-- Row 1588: 李承益Felix L @ 麒麟20班
UPDATE v2.students
SET phone = '13037855676',
    primary_guardian_type = '妈妈',
    parent_name = '詹婷婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李承益Felix L'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李承益Felix L', 80, '13037855676', '妈妈', '詹婷婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李承益Felix L' AND class_id = 80
);

-- Row 1589: 兰舜羲Leo @ 麒麟20班
UPDATE v2.students
SET phone = '13809406747',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '苗苗实验学校',
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '兰舜羲Leo'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '兰舜羲Leo', 80, '13809406747', '妈妈', NULL, '苗苗实验学校', NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '兰舜羲Leo' AND class_id = 80
);

-- Row 1590: 黄乐宜Summer @ 麒麟20班
UPDATE v2.students
SET phone = '13595030916',
    primary_guardian_type = '妈妈',
    parent_name = '禹桧闵',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄乐宜Summer'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄乐宜Summer', 80, '13595030916', '妈妈', '禹桧闵', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄乐宜Summer' AND class_id = 80
);

-- Row 1591: Winnie邓婷尹 @ 凤凰52班
UPDATE v2.students
SET phone = '15885085641',
    primary_guardian_type = '妈妈',
    parent_name = '邓文生',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Winnie邓婷尹'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Winnie邓婷尹', 67, '15885085641', '妈妈', '邓文生', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Winnie邓婷尹' AND class_id = 67
);

-- Row 1592: Mia陈梓萌 @ 凤凰52班
UPDATE v2.students
SET phone = '18685190235',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Mia陈梓萌'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Mia陈梓萌', 67, '18685190235', NULL, NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Mia陈梓萌' AND class_id = 67
);

-- Row 1593: Luca张兴科 @ 凤凰52班
UPDATE v2.students
SET phone = '13595190093',
    primary_guardian_type = '妈妈',
    parent_name = '兰艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Luca张兴科'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Luca张兴科', 67, '13595190093', '妈妈', '兰艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Luca张兴科' AND class_id = 67
);

-- Row 1594: Kai姚天祺 @ 凤凰52班
UPDATE v2.students
SET phone = '13984044645',
    primary_guardian_type = '妈妈',
    parent_name = '姚楠',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Kai姚天祺'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Kai姚天祺', 67, '13984044645', '妈妈', '姚楠', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Kai姚天祺' AND class_id = 67
);

-- Row 1595: Judy孟奕彤 @ 凤凰52班
UPDATE v2.students
SET phone = '17384132768',
    primary_guardian_type = '妈妈',
    parent_name = '王斓',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Judy孟奕彤'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Judy孟奕彤', 67, '17384132768', '妈妈', '王斓', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Judy孟奕彤' AND class_id = 67
);

-- Row 1596: Talia曹诗签 @ 凤凰52班
UPDATE v2.students
SET phone = '13639080800',
    primary_guardian_type = '妈妈',
    parent_name = '雷欣欣',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Talia曹诗签'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Talia曹诗签', 67, '13639080800', '妈妈', '雷欣欣', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Talia曹诗签' AND class_id = 67
);

-- Row 1597: Kitty陈星蓓 @ 凤凰52班
UPDATE v2.students
SET phone = '13765173496',
    primary_guardian_type = '妈妈',
    parent_name = '陈志宇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Kitty陈星蓓'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Kitty陈星蓓', 67, '13765173496', '妈妈', '陈志宇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Kitty陈星蓓' AND class_id = 67
);

-- Row 1598: Shirly郝希悦 @ 凤凰52班
UPDATE v2.students
SET phone = '15885479747',
    primary_guardian_type = '妈妈',
    parent_name = '雷雪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Shirly郝希悦'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Shirly郝希悦', 67, '15885479747', '妈妈', '雷雪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Shirly郝希悦' AND class_id = 67
);

-- Row 1599: Nemo周凌谦 @ 凤凰52班
UPDATE v2.students
SET phone = '18685151429',
    primary_guardian_type = '妈妈',
    parent_name = '杨杰',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Nemo周凌谦'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Nemo周凌谦', 67, '18685151429', '妈妈', '杨杰', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Nemo周凌谦' AND class_id = 67
);

-- Row 1600: George周浚哲 @ 凤凰52班
UPDATE v2.students
SET phone = '15599113463',
    primary_guardian_type = '妈妈',
    parent_name = '詹红艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'George周浚哲'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'George周浚哲', 67, '15599113463', '妈妈', '詹红艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'George周浚哲' AND class_id = 67
);

-- Row 1601: Hilary龙怡彤 @ 凤凰52班
UPDATE v2.students
SET phone = '15285187655',
    primary_guardian_type = '妈妈',
    parent_name = '雷丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Hilary龙怡彤'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Hilary龙怡彤', 67, '15285187655', '妈妈', '雷丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Hilary龙怡彤' AND class_id = 67
);

-- Row 1602: Ivy左奕昕 @ 凤凰52班
UPDATE v2.students
SET phone = '15761618652',
    primary_guardian_type = '妈妈',
    parent_name = '左达江',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ivy左奕昕'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ivy左奕昕', 67, '15761618652', '妈妈', '左达江', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ivy左奕昕' AND class_id = 67
);

-- Row 1603: Dora周乐扬 @ 凤凰52班
UPDATE v2.students
SET phone = '15885506834',
    primary_guardian_type = '妈妈',
    parent_name = '杨露',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Dora周乐扬'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Dora周乐扬', 67, '15885506834', '妈妈', '杨露', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Dora周乐扬' AND class_id = 67
);

-- Row 1604: Ian汤瑞宁 @ 凤凰52班
UPDATE v2.students
SET phone = '13668506345',
    primary_guardian_type = '妈妈',
    parent_name = '王子嘉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Ian汤瑞宁'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Ian汤瑞宁', 67, '13668506345', '妈妈', '王子嘉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Ian汤瑞宁' AND class_id = 67
);

-- Row 1605: Jayden杨雄印 @ 凤凰52班
UPDATE v2.students
SET phone = '15285795333',
    primary_guardian_type = '妈妈',
    parent_name = '王丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jayden杨雄印'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jayden杨雄印', 67, '15285795333', '妈妈', '王丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jayden杨雄印' AND class_id = 67
);

-- Row 1606: Jovie范佳颖 @ 凤凰52班
UPDATE v2.students
SET phone = '13608583639',
    primary_guardian_type = '妈妈',
    parent_name = '范恩鑫',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Jovie范佳颖'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Jovie范佳颖', 67, '13608583639', '妈妈', '范恩鑫', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Jovie范佳颖' AND class_id = 67
);

-- Row 1607: Joey刘奕舟 @ 凤凰52班
UPDATE v2.students
SET phone = '13511884646',
    primary_guardian_type = '妈妈',
    parent_name = '刘洋',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Joey刘奕舟'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Joey刘奕舟', 67, '13511884646', '妈妈', '刘洋', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Joey刘奕舟' AND class_id = 67
);

-- Row 1608: Eason杨承烨 @ 凤凰52班
UPDATE v2.students
SET phone = '15599165577',
    primary_guardian_type = '妈妈',
    parent_name = '王娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Eason杨承烨'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Eason杨承烨', 67, '15599165577', '妈妈', '王娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Eason杨承烨' AND class_id = 67
);

-- Row 1609: Crystal黄芊语 @ 凤凰52班
UPDATE v2.students
SET phone = '15086043735',
    primary_guardian_type = '妈妈',
    parent_name = '唐玉叶',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Crystal黄芊语'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Crystal黄芊语', 67, '15086043735', '妈妈', '唐玉叶', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Crystal黄芊语' AND class_id = 67
);

-- Row 1610: Bill陈嘉树 @ 凤凰52班
UPDATE v2.students
SET phone = '15870120261',
    primary_guardian_type = '妈妈',
    parent_name = '覃媛',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Bill陈嘉树'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Bill陈嘉树', 67, '15870120261', '妈妈', '覃媛', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Bill陈嘉树' AND class_id = 67
);

-- Row 1611: Cici曾语思 @ 凤凰52班
UPDATE v2.students
SET phone = '15085930969',
    primary_guardian_type = '妈妈',
    parent_name = '饶丽娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Cici曾语思'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Cici曾语思', 67, '15085930969', '妈妈', '饶丽娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Cici曾语思' AND class_id = 67
);

-- Row 1612: Alden高德润 @ 凤凰52班
UPDATE v2.students
SET phone = '18586806716',
    primary_guardian_type = '爸爸',
    parent_name = '高明伟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Alden高德润'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Alden高德润', 67, '18586806716', '爸爸', '高明伟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Alden高德润' AND class_id = 67
);

-- Row 1613: Archer张皓天 @ 凤凰52班
UPDATE v2.students
SET phone = '13688509540',
    primary_guardian_type = '妈妈',
    parent_name = '周成美',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Archer张皓天'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Archer张皓天', 67, '13688509540', '妈妈', '周成美', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Archer张皓天' AND class_id = 67
);

-- Row 1614: Alan林彦锡 @ 凤凰52班
UPDATE v2.students
SET phone = '18785091507',
    primary_guardian_type = '妈妈',
    parent_name = '林伟明',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Alan林彦锡'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Alan林彦锡', 67, '18785091507', '妈妈', '林伟明', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Alan林彦锡' AND class_id = 67
);

-- Row 1615: Allen覃一宸 @ 凤凰52班
UPDATE v2.students
SET phone = '13765828386',
    primary_guardian_type = '妈妈',
    parent_name = '霍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Allen覃一宸'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Allen覃一宸', 67, '13765828386', '妈妈', '霍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Allen覃一宸' AND class_id = 67
);

-- Row 1616: Angela安金贤 @ 凤凰52班
UPDATE v2.students
SET phone = '13595071569',
    primary_guardian_type = '妈妈',
    parent_name = '金竺',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Angela安金贤'
  AND class_id = 67;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Angela安金贤', 67, '13595071569', '妈妈', '金竺', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Angela安金贤' AND class_id = 67
);

-- Row 1617: 许晋瑶Anna @ 大锦鲤39班
UPDATE v2.students
SET phone = '18786091846',
    primary_guardian_type = '妈妈',
    parent_name = '黄小飞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '许晋瑶Anna'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '许晋瑶Anna', 22, '18786091846', '妈妈', '黄小飞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '许晋瑶Anna' AND class_id = 22
);

-- Row 1618: 李嘉胤Owen @ 大锦鲤39班
UPDATE v2.students
SET phone = '18184565230',
    primary_guardian_type = '妈妈',
    parent_name = '冯婷婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李嘉胤Owen'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李嘉胤Owen', 22, '18184565230', '妈妈', '冯婷婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李嘉胤Owen' AND class_id = 22
);

-- Row 1619: 殷含章Lucas @ 大锦鲤39班
UPDATE v2.students
SET phone = '13314427888',
    primary_guardian_type = '妈妈',
    parent_name = '袁甜甜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '殷含章Lucas'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '殷含章Lucas', 22, '13314427888', '妈妈', '袁甜甜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '殷含章Lucas' AND class_id = 22
);

-- Row 1620: 谭隽宜Nicole @ 大锦鲤39班
UPDATE v2.students
SET phone = '15985141317',
    primary_guardian_type = '妈妈',
    parent_name = '谭璟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '谭隽宜Nicole'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '谭隽宜Nicole', 22, '15985141317', '妈妈', '谭璟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '谭隽宜Nicole' AND class_id = 22
);

-- Row 1621: 李墨衡Nemo @ 大锦鲤39班
UPDATE v2.students
SET phone = '18985506165',
    primary_guardian_type = '妈妈',
    parent_name = '王雅妮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李墨衡Nemo'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李墨衡Nemo', 22, '18985506165', '妈妈', '王雅妮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李墨衡Nemo' AND class_id = 22
);

-- Row 1622: 李尚昆Quill @ 大锦鲤39班
UPDATE v2.students
SET phone = '18785078815',
    primary_guardian_type = '妈妈',
    parent_name = '陈颋',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李尚昆Quill'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李尚昆Quill', 22, '18785078815', '妈妈', '陈颋', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李尚昆Quill' AND class_id = 22
);

-- Row 1623: 王映心Nina @ 大锦鲤39班
UPDATE v2.students
SET phone = '17784960554',
    primary_guardian_type = '妈妈',
    parent_name = '黄华丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王映心Nina'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王映心Nina', 22, '17784960554', '妈妈', '黄华丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王映心Nina' AND class_id = 22
);

-- Row 1624: 庄沐一Dora @ 大锦鲤39班
UPDATE v2.students
SET phone = '18985051761',
    primary_guardian_type = '妈妈',
    parent_name = '杨萌',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '庄沐一Dora'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '庄沐一Dora', 22, '18985051761', '妈妈', '杨萌', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '庄沐一Dora' AND class_id = 22
);

-- Row 1625: 廖阡余Lvy @ 大锦鲤39班
UPDATE v2.students
SET phone = '18085086266',
    primary_guardian_type = '妈妈',
    parent_name = '路喜凤',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '廖阡余Lvy'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '廖阡余Lvy', 22, '18085086266', '妈妈', '路喜凤', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '廖阡余Lvy' AND class_id = 22
);

-- Row 1626: 蒙星成Fox @ 大锦鲤39班
UPDATE v2.students
SET phone = '18285105850',
    primary_guardian_type = '妈妈',
    parent_name = '焦玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒙星成Fox'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒙星成Fox', 22, '18285105850', '妈妈', '焦玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒙星成Fox' AND class_id = 22
);

-- Row 1627: 叶紫玲Una @ 大锦鲤39班
UPDATE v2.students
SET phone = '18785092326',
    primary_guardian_type = '妈妈',
    parent_name = '叶毅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '叶紫玲Una'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '叶紫玲Una', 22, '18785092326', '妈妈', '叶毅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '叶紫玲Una' AND class_id = 22
);

-- Row 1628: 杜青藜Lily @ 大锦鲤39班
UPDATE v2.students
SET phone = '15285992010',
    primary_guardian_type = '妈妈',
    parent_name = '杜浩',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杜青藜Lily'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜青藜Lily', 22, '15285992010', '妈妈', '杜浩', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜青藜Lily' AND class_id = 22
);

-- Row 1629: 陈钟毓Mini @ 大锦鲤39班
UPDATE v2.students
SET phone = '18984551940',
    primary_guardian_type = '妈妈',
    parent_name = '钟小娟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈钟毓Mini'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈钟毓Mini', 22, '18984551940', '妈妈', '钟小娟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈钟毓Mini' AND class_id = 22
);

-- Row 1630: 杜易澄Bella @ 大锦鲤39班
UPDATE v2.students
SET phone = '18685883433',
    primary_guardian_type = '妈妈',
    parent_name = '杜盈萱',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杜易澄Bella'
  AND class_id = 22;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杜易澄Bella', 22, '18685883433', '妈妈', '杜盈萱', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杜易澄Bella' AND class_id = 22
);

-- Row 1631: Victor黄骁凡 @ 凤凰44班
UPDATE v2.students
SET phone = '18684116602',
    primary_guardian_type = '妈妈',
    parent_name = '刘宇婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = 'Victor黄骁凡'
  AND class_id = 59;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT 'Victor黄骁凡', 59, '18684116602', '妈妈', '刘宇婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = 'Victor黄骁凡' AND class_id = 59
);

-- Row 1632: 任鉴阳Lion @ 凤凰46班
UPDATE v2.students
SET phone = '18084350778',
    primary_guardian_type = '妈妈',
    parent_name = '何明艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '任鉴阳Lion'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '任鉴阳Lion', 61, '18084350778', '妈妈', '何明艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '任鉴阳Lion' AND class_id = 61
);

-- Row 1633: 项煜苏Sophie @ 凤凰46班
UPDATE v2.students
SET phone = '13511962279',
    primary_guardian_type = '妈妈',
    parent_name = '王筑梅',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '项煜苏Sophie'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '项煜苏Sophie', 61, '13511962279', '妈妈', '王筑梅', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '项煜苏Sophie' AND class_id = 61
);

-- Row 1634: 卢子萌Lucky @ 凤凰46班
UPDATE v2.students
SET phone = '15985123384',
    primary_guardian_type = '爸爸',
    parent_name = '卢永苇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '卢子萌Lucky'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '卢子萌Lucky', 61, '15985123384', '爸爸', '卢永苇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '卢子萌Lucky' AND class_id = 61
);

-- Row 1635: 吴欣凝Ella @ 凤凰46班
UPDATE v2.students
SET phone = '18785434683',
    primary_guardian_type = '妈妈',
    parent_name = '朱文丽',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴欣凝Ella'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴欣凝Ella', 61, '18785434683', '妈妈', '朱文丽', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴欣凝Ella' AND class_id = 61
);

-- Row 1636: 朱曼利Emily @ 凤凰46班
UPDATE v2.students
SET phone = '15285129295',
    primary_guardian_type = '妈妈',
    parent_name = '彭红利',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '朱曼利Emily'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '朱曼利Emily', 61, '15285129295', '妈妈', '彭红利', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '朱曼利Emily' AND class_id = 61
);

-- Row 1637: 叶旻珊Sandra @ 凤凰46班
UPDATE v2.students
SET phone = '13618580005',
    primary_guardian_type = '妈妈',
    parent_name = '邓虹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '叶旻珊Sandra'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '叶旻珊Sandra', 61, '13618580005', '妈妈', '邓虹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '叶旻珊Sandra' AND class_id = 61
);

-- Row 1638: 罗暮烟Dora @ 凤凰46班
UPDATE v2.students
SET phone = '15285150750',
    primary_guardian_type = '妈妈',
    parent_name = '罗雪娇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗暮烟Dora'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗暮烟Dora', 61, '15285150750', '妈妈', '罗雪娇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗暮烟Dora' AND class_id = 61
);

-- Row 1639: 周洛驸Rory @ 凤凰46班
UPDATE v2.students
SET phone = '18085152339',
    primary_guardian_type = '妈妈',
    parent_name = '吴琳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周洛驸Rory'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周洛驸Rory', 61, '18085152339', '妈妈', '吴琳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周洛驸Rory' AND class_id = 61
);

-- Row 1640: 罗睿灵Rainbow @ 凤凰46班
UPDATE v2.students
SET phone = '17785848847',
    primary_guardian_type = '妈妈',
    parent_name = '尹洋',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗睿灵Rainbow'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗睿灵Rainbow', 61, '17785848847', '妈妈', '尹洋', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗睿灵Rainbow' AND class_id = 61
);

-- Row 1641: 吴亦楷Kyle @ 凤凰46班
UPDATE v2.students
SET phone = '13615021328',
    primary_guardian_type = '妈妈',
    parent_name = '吴晓玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '吴亦楷Kyle'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '吴亦楷Kyle', 61, '13615021328', '妈妈', '吴晓玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '吴亦楷Kyle' AND class_id = 61
);

-- Row 1642: 王妤晞Cici @ 凤凰46班
UPDATE v2.students
SET phone = '18286045409',
    primary_guardian_type = '妈妈',
    parent_name = '曹女士',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王妤晞Cici'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王妤晞Cici', 61, '18286045409', '妈妈', '曹女士', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王妤晞Cici' AND class_id = 61
);

-- Row 1643: 杨琳露Lulu @ 凤凰46班
UPDATE v2.students
SET phone = '15885316121',
    primary_guardian_type = '妈妈',
    parent_name = '黄佑俊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '杨琳露Lulu'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '杨琳露Lulu', 61, '15885316121', '妈妈', '黄佑俊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '杨琳露Lulu' AND class_id = 61
);

-- Row 1644: 王昶珈Charles @ 凤凰46班
UPDATE v2.students
SET phone = '15928055931',
    primary_guardian_type = '妈妈',
    parent_name = '刘渝雯',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王昶珈Charles'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王昶珈Charles', 61, '15928055931', '妈妈', '刘渝雯', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王昶珈Charles' AND class_id = 61
);

-- Row 1645: 张厚洋David @ 凤凰46班
UPDATE v2.students
SET phone = '18685376191',
    primary_guardian_type = '妈妈',
    parent_name = '龚证霁',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '张厚洋David'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张厚洋David', 61, '18685376191', '妈妈', '龚证霁', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张厚洋David' AND class_id = 61
);

-- Row 1646: 刘润麒Dylan @ 凤凰46班
UPDATE v2.students
SET phone = '19985412687',
    primary_guardian_type = '妈妈',
    parent_name = '刘俊',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘润麒Dylan'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘润麒Dylan', 61, '19985412687', '妈妈', '刘俊', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘润麒Dylan' AND class_id = 61
);

-- Row 1647: 董文兮Wendy @ 凤凰46班
UPDATE v2.students
SET phone = '18208505941',
    primary_guardian_type = '妈妈',
    parent_name = '卜锁',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '董文兮Wendy'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '董文兮Wendy', 61, '18208505941', '妈妈', '卜锁', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '董文兮Wendy' AND class_id = 61
);

-- Row 1648: 刘月希淳Sissi @ 凤凰46班
UPDATE v2.students
SET phone = '15285599962',
    primary_guardian_type = '妈妈',
    parent_name = '张念',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘月希淳Sissi'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘月希淳Sissi', 61, '15285599962', '妈妈', '张念', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘月希淳Sissi' AND class_id = 61
);

-- Row 1649: 林家安Evan @ 凤凰46班
UPDATE v2.students
SET phone = '13608502121',
    primary_guardian_type = '妈妈',
    parent_name = '欧晶',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '林家安Evan'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林家安Evan', 61, '13608502121', '妈妈', '欧晶', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林家安Evan' AND class_id = 61
);

-- Row 1650: 罗恒睿Ramond @ 凤凰46班
UPDATE v2.students
SET phone = '13985455807',
    primary_guardian_type = '妈妈',
    parent_name = '许云燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗恒睿Ramond'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗恒睿Ramond', 61, '13985455807', '妈妈', '许云燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗恒睿Ramond' AND class_id = 61
);

-- Row 1651: 刘仲逸Levi @ 凤凰46班
UPDATE v2.students
SET phone = '18085175199',
    primary_guardian_type = '爸爸',
    parent_name = '刘联政',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘仲逸Levi'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘仲逸Levi', 61, '18085175199', '爸爸', '刘联政', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘仲逸Levi' AND class_id = 61
);

-- Row 1652: 陈嘉翊Jayden @ 凤凰46班
UPDATE v2.students
SET phone = '15085939649',
    primary_guardian_type = '爸爸',
    parent_name = '陈伟',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈嘉翊Jayden'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈嘉翊Jayden', 61, '15085939649', '爸爸', '陈伟', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈嘉翊Jayden' AND class_id = 61
);

-- Row 1653: 赖一鑫Hardy @ 凤凰46班
UPDATE v2.students
SET phone = '13639098918',
    primary_guardian_type = '妈妈',
    parent_name = '赖丹丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赖一鑫Hardy'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赖一鑫Hardy', 61, '13639098918', '妈妈', '赖丹丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赖一鑫Hardy' AND class_id = 61
);

-- Row 1654: 胡书涵Ryan @ 凤凰46班
UPDATE v2.students
SET phone = '13595153629',
    primary_guardian_type = '爸爸',
    parent_name = '胡炜桃',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡书涵Ryan'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡书涵Ryan', 61, '13595153629', '爸爸', '胡炜桃', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡书涵Ryan' AND class_id = 61
);

-- Row 1655: 李舶铭Henry @ 凤凰46班
UPDATE v2.students
SET phone = '13765177858',
    primary_guardian_type = '妈妈',
    parent_name = '吴昕樾',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李舶铭Henry'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李舶铭Henry', 61, '13765177858', '妈妈', '吴昕樾', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李舶铭Henry' AND class_id = 61
);

-- Row 1656: 黄一扬Dino @ 凤凰46班
UPDATE v2.students
SET phone = '13618502960',
    primary_guardian_type = '妈妈',
    parent_name = '魏鹂娴',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄一扬Dino'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄一扬Dino', 61, '13618502960', '妈妈', '魏鹂娴', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄一扬Dino' AND class_id = 61
);

-- Row 1657: 邹沐辰Steven @ 凤凰53班
UPDATE v2.students
SET phone = '18984584986',
    primary_guardian_type = '妈妈',
    parent_name = '陈苏',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '邹沐辰Steven'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邹沐辰Steven', 68, '18984584986', '妈妈', '陈苏', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邹沐辰Steven' AND class_id = 68
);

-- Row 1658: 郑敬哲Bily @ 凤凰53班
UPDATE v2.students
SET phone = '13985558890',
    primary_guardian_type = '妈妈',
    parent_name = '江宁',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '郑敬哲Bily'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郑敬哲Bily', 68, '13985558890', '妈妈', '江宁', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郑敬哲Bily' AND class_id = 68
);

-- Row 1659: 赵慕杨Ultraman @ 凤凰53班
UPDATE v2.students
SET phone = '13985548132',
    primary_guardian_type = '妈妈',
    parent_name = '赵通',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵慕杨Ultraman'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵慕杨Ultraman', 68, '13985548132', '妈妈', '赵通', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵慕杨Ultraman' AND class_id = 68
);

-- Row 1660: 徐婉扬Mia @ 凤凰53班
UPDATE v2.students
SET phone = '15985166618',
    primary_guardian_type = '妈妈',
    parent_name = '隋晓靖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '徐婉扬Mia'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '徐婉扬Mia', 68, '15985166618', '妈妈', '隋晓靖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '徐婉扬Mia' AND class_id = 68
);

-- Row 1661: 周妤汐Zoey @ 凤凰53班
UPDATE v2.students
SET phone = '13672228131',
    primary_guardian_type = '妈妈',
    parent_name = '俞萌',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '周妤汐Zoey'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周妤汐Zoey', 68, '13672228131', '妈妈', '俞萌', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周妤汐Zoey' AND class_id = 68
);

-- Row 1662: 郑筱燚Ivy @ 凤凰53班
UPDATE v2.students
SET phone = '18593882911',
    primary_guardian_type = '妈妈',
    parent_name = '李洋',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '郑筱燚Ivy'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '郑筱燚Ivy', 68, '18593882911', '妈妈', '李洋', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '郑筱燚Ivy' AND class_id = 68
);

-- Row 1663: 余俊辰Jayden @ 凤凰53班
UPDATE v2.students
SET phone = '13765140288',
    primary_guardian_type = '妈妈',
    parent_name = '屠贞文',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '余俊辰Jayden'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '余俊辰Jayden', 68, '13765140288', '妈妈', '屠贞文', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '余俊辰Jayden' AND class_id = 68
);

-- Row 1664: 熊子琛Anthony @ 凤凰53班
UPDATE v2.students
SET phone = '18313928090',
    primary_guardian_type = '妈妈',
    parent_name = '胡月婷',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '熊子琛Anthony'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '熊子琛Anthony', 68, '18313928090', '妈妈', '胡月婷', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '熊子琛Anthony' AND class_id = 68
);

-- Row 1665: 胡睿恒Eric @ 凤凰53班
UPDATE v2.students
SET phone = '13985416879',
    primary_guardian_type = '妈妈',
    parent_name = '郭丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '胡睿恒Eric'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '胡睿恒Eric', 68, '13985416879', '妈妈', '郭丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '胡睿恒Eric' AND class_id = 68
);

-- Row 1666: 王子豪Jason @ 凤凰53班
UPDATE v2.students
SET phone = '18685042680',
    primary_guardian_type = '妈妈',
    parent_name = '张肇慧',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王子豪Jason'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王子豪Jason', 68, '18685042680', '妈妈', '张肇慧', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王子豪Jason' AND class_id = 68
);

-- Row 1667: 向丝彤Tonia @ 凤凰53班
UPDATE v2.students
SET phone = '18984386482',
    primary_guardian_type = '妈妈',
    parent_name = '刘镜',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '向丝彤Tonia'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '向丝彤Tonia', 68, '18984386482', '妈妈', '刘镜', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '向丝彤Tonia' AND class_id = 68
);

-- Row 1668: 葛钦予Kubi @ 凤凰53班
UPDATE v2.students
SET phone = '18586855667',
    primary_guardian_type = '妈妈',
    parent_name = '王可昕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '葛钦予Kubi'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '葛钦予Kubi', 68, '18586855667', '妈妈', '王可昕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '葛钦予Kubi' AND class_id = 68
);

-- Row 1669: 顾恬翊Eva G @ 凤凰53班
UPDATE v2.students
SET phone = '13765043070',
    primary_guardian_type = '妈妈',
    parent_name = '刘倩',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '顾恬翊Eva G'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '顾恬翊Eva G', 68, '13765043070', '妈妈', '刘倩', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '顾恬翊Eva G' AND class_id = 68
);

-- Row 1670: 文昱宣Molly @ 凤凰53班
UPDATE v2.students
SET phone = '18785045572',
    primary_guardian_type = '妈妈',
    parent_name = '文跃冬',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '文昱宣Molly'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '文昱宣Molly', 68, '18785045572', '妈妈', '文跃冬', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '文昱宣Molly' AND class_id = 68
);

-- Row 1671: 王昱尧Lucian @ 凤凰53班
UPDATE v2.students
SET phone = '15599121960',
    primary_guardian_type = '妈妈',
    parent_name = '马继萍',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王昱尧Lucian'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王昱尧Lucian', 68, '15599121960', '妈妈', '马继萍', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王昱尧Lucian' AND class_id = 68
);

-- Row 1672: 王亦辰Eason @ 凤凰53班
UPDATE v2.students
SET phone = '18885071309',
    primary_guardian_type = '妈妈',
    parent_name = '王永相',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王亦辰Eason'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王亦辰Eason', 68, '18885071309', '妈妈', '王永相', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王亦辰Eason' AND class_id = 68
);

-- Row 1673: 王丽媛Lillian @ 凤凰53班
UPDATE v2.students
SET phone = '18885071309',
    primary_guardian_type = '妈妈',
    parent_name = '王永相',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '王丽媛Lillian'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '王丽媛Lillian', 68, '18885071309', '妈妈', '王永相', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '王丽媛Lillian' AND class_id = 68
);

-- Row 1674: 林木子Levi @ 凤凰53班
UPDATE v2.students
SET phone = '13158076688',
    primary_guardian_type = '爸爸',
    parent_name = '林峰佳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '林木子Levi'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '林木子Levi', 68, '13158076688', '爸爸', '林峰佳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '林木子Levi' AND class_id = 68
);

-- Row 1675: 黄韵宁Eva H @ 凤凰53班
UPDATE v2.students
SET phone = '13765861565',
    primary_guardian_type = '妈妈',
    parent_name = '陈颖',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '黄韵宁Eva H'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '黄韵宁Eva H', 68, '13765861565', '妈妈', '陈颖', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '黄韵宁Eva H' AND class_id = 68
);

-- Row 1676: 陈天屹Apple @ 凤凰53班
UPDATE v2.students
SET phone = '13873242920',
    primary_guardian_type = '妈妈',
    parent_name = '冯海燕',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈天屹Apple'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈天屹Apple', 68, '13873242920', '妈妈', '冯海燕', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈天屹Apple' AND class_id = 68
);

-- Row 1677: 陈思羽Celia @ 凤凰53班
UPDATE v2.students
SET phone = '18785199118',
    primary_guardian_type = '妈妈',
    parent_name = '李佳蓉',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈思羽Celia'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈思羽Celia', 68, '18785199118', '妈妈', '李佳蓉', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈思羽Celia' AND class_id = 68
);

-- Row 1678: 高晨皓Phoenix @ 凤凰53班
UPDATE v2.students
SET phone = '13078596305',
    primary_guardian_type = '妈妈',
    parent_name = '杨静',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '高晨皓Phoenix'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高晨皓Phoenix', 68, '13078596305', '妈妈', '杨静', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高晨皓Phoenix' AND class_id = 68
);

-- Row 1679: 陈煜窈Abby @ 凤凰53班
UPDATE v2.students
SET phone = '13985609757',
    primary_guardian_type = '妈妈',
    parent_name = '周霞',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈煜窈Abby'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈煜窈Abby', 68, '13985609757', '妈妈', '周霞', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈煜窈Abby' AND class_id = 68
);

-- Row 1680: 封懿芪Austin @ 凤凰53班
UPDATE v2.students
SET phone = '15761656502',
    primary_guardian_type = '妈妈',
    parent_name = '李丹丹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '封懿芪Austin'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '封懿芪Austin', 68, '15761656502', '妈妈', '李丹丹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '封懿芪Austin' AND class_id = 68
);

-- Row 1681: 范裕琛Ray @ 凤凰53班
UPDATE v2.students
SET phone = '18768678798',
    primary_guardian_type = '妈妈',
    parent_name = '文开春',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '范裕琛Ray'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '范裕琛Ray', 68, '18768678798', '妈妈', '文开春', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '范裕琛Ray' AND class_id = 68
);

-- Row 1682: 蔡吉星Gina @ 凤凰53班
UPDATE v2.students
SET phone = '13984141635',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蔡吉星Gina'
  AND class_id = 68;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蔡吉星Gina', 68, '13984141635', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蔡吉星Gina' AND class_id = 68
);

-- Row 1683: 赵翊琳Sunshine @ 小锦鲤37班
UPDATE v2.students
SET phone = '18786661916',
    primary_guardian_type = '妈妈',
    parent_name = '王艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '赵翊琳Sunshine'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '赵翊琳Sunshine', 20, '18786661916', '妈妈', '王艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '赵翊琳Sunshine' AND class_id = 20
);

-- Row 1684: 蒋瞻亦Zoe @ 麒麟17班
UPDATE v2.students
SET phone = '18985042978',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '南明实验幼儿园',
    address = '南明区',
    id_card = '520114201702121621',
    updated_at = NOW()
WHERE name = '蒋瞻亦Zoe'
  AND class_id = 77;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋瞻亦Zoe', 77, '18985042978', NULL, NULL, '南明实验幼儿园', '南明区', '520114201702121621', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋瞻亦Zoe' AND class_id = 77
);

-- Row 1687: 安铭佑 Unique @ 凤凰29班
UPDATE v2.students
SET phone = '18885136888',
    primary_guardian_type = '爸爸',
    parent_name = '安韩旭',
    school = '实验小学未来方舟分校',
    address = '贵阳市云岩区盐务街',
    id_card = '520103201602188416',
    updated_at = NOW()
WHERE name = '安铭佑 Unique'
  AND class_id = 44;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '安铭佑 Unique', 44, '18885136888', '爸爸', '安韩旭', '实验小学未来方舟分校', '贵阳市云岩区盐务街', '520103201602188416', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '安铭佑 Unique' AND class_id = 44
);

-- Row 1688: 夏锦妍Coco @ 凤凰26班
UPDATE v2.students
SET phone = '18985015338',
    primary_guardian_type = '妈妈',
    parent_name = '黄红霞',
    school = '实验小学',
    address = '云岩区中天未来方舟',
    id_card = '520103201607233626',
    updated_at = NOW()
WHERE name = '夏锦妍Coco'
  AND class_id = 41;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '夏锦妍Coco', 41, '18985015338', '妈妈', '黄红霞', '实验小学', '云岩区中天未来方舟', '520103201607233626', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '夏锦妍Coco' AND class_id = 41
);

-- Row 1689: 李癸程Asher @ 凤凰38班
UPDATE v2.students
SET phone = '15761665819',
    primary_guardian_type = '妈妈',
    parent_name = '黄艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '李癸程Asher'
  AND class_id = 53;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李癸程Asher', 53, '15761665819', '妈妈', '黄艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李癸程Asher' AND class_id = 53
);

-- Row 1690: 张珺然Ada @ 麒麟08班
UPDATE v2.students
SET phone = '17785899116',
    primary_guardian_type = NULL,
    parent_name = '马文婧',
    school = '中天北京小学',
    address = '贵阳市西南上城天悦府',
    id_card = '530111201308248563',
    updated_at = NOW()
WHERE name = '张珺然Ada'
  AND class_id = 69;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张珺然Ada', 69, '17785899116', NULL, '马文婧', '中天北京小学', '贵阳市西南上城天悦府', '530111201308248563', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张珺然Ada' AND class_id = 69
);

-- Row 1693: 周哲熙Jesse @ 麒麟09班
UPDATE v2.students
SET phone = '15085994408',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '中天北京小学',
    address = '观山湖世纪城',
    id_card = '520103201405209214',
    updated_at = NOW()
WHERE name = '周哲熙Jesse'
  AND class_id = 70;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '周哲熙Jesse', 70, '15085994408', NULL, NULL, '中天北京小学', '观山湖世纪城', '520103201405209214', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '周哲熙Jesse' AND class_id = 70
);

-- Row 1694: 爱新觉罗瑄钺Noah @ 白象09班
UPDATE v2.students
SET phone = '18984572697',
    primary_guardian_type = NULL,
    parent_name = NULL,
    school = '华麟学校',
    address = '云岩区中央公园',
    id_card = '520103201207304034',
    updated_at = NOW()
WHERE name = '爱新觉罗瑄钺Noah'
  AND class_id = 82;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '爱新觉罗瑄钺Noah', 82, '18984572697', NULL, NULL, '华麟学校', '云岩区中央公园', '520103201207304034', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '爱新觉罗瑄钺Noah' AND class_id = 82
);

-- Row 1695: 骆一伊Chloe @ 凤凰25班
UPDATE v2.students
SET phone = '18685152923',
    primary_guardian_type = '妈妈',
    parent_name = '张彦燕',
    school = '保利云山金包幼儿园',
    address = NULL,
    id_card = '520103201803298427',
    updated_at = NOW()
WHERE name = '骆一伊Chloe'
  AND class_id = 40;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '骆一伊Chloe', 40, '18685152923', '妈妈', '张彦燕', '保利云山金包幼儿园', NULL, '520103201803298427', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '骆一伊Chloe' AND class_id = 40
);

-- Row 1696: 张颢巍 Simon @ 麒麟19班
UPDATE v2.students
SET phone = '15685609606',
    primary_guardian_type = NULL,
    parent_name = '范晓梅',
    school = '花果园第二小学',
    address = '南明区花果园中山公馆',
    id_card = '520102201601145012',
    updated_at = NOW()
WHERE name = '张颢巍 Simon'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '张颢巍 Simon', 79, '15685609606', NULL, '范晓梅', '花果园第二小学', '南明区花果园中山公馆', '520102201601145012', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '张颢巍 Simon' AND class_id = 79
);

-- Row 1697: 江歆莹 Nellie @ 麒麟19班
UPDATE v2.students
SET phone = '13608513700',
    primary_guardian_type = NULL,
    parent_name = '刘丹',
    school = '华东师范小学',
    address = '观山湖区睿力尚城',
    id_card = '520103201512159021',
    updated_at = NOW()
WHERE name = '江歆莹 Nellie'
  AND class_id = 79;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '江歆莹 Nellie', 79, '13608513700', NULL, '刘丹', '华东师范小学', '观山湖区睿力尚城', '520103201512159021', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '江歆莹 Nellie' AND class_id = 79
);

-- Row 1699: 邢凯歌Eric @ 麒麟10班
UPDATE v2.students
SET phone = '18685180500',
    primary_guardian_type = '妈妈',
    parent_name = '施琴',
    school = '实验三小',
    address = '智慧龙城',
    id_card = '520102201306180819',
    updated_at = NOW()
WHERE name = '邢凯歌Eric'
  AND class_id = 71;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '邢凯歌Eric', 71, '18685180500', '妈妈', '施琴', '实验三小', '智慧龙城', '520102201306180819', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '邢凯歌Eric' AND class_id = 71
);

-- Row 1705: 刘芷杉Melody @ 麒麟12班
UPDATE v2.students
SET phone = '15985159888',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = '贵阳市实验小学',
    address = NULL,
    id_card = '520114201409300049',
    updated_at = NOW()
WHERE name = '刘芷杉Melody'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘芷杉Melody', 72, '15985159888', '妈妈', NULL, '贵阳市实验小学', NULL, '520114201409300049', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘芷杉Melody' AND class_id = 72
);

-- Row 1706: 刘敬恩 Jake @ 麒麟12班
UPDATE v2.students
SET phone = '18685059922',
    primary_guardian_type = '妈妈',
    parent_name = '杨希',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘敬恩 Jake'
  AND class_id = 72;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘敬恩 Jake', 72, '18685059922', '妈妈', '杨希', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘敬恩 Jake' AND class_id = 72
);

-- Row 1708: 蒋云祐 Echo @ 大锦鲤43班
UPDATE v2.students
SET phone = '18786719663',
    primary_guardian_type = '妈妈',
    parent_name = '唐菲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '蒋云祐 Echo'
  AND class_id = 26;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '蒋云祐 Echo', 26, '18786719663', '妈妈', '唐菲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '蒋云祐 Echo' AND class_id = 26
);

-- Row 1709: 罗逸文 Even @ 凤凰50班
UPDATE v2.students
SET phone = '18285120653',
    primary_guardian_type = '妈妈',
    parent_name = '文芹',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '罗逸文 Even'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '罗逸文 Even', 65, '18285120653', '妈妈', '文芹', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '罗逸文 Even' AND class_id = 65
);

-- Row 1710: 戴纾宛 Luna @ 凤凰50班
UPDATE v2.students
SET phone = '15286056062',
    primary_guardian_type = '妈妈',
    parent_name = '许亚玲',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '戴纾宛 Luna'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '戴纾宛 Luna', 65, '15286056062', '妈妈', '许亚玲', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '戴纾宛 Luna' AND class_id = 65
);

-- Row 1715: 李凯维Cavey @ 凤凰39班
UPDATE v2.students
SET phone = '15692711534',
    primary_guardian_type = '妈妈',
    parent_name = '陈娟',
    school = '花溪小学美的校区',
    address = '花溪美的国宾府',
    id_card = '520102201806257413',
    updated_at = NOW()
WHERE name = '李凯维Cavey'
  AND class_id = 54;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李凯维Cavey', 54, '15692711534', '妈妈', '陈娟', '花溪小学美的校区', '花溪美的国宾府', '520102201806257413', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李凯维Cavey' AND class_id = 54
);

-- Row 1723: 喻浠承Max @ 大锦鲤41班
UPDATE v2.students
SET phone = '13984897025',
    primary_guardian_type = '妈妈',
    parent_name = '马莉英雪',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '喻浠承Max'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '喻浠承Max', 24, '13984897025', '妈妈', '马莉英雪', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '喻浠承Max' AND class_id = 24
);

-- Row 1724: 刘籽萱Mina @ 大锦鲤41班
UPDATE v2.students
SET phone = '13595052391',
    primary_guardian_type = '妈妈',
    parent_name = '丁叮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '刘籽萱Mina'
  AND class_id = 24;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '刘籽萱Mina', 24, '13595052391', '妈妈', '丁叮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '刘籽萱Mina' AND class_id = 24
);

-- Row 1725: 陆跃溪Naida @ 凤凰48班
UPDATE v2.students
SET phone = '13985085843',
    primary_guardian_type = '妈妈',
    parent_name = '胡艳',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陆跃溪Naida'
  AND class_id = 63;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陆跃溪Naida', 63, '13985085843', '妈妈', '胡艳', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陆跃溪Naida' AND class_id = 63
);

-- Row 1726: 彭宸晨Leo @ 凤凰46班
UPDATE v2.students
SET phone = '13885087178',
    primary_guardian_type = '爸爸',
    parent_name = '彭江勇',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '彭宸晨Leo'
  AND class_id = 61;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '彭宸晨Leo', 61, '13885087178', '爸爸', '彭江勇', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '彭宸晨Leo' AND class_id = 61
);

-- Row 1729: 高璟伊Ginny @ 小锦鲤37班
UPDATE v2.students
SET phone = '18275158167',
    primary_guardian_type = '妈妈',
    parent_name = '陈希',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '高璟伊Ginny'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '高璟伊Ginny', 20, '18275158167', '妈妈', '陈希', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '高璟伊Ginny' AND class_id = 20
);

-- Row 1730: 李梁铖Lion @ 麒麟20班
UPDATE v2.students
SET phone = '13765189313',
    primary_guardian_type = '妈妈',
    parent_name = '李敏',
    school = '实验小学保利分校',
    address = '保利云山',
    id_card = '520103201708174813',
    updated_at = NOW()
WHERE name = '李梁铖Lion'
  AND class_id = 80;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李梁铖Lion', 80, '13765189313', '妈妈', '李敏', '实验小学保利分校', '保利云山', '520103201708174813', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李梁铖Lion' AND class_id = 80
);

-- Row 1740: 陈孝锦杨 @ 凤凰28班
UPDATE v2.students
SET phone = '17785157077',
    primary_guardian_type = '妈妈',
    parent_name = '杨青',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '陈孝锦杨'
  AND class_id = 43;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '陈孝锦杨', 43, '17785157077', '妈妈', '杨青', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '陈孝锦杨' AND class_id = 43
);

-- Row 1762: 李尚华David @ 白象08班
UPDATE v2.students
SET phone = '13885010200',
    primary_guardian_type = NULL,
    parent_name = '万科',
    school = '贵阳市实验小学',
    address = '北京路',
    id_card = '52011320130216081X',
    updated_at = NOW()
WHERE name = '李尚华David'
  AND class_id = 81;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '李尚华David', 81, '13885010200', NULL, '万科', '贵阳市实验小学', '北京路', '52011320130216081X', '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '李尚华David' AND class_id = 81
);

-- Row 1814: 曾一雯Even @ 小锦鲤37班
UPDATE v2.students
SET phone = '18690747568',
    primary_guardian_type = '妈妈',
    parent_name = NULL,
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '曾一雯Even'
  AND class_id = 20;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '曾一雯Even', 20, '18690747568', '妈妈', NULL, NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '曾一雯Even' AND class_id = 20
);

-- Row 1820: 卢恩和 Enzo @ 凤凰50班
UPDATE v2.students
SET phone = '13511997455',
    primary_guardian_type = '妈妈',
    parent_name = '钟小妮',
    school = NULL,
    address = NULL,
    id_card = NULL,
    updated_at = NOW()
WHERE name = '卢恩和 Enzo'
  AND class_id = 65;

INSERT INTO v2.students (name, class_id, phone, primary_guardian_type, parent_name, school, address, id_card, status)
SELECT '卢恩和 Enzo', 65, '13511997455', '妈妈', '钟小妮', NULL, NULL, NULL, '在读'
WHERE NOT EXISTS (
    SELECT 1 FROM v2.students WHERE name = '卢恩和 Enzo' AND class_id = 65
);


COMMIT;
