SELECT s.name AS students, AVG(duration) AS average_assignment_duration
FROM students s 
JOIN assignment_submissions asub 
     ON s.id = asub.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC;