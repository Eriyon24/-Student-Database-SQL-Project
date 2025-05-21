SELECT s.name, AVG(e.grade) AS average_grade
FROM enrollments e
JOIN students s ON e.student_id = s.id
GROUP BY s.name
ORDER BY average_grade DESC
LIMIT 5;