select f.origin_city, 
(cnt * 100/ count(f.fid)) percent
from Flights f
LEFT JOIN (select origin_city, count(fid) cnt
from Flights 
where actual_time < 180.0 OR (actual_time IS NULL)
group by origin_city) j
ON f.origin_city = j.origin_city
group by f.origin_city, cnt
order by percent asc;