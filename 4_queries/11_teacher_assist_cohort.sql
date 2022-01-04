SELECT DISTINCT(t.name) AS teacher, c.name AS cohort
FROM assistance_requests ar
JOIN students s ON s.id = ar.student_id
JOIN cohorts c ON c.id = s.cohort_id
JOIN teachers t ON t.id = ar.teacher_id
WHERE c.name = 'JUL02'
ORDER BY teacher;