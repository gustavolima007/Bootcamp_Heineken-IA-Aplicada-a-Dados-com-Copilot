SELECT
    p.idPeca,
    p.Nome AS NomePeca,
    SUM(osp.Quantidade) AS QuantidadeTotal
FROM
    Peca p
    JOIN OS_Peca osp ON p.idPeca = osp.idPeca
GROUP BY
    p.idPeca,
    p.Nome
ORDER BY
    QuantidadeTotal DESC;