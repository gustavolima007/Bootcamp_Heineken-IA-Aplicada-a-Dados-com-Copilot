SELECT
    c.idCliente,
    c.Nome,
    SUM(pg.ValorPago) AS TotalGasto
FROM
    Cliente c
    JOIN Pedido p ON c.idCliente = p.idCliente
    JOIN Pagamento pg ON p.idPedido = pg.idPedido
WHERE
    pg.StatusPagamento = 'Aprovado'
GROUP BY
    c.idCliente,
    c.Nome
HAVING
    SUM(pg.ValorPago) > 1000
ORDER BY
    TotalGasto DESC;