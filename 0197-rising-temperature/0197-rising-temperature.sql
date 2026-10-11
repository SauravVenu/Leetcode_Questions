select rd.id as Id
from weather w
inner join weather rd
on datediff(rd.recordDate,w.recordDate)=1
where rd.temperature > w.temperature;