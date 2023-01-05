SELECT distinct name
FROM track as t
LEFT JOIN invoice_line as i on t.track_id= i.track_id
group by t.name
having SUM(quantity) is null
order by name asc;
