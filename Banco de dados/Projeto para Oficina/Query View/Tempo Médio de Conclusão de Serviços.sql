SELECT
    s.Nome AS NomeServico,
    AVG(DATEDIFF (os.DataConclusao, os.DataEmissao)) AS TempoMedioDias
FROM
    Servico s
    JOIN OS_Servico oss ON s.idServico = oss.idServico
    JOIN OrdemServico os ON oss.idOS = os.idOS
WHERE
    os.Status = 'Concluido'
GROUP BY
    s.Nome
ORDER BY
    TempoMedioDias ASC;