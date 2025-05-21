SELECT c.course_name, p.name AS professor, cs.schedule_time, cl.building, cl.room_number
FROM course_schedule cs
JOIN courses c ON cs.course_id = c.id
JOIN professors p ON c.professor_id = p.id
JOIN classrooms cl ON cs.classroom_id = cl.id;