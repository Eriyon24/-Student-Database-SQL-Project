SELECT c.course_name, ROUND(AVG(e.grade), 2) AS avg_grade
FROM enrollments e
JOIN courses c ON e.course_id = c.id
GROUP BY c.course_name;