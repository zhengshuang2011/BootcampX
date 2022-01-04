SELECT DISTINCT(t.name) AS teacher, c.name AS cohort, COUNT(ar.id) AS total_assistances
FROM assistance_requests ar
JOIN students s ON s.id = ar.student_id
JOIN cohorts c ON c.id = s.cohort_id
JOIN teachers t ON t.id = ar.teacher_id
WHERE c.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;