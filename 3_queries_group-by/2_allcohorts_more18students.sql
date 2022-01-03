SELECT c.name AS cohort_name, COUNT(s.id) AS student_count
FROM students s 
JOIN cohorts c 
     ON s.cohort_id = c.id
GROUP BY c.name
HAVING COUNT(s.id) >=18
ORDER BY COUNT(s.id) ASC;