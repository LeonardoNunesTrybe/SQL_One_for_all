SELECT
	a.artista AS artista,
    alb.album AS album
FROM 
	SpotifyClone.artistas AS a JOIN
    SpotifyClone.album AS alb ON
    a.artista_id = alb.artista_id
WHERE
	a.artista = 'Elis Regina'
ORDER BY album;