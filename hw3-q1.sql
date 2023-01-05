select distinct f.origin_city as origin_city, f.dest_city as dest_city, f.actual_time as time
from flights f JOIN 
(select origin_city, max(actual_time) max from flights
Group by origin_city) j
ON j.origin_city = f.origin_city AND
f.actual_time = j.max
order by f.origin_city, f.dest_city asc;

