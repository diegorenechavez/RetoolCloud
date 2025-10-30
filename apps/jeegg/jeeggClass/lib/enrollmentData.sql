SELECT * FROM enrollments_per_semester 
JOIN courses on courses.id = enrollments_per_semester.course_id Where courses.id = {{ coursesTable.selectedRow.id }}