SELECT distinct t.name as name
from track as t
join playlist_track as i on t.track_id = i.track_id
join playlist as p on p.playlist_id = i.playlist_id
WHERE  p.name != '90’s Music';
order by name asc;
