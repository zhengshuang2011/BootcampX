SELECT day, COUNT(*) AS number_of_assignments, SUM(duration)
FROM assignments a 
GROUP BY day
ORDER BY day;