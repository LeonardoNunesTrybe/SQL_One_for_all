SELECT
	a.artista AS artista,
    alb.album AS album,
    COUNT(art.pessoa_usuaria_id) AS pessoas_seguidoras
FROM 
	SpotifyClone.album AS alb JOIN
	SpotifyClone.artistas AS a ON
    a.artista_id = alb.artista_id right JOIN
    SpotifyClone.artistas_seguidos AS art ON
    a.artista_id = art.artista_id
GROUP BY a.artista, alb.album
ORDER BY pessoas_seguidoras DESC, artista, album;