SELECT
    YEAR (os.DataConclusao) AS Ano,
    MONTH (os.DataConclusao) AS Mes,
    SUM(os.ValorTotal) AS ReceitaTotal
FROM
    OrdemServico os
WHERE
    os.Status = 'Concluido'
GROUP BY
    YEAR (os.DataConclusao),
    MONTH (os.DataConclusao)
ORDER BY
    Ano,
    Mes;