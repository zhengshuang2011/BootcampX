SELECT SUM(asub.duration) as total_duration
FROM students s
JOIN assignment_submissions asub
     ON s.id = asub.student_id
     WHERE s.name = 'Ibrahim Schimmel';
