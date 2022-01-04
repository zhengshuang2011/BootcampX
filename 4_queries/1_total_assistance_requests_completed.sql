SELECT COUNT(ar.id), t.name
FROM assistance_requests ar
JOIN teachers t ON ar.teacher_id = t.id
WHERE completed_at IS NOT NULL 
AND t.name = 'Waylon Boehm'
GROUP BY t.name;