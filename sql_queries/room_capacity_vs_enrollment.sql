SELECT cl.building, cl.room_number, cl.capacity, COUNT(e.id) AS enrolled_students
FROM classrooms cl
JOIN course_schedule cs ON cl.id = cs.classroom_id
JOIN courses c ON cs.course_id = c.id
JOIN enrollments e ON c.id = e.course_id
GROUP BY cl.building, cl.room_number, cl.capacity;