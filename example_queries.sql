-- =========
-- Example queries for common scenarios
-- =========

-- 1. Get complete student profile with current performance
SELECT 
    s.*,
    vps.*,
    json_agg(DISTINCT ts.specialization) as teacher_specializations,
    json_agg(DISTINCT cs.*) as class_schedule
FROM students s
JOIN v_student_performance_summary vps ON s.id = vps.student_id
LEFT JOIN classes c ON s.current_class_id = c.id
LEFT JOIN teachers t ON c.main_teacher_id = t.id OR c.advisor_id = t.id
LEFT JOIN teacher_specializations ts ON t.id = ts.teacher_id
LEFT JOIN class_schedule cs ON c.id = cs.class_id
WHERE s.id = 1  -- Replace with student_id
GROUP BY s.id, vps.*;

-- 2. Get student's homework completion status for last month
SELECT 
    ha.title,
    ha.due_date,
    sw.submit_time,
    sw.score,
    CASE 
        WHEN sw.id IS NULL THEN 'Not submitted'
        WHEN sw.submit_time > ha.due_date THEN 'Late'
        ELSE 'On time'
    END as submission_status
FROM homework_assignments ha
LEFT JOIN student_works sw ON ha.id = sw.homework_id
WHERE ha.class_id = (SELECT current_class_id FROM students WHERE id = 1)  -- Replace with student_id
AND ha.due_date >= NOW() - INTERVAL '1 month'
ORDER BY ha.due_date DESC;

-- 3. Get parent communication history
SELECT * FROM v_parent_communications
WHERE student_id = 1  -- Replace with student_id
ORDER BY msgtime DESC;

-- 4. Get student attendance record
SELECT 
    cs.day_of_week,
    cs.start_time,
    cs.end_time,
    sa.status,
    sa.notes,
    t.name as recorded_by_teacher
FROM student_attendance sa
JOIN class_schedule cs ON sa.schedule_id = cs.id
JOIN teachers t ON sa.recorded_by_id = t.id
WHERE sa.student_id = 1  -- Replace with student_id
AND sa.created_at >= NOW() - INTERVAL '3 months'
ORDER BY sa.created_at DESC;

-- 5. Get class performance overview
SELECT * FROM v_class_performance_summary
WHERE class_id = 1;  -- Replace with class_id

-- 6. Find students with low participation or attendance
SELECT 
    s.name as student_name,
    c.name as class_name,
    vps.avg_attendance_rate,
    vps.avg_participation_score,
    vps.avg_behavior_score,
    p.name as parent_name,
    p.phone as parent_phone
FROM v_student_performance_summary vps
JOIN students s ON vps.student_id = s.id
JOIN classes c ON vps.class_id = c.id
JOIN student_parent_rel spr ON s.id = spr.student_id
JOIN parents p ON spr.parent_id = p.id
WHERE (vps.avg_attendance_rate < 80 OR vps.avg_participation_score < 60)
AND spr.is_primary = true;

-- 7. Get teacher's class and specialization details
SELECT 
    t.name as teacher_name,
    json_agg(DISTINCT ts.specialization) as specializations,
    json_agg(DISTINCT 
        json_build_object(
            'class_name', c.name,
            'role', CASE 
                WHEN c.main_teacher_id = t.id THEN 'Main Teacher'
                WHEN c.advisor_id = t.id THEN 'Advisor'
            END,
            'student_count', (SELECT COUNT(*) FROM students WHERE current_class_id = c.id)
        )
    ) as classes
FROM teachers t
LEFT JOIN teacher_specializations ts ON t.id = ts.teacher_id
LEFT JOIN classes c ON t.id = c.main_teacher_id OR t.id = c.advisor_id
WHERE t.id = 1  -- Replace with teacher_id
GROUP BY t.id, t.name;

-- 8. Get homework submission statistics by class
SELECT 
    c.name as class_name,
    ha.title as homework_title,
    ha.due_date,
    COUNT(DISTINCT s.id) as total_students,
    COUNT(DISTINCT sw.id) as submissions,
    ROUND(COUNT(DISTINCT sw.id)::numeric / COUNT(DISTINCT s.id) * 100, 2) as submission_rate,
    AVG(sw.score) as average_score
FROM classes c
JOIN students s ON s.current_class_id = c.id
JOIN homework_assignments ha ON ha.class_id = c.id
LEFT JOIN student_works sw ON sw.homework_id = ha.id AND sw.student_id = s.id
WHERE c.id = 1  -- Replace with class_id
AND ha.due_date < NOW()  -- Only include past-due assignments
GROUP BY c.id, c.name, ha.id, ha.title, ha.due_date
ORDER BY ha.due_date DESC;

-- 9. Get student transfer history with performance impact
WITH student_transfers AS (
    SELECT 
        ce.*,
        c.name as class_name,
        LEAD(ce.start_date) OVER (PARTITION BY ce.student_id ORDER BY ce.start_date) as next_start_date,
        AVG(sp.participation_score) as avg_participation,
        AVG(sp.behavior_score) as avg_behavior
    FROM class_enrollments ce
    JOIN classes c ON ce.class_id = c.id
    LEFT JOIN student_performance sp ON sp.student_id = ce.student_id 
        AND sp.class_id = ce.class_id
        AND sp.evaluation_date BETWEEN ce.start_date AND COALESCE(ce.end_date, NOW())
    WHERE ce.student_id = 1  -- Replace with student_id
    GROUP BY ce.id, ce.student_id, ce.class_id, ce.start_date, ce.end_date, c.name
)
SELECT 
    class_name,
    start_date,
    end_date,
    avg_participation,
    avg_behavior,
    reason
FROM student_transfers
ORDER BY start_date DESC;

-- 10. Get comprehensive parent engagement metrics
SELECT 
    p.name as parent_name,
    s.name as student_name,
    c.name as class_name,
    COUNT(DISTINCT CASE WHEN pc.communication_type = 'group' THEN pc.msgtime END) as group_messages,
    COUNT(DISTINCT CASE WHEN pc.communication_type = 'direct' THEN pc.msgtime END) as direct_messages,
    MAX(pc.msgtime) as last_communication,
    NOW() - MAX(pc.msgtime) as time_since_last_communication
FROM parents p
JOIN student_parent_rel spr ON p.id = spr.parent_id
JOIN students s ON spr.student_id = s.id
JOIN classes c ON s.current_class_id = c.id
LEFT JOIN v_parent_communications pc ON p.id = pc.parent_id
GROUP BY p.id, p.name, s.id, s.name, c.id, c.name
HAVING NOW() - MAX(pc.msgtime) > INTERVAL '1 month'
ORDER BY time_since_last_communication DESC;
