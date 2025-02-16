SELECT
    c.idCliente,
    c.Nome AS NomeCliente,
    COUNT(os.idOS) AS TotalOrdens
FROM
    Cliente c
    JOIN Veiculo v ON c.idCliente = v.idCliente
    JOIN OrdemServico os ON v.idVeiculo = os.idVeiculo
GROUP BY
    c.idCliente,
    c.Nome
HAVING
    COUNT(os.idOS) > 5
ORDER BY
    TotalOrdens DESC;