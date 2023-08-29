SELECT
	(SELECT COUNT(musicas) FROM SpotifyClone.musicas) AS cancoes,
    (SELECT COUNT(artista) FROM SpotifyClone.artistas) AS artistas,
    (SELECT COUNT(album) FROM SpotifyClone.album) AS albuns;