select p.project_id as project_id,    
round(
    sum(e.experience_years)/count(p.employee_id),2    -- or avg(experience_years)
)
as average_years
from project p
left join employee e
on p.employee_id = e.employee_id
group by project_id;