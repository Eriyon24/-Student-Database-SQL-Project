SELECT s.name AS student, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id
ORDER BY s.name;