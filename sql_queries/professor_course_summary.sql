SELECT p.name AS professor, COUNT(c.id) AS total_courses
FROM professors p
LEFT JOIN courses c ON p.id = c.professor_id
GROUP BY p.name;