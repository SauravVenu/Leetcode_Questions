select e.name
from employee e
left join employee em
on e.id = em.managerId
group by e.id
having count(*) >= 5;