SELECT a.id, a.name, a.day, a.chapter, COUNT(ar.id) AS total_requests
FROM assignments a 
JOIN assistance_requests ar  ON ar.assignment_id = a.id 
GROUP BY a.id
ORDER BY total_requests DESC;