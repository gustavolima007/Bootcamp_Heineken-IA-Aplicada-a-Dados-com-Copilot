SELECT
    e.idEquipe,
    e.NomeEquipe,
    COUNT(os.idOS) AS TotalOrdensConcluidas
FROM
    Equipe e
    JOIN OrdemServico os ON e.idEquipe = os.idEquipe
WHERE
    os.Status = 'Concluido'
GROUP BY
    e.idEquipe,
    e.NomeEquipe
ORDER BY
    TotalOrdensConcluidas DESC;