SELECT
    p.idProduto,
    p.Nome AS NomeProduto,
    SUM(pp.Quantidade) AS TotalVendido,
    SUM(pp.Quantidade * pp.ValorUnitario) AS ReceitaTotal
FROM
    Pedido_Produto pp
    JOIN Produto p ON pp.idProduto = p.idProduto
GROUP BY
    p.idProduto,
    p.Nome
HAVING
    SUM(pp.Quantidade) > 10
ORDER BY
    ReceitaTotal DESC;