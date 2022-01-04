SELECT c.name, AVG(completed_at-started_at) AS average_assistance_time
FROM assistance_requests ar
JOIN students s ON ar.student_id = s.id 
JOIN cohorts c ON s.cohort_id = c.id 
GROUP BY c.name
ORDER BY average_assistance_time;

