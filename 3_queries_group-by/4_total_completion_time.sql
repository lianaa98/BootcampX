SELECT students.name, avg(assignment_submissions.duration) as average_time_from_assignment_submissions
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_time_from_assignment_submissions DESC;