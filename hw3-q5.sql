select distinct c.name as carrier
from carriers as c
where c.cid In (select f.carrier_id 
from flights as f
where f.origin_city = 'San Diego CA'
and f.dest_city = 'San Francisco CA')
order by carrier asc;