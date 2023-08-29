SELECT
	COUNT(h.musicas_id) AS musicas_no_historico
FROM
	SpotifyClone.historico_de_musicas AS h JOIN
    SpotifyClone.usuarios AS u ON
    u.pessoa_usuaria_id = h.pessoa_usuaria_id
WHERE
	u.nome_pessoa_usuaria = 'Barbara Liskov';