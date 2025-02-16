SELECT
    f.RazaoSocial AS NomeFornecedor,
    p.Nome AS NomeProduto
FROM
    Fornecedor f
    JOIN Produto p ON f.idFornecedor = p.idFornecedor
ORDER BY
    f.RazaoSocial,
    p.Nome;