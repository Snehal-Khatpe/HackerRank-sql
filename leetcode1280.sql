SELECT * FROM students;

SELECT * FROM subjects;

SELECT * FROM examinations;


/* 
LEETCODE 1280: student & examination problem 
Write a solution to find the number of times each student attended each exam.
Return the result table ordered by student_id and subject_name.
*/

SELECT s.student_id, s.student_name, sub.subject_name, ifnull(COUNT(e.subject_name),0) AS attended_exams
FROM students AS s
CROSS JOIN subjects AS sub
LEFT JOIN examinations as e
ON s.student_id = e.student_id and sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY student_id, sub.subject_name
