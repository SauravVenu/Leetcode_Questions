select s.user_id as user_id,
coalesce(
    round(
      sum(c.action = 'confirmed')/count(c.action),2),0 
        /*coalesce will converts blanks like null to 0*/
        /* count will calculates both 1 and 0(c.action = 'confirmed'  returns 1 or 0) , because both are no null values */
)as confirmation_rate
from signups s
left join confirmations c
on s.user_id = c.user_id
group by s.user_id;