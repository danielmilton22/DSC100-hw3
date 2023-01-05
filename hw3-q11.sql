SELECT count(distinct b.name)
from track as t
join album as a on t.album_id = a.album_id
join artist as b on b.artist_id = a.artist_id
join genre as g on g.genre_id = t.genre_id
WHERE  g.name != 'Blues';