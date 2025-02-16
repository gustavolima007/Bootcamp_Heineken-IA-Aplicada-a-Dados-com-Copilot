CREATE VIEW
    vw_OrdemServicoDetalhada AS
SELECT
    os.idOS,
    os.DataEmissao,
    os.DataConclusao,
    os.Status,
    os.ValorTotal,
    v.Placa,
    v.Modelo,
    v.Marca,
    v.Ano,
    c.Nome AS NomeCliente,
    c.Endereco AS EnderecoCliente,
    c.Email AS EmailCliente,
    c.Telefone AS TelefoneCliente,
    e.NomeEquipe,
    GROUP_CONCAT (
        DISTINCT p.Nome
        ORDER BY
            p.Nome ASC SEPARATOR ', '
    ) AS Pecas,
    GROUP_CONCAT (
        DISTINCT s.Nome
        ORDER BY
            s.Nome ASC SEPARATOR ', '
    ) AS Servicos
FROM
    OrdemServico os
    JOIN Veiculo v ON os.idVeiculo = v.idVeiculo
    JOIN Cliente c ON v.idCliente = c.idCliente
    JOIN Equipe e ON os.idEquipe = e.idEquipe
    LEFT JOIN OS_Peca osp ON os.idOS = osp.idOS
    LEFT JOIN Peca p ON osp.idPeca = p.idPeca
    LEFT JOIN OS_Servico oss ON os.idOS = oss.idOS
    LEFT JOIN Servico s ON oss.idServico = s.idServico
GROUP BY
    os.idOS;