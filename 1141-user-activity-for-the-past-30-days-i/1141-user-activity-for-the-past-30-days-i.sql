select activity_date as day , 
count(distinct (user_id)) as active_users
from activity
where activity_date between '2019-06-28' and '2019-07-27' 
/* because of this user4 is not included because it is on 25 th june which is out of bound since the last date is 27 th july and period of 30 days means , it will start on 28th june */
group by activity_date;