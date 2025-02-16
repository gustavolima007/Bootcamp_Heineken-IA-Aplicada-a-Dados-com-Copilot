SELECT
    c.idCliente,
    c.Nome,
    COUNT(p.idPedido) AS TotalPedidos
FROM
    Cliente c
    LEFT JOIN Pedido p ON c.idCliente = p.idCliente
GROUP BY
    c.idCliente,
    c.Nome
ORDER BY
    TotalPedidos DESC;