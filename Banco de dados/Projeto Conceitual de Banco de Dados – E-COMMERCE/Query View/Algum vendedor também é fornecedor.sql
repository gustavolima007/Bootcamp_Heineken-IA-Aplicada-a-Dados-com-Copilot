SELECT
    c.idCliente,
    c.Nome AS NomeCliente,
    f.idFornecedor,
    f.RazaoSocial AS NomeFornecedor
FROM
    Cliente c
    JOIN Fornecedor f ON c.CNPJ = f.CNPJ;