SELECT COUNT(ar.id), s.name
FROM assistance_requests ar 
JOIN students s 
ON ar.student_id = s.id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;