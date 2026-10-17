select st.student_id as student_id,st.student_name as student_name,
su.subject_name as subject_name,
count(ex.subject_name) as attended_exams
from students st
cross join subjects su
left join examinations ex
on st.student_id = ex.student_id
and su.subject_name = ex.subject_name
group by student_id,subject_name
order by student_id,subject_name;