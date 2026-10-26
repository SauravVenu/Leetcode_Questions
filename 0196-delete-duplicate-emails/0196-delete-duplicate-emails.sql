delete p     -- removes entire row
from person p
inner join person pr -- left join also works
on p.email = pr.email
where p.id > pr.id;