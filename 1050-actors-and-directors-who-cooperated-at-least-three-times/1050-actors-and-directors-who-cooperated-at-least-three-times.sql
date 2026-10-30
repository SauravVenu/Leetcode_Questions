select a.actor_id, a.director_id
from actordirector a
group by actor_id,director_id
having count(*) >= 3;