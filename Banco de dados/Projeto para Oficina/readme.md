# 📌 Sistema de Controle e Gerenciamento de Ordens de Serviço - Oficina Mecânica

## 📋 Descrição do Projeto

Repositório para o controle e gerenciamento de ordens de serviço em uma oficina mecânica. O sistema gerencia clientes, veículos, ordens de serviço, mecânicos, serviços e peças.

## 🛠️ Objetivo

Criar um banco de dados para otimizar:

- Cadastro de clientes e veículos.
- Registro e status das ordens de serviço.
- Equipes de mecânicos e valores de serviços/peças.

## 📌 Modelagem do Banco de Dados

- 🔹 [Modelo Conceitual](https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot/blob/main/Banco%20de%20dados/Projeto%20para%20Oficina/Modelo%20conceitual.png)
- 🔹 [Modelo Lógico](https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot/blob/main/Banco%20de%20dados/Projeto%20para%20Oficina/Modelo%20Logico.png)

## 📌 Estrutura do Banco de Dados

**Entidades e Relacionamentos**:

- **Cliente**: Pode ter vários veículos cadastrados.
- **Veículo**: Pertence a um único cliente e pode ter várias ordens de serviço.
- **Ordem de Serviço (OS)**: Contém dados do serviço, status, data e valor.
- **Equipe e Mecânicos**: Cada ordem é atribuída a uma equipe de mecânicos com especialidades.
- **Serviço**: Lista de serviços com tempo estimado e valor da mão de obra.
- **Peças**: Controle de peças usadas, com estoque e valor.

**Tabelas de Relacionamento**:

- **OS_Serviço**: Relaciona ordens de serviço e serviços executados.
- **OS_Peca**: Relaciona ordens de serviço e peças utilizadas.

## 🗄️ Consultas (Query View) do banco de dados

- [Todas as consultas: ](https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot/tree/main/Banco%20de%20dados/Projeto%20para%20Oficina/Query%20View)

## 📌 Ordem de Serviço Detalhada

```sql
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
    GROUP_CONCAT(DISTINCT p.Nome ORDER BY p.Nome ASC SEPARATOR ', ') AS Pecas,
    GROUP_CONCAT(DISTINCT s.Nome ORDER BY s.Nome ASC SEPARATOR ', ') AS Servicos
FROM
    OrdemServico os
JOIN
    Veiculo v ON os.idVeiculo = v.idVeiculo
JOIN
    Cliente c ON v.idCliente = c.idCliente
JOIN
    Equipe e ON os.idEquipe = e.idEquipe
LEFT JOIN
    OS_Peca osp ON os.idOS = osp.idOS
LEFT JOIN
    Peca p ON osp.idPeca = p.idPeca
LEFT JOIN
    OS_Servico oss ON os.idOS = oss.idOS
LEFT JOIN
    Servico s ON oss.idServico = s.idServico
GROUP BY
    os.idOS;
```

## 📌 Clientes com Mais Ordens de Serviço

```sql
SELECT
    c.idCliente,
    c.Nome AS NomeCliente,
    COUNT(os.idOS) AS TotalOrdens
FROM
    Cliente c
JOIN
    Veiculo v ON c.idCliente = v.idCliente
JOIN
    OrdemServico os ON v.idVeiculo = os.idVeiculo
GROUP BY
    c.idCliente, c.Nome
HAVING
    COUNT(os.idOS) > 5
ORDER BY
    TotalOrdens DESC;
```

## 📌 Peças mais Utilizadas

```sql
SELECT
    p.idPeca,
    p.Nome AS NomePeca,
    SUM(osp.Quantidade) AS QuantidadeTotal
FROM
    Peca p
JOIN
    OS_Peca osp ON p.idPeca = osp.idPeca
GROUP BY
    p.idPeca, p.Nome
ORDER BY
    QuantidadeTotal DESC;
```

## 📌 Regras de Negócio

- Um cliente pode ter vários veículos.
- Cada ordem de serviço pode ter múltiplos serviços e peças.
- O valor total da ordem é calculado com a soma dos serviços e peças.
- O estoque de peças é atualizado automaticamente.

## 📌 Como Utilizar

Clone o repositório:

```bash
git clone https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot.git
```
