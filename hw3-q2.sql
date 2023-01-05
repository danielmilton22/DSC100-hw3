select distinct f.origin_city
from Flights f JOIN 
(select origin_city, max(actual_time) max from Flights
Group by origin_city) j
ON j.origin_city = f.origin_city AND
f.actual_time = j.max
where f.actual_time < 180.0;