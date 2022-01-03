SELECT c.name AS cohort, COUNT(asub.id) AS total_submissions
FROM cohorts c 
JOIN students s 
     ON c.id = s.cohort_id
JOIN assignment_submissions asub 
     ON s.id = asub.student_id
GROUP BY c.name
ORDER BY COUNT(asub.id) DESC;