SELECT 
    s.name AS student, 
    AVG(asub.duration) AS average_assignment_duration,
   AVG (a.duration)AS average_estimated_duration
FROM students s 
JOIN assignment_submissions asub ON s.id = asub.student_id
JOIN assignments a ON a.id = asub.assignment_id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(asub.duration) <  AVG (a.duration)
ORDER BY average_assignment_duration, average_estimated_duration;