SELECT
    p.idProduto,
    p.Nome AS NomeProduto,
    f.RazaoSocial AS NomeFornecedor,
    e.Quantidade AS EstoqueDisponivel
FROM
    Produto p
    JOIN Fornecedor f ON p.idFornecedor = f.idFornecedor
    LEFT JOIN Estoque e ON p.idProduto = e.idProduto
ORDER BY
    EstoqueDisponivel DESC;