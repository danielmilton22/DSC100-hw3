select distinct c.name as carrier
from carriers as c, flights as f
where f.origin_city = 'San Diego CA'
and f.dest_city = 'San Francisco CA'
and c.cid = f.carrier_id
order by carrier asc;
