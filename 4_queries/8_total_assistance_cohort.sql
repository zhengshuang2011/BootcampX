SELECT AVG(total_duration) AS average_total_duration 
FROM (SELECT cohorts.name AS cohort, SUM(completed_at - started_at) as total_duration
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name) t;

