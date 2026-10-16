select a.machine_id as machine_id,
round(
    avg(ac.timestamp - a.timestamp),3
) as processing_time
from activity a
left join activity ac
on a.machine_id = ac.machine_id
and a.process_id = ac.process_id
where a.activity_type = 'start'
and ac.activity_type = 'end'
group by machine_id;