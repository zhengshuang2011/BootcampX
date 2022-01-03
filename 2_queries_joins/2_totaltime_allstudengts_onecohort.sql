SELECT SUM(asub.duration) AS total_duration
FROM students s
JOIN assignment_submissions asub
     ON asub.student_id = s.id
JOIN cohorts c
     ON c.id = s.cohort_id
WHERE c.name = 'FEB12';