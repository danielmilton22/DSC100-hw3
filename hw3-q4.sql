select distinct F3.dest_city as column_city
from FLIGHTS as F2, FLIGHTS as F3 
where F2.origin_city = 'San Diego CA'
and F2.dest_city != 'San Diego CA'
and F3.origin_city != 'San Diego CA'
and F3.dest_city != 'San Diego CA'
and F2.dest_city = F3.origin_city
and F3.dest_city NOT IN (select distinct F1.dest_city from FLIGHTS as F1
where F1.origin_city = 'San Diego CA')
order by column_city asc;
