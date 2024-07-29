# Write your MySQL query statement below

select s.student_id,s.student_name,sub.subject_name,count(e.subject_name) as attended_exams

FROM Students s cross join 

Subjects sub left outer join Examinations e

ON s.student_id = e.student_id AND sub.subject_name = e.subject_name  

group by s.student_id,s.student_name,sub.subject_name

order by student_id,subject_name;