SELECT
	Pessoa.nome_pessoa_usuaria AS pessoa_usuaria,
    COUNT(Historico.musicas_id) AS musicas_ouvidas,
    ROUND(SUM(Musicas.duracao_segundos) / 60, 2) AS total_minutos
FROM
	SpotifyClone.usuarios AS Pessoa JOIN
    SpotifyClone.historico_de_musicas AS Historico ON Pessoa.pessoa_usuaria_id = Historico.pessoa_usuaria_id JOIN
    SpotifyClone.musicas AS Musicas ON Musicas.musicas_id = Historico.musicas_id
GROUP BY Pessoa.nome_pessoa_usuaria
ORDER BY Pessoa.nome_pessoa_usuaria;