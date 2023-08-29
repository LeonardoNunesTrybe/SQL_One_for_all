SELECT
	usuarios.nome_pessoa_usuaria AS pessoa_usuaria,
    CASE
		WHEN MAX(historico.data_reproducao) >= '2021-01-01'
			THEN 'Ativa'
            ELSE 'Inativa'
            END
		AS status_pessoa_usuaria
FROM 
	SpotifyClone.usuarios AS usuarios JOIN
	SpotifyClone.historico_de_musicas AS historico ON
    historico.pessoa_usuaria_id = usuarios.pessoa_usuaria_id
GROUP BY usuarios.nome_pessoa_usuaria
ORDER BY usuarios.nome_pessoa_usuaria;