SELECT
	musicas AS cancao,
    COUNT(historico.musicas_id) AS reproducoes
FROM
	SpotifyClone.musicas AS musicas JOIN
    SpotifyClone.historico_de_musicas AS historico ON
    musicas.musicas_id = historico.musicas_id
GROUP BY musicas.musicas
ORDER BY COUNT(historico.musicas_id) DESC, musicas.musicas
LIMIT 2;