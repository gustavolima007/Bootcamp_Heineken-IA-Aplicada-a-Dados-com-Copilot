# 📌 Projeto E-Commerce - Banco de Dados

Este projeto faz parte do **Bootcamp Heineken - Inteligência Artificial Aplicada a Dados com Copilot** e tem como objetivo a modelagem conceitual, lógica e física de um banco de dados para um sistema de E-Commerce.

---

## 🏗️ Modelo Conceitual  

O modelo conceitual define a estrutura inicial do banco de dados, representando as entidades principais, seus atributos e relacionamentos. Ele serve como a base para a modelagem lógica e física, garantindo que o sistema atenda aos requisitos de um e-commerce típico.

### **Principais Entidades:**  
- **Cliente:** Dados do usuário, como nome, e-mail e endereço.  
- **Produto:** Informações sobre os produtos disponíveis para venda.  
- **Pedido:** Registro de compras feitas pelos clientes.  
- **Pagamento:** Métodos de pagamento e status das transações.  
- **Estoque:** Controle da disponibilidade dos produtos.  

## 📊 Modelo conceitual  

A modelagem conceitual foi feita utilizando diagramas e está disponível nos arquivos:  

- [Modelo Conceitual](https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot/blob/main/Banco%20de%20dados/Projeto%20Conceitual%20de%20Banco%20de%20Dados%20%E2%80%93%20E-COMMERCE/Modelo%20conceitual.png)  

---

## 📊 Modelo Lógico  

O modelo lógico representa a estrutura detalhada do banco de dados com tabelas, chaves primárias e estrangeiras, garantindo a normalização e a integridade dos dados. O diagrama lógico está disponível no arquivo:  
- [Modelo Lógico](https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot/blob/main/Banco%20de%20dados/Projeto%20Conceitual%20de%20Banco%20de%20Dados%20%E2%80%93%20E-COMMERCE/Modelo%20Logico.png)  


---

## 🗄️ Banco de Dados  

A estrutura do banco foi implementada utilizando SQL, incluindo a criação de tabelas e relações definidas no modelo lógico. O script SQL está disponível em:  
- [Banco de Dados.sql](https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot/blob/main/Banco%20de%20dados/Projeto%20Conceitual%20de%20Banco%20de%20Dados%20%E2%80%93%20E-COMMERCE/Banco%20de%20dados.sql)  

## 🗄️ Consultas (Query View) do banco de dados

- [Banco de Dados.sql](***)  

### 📌 Produtos mais vendidos e sua receita total 

```sql
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
```

### 📌 Quantos pedidos foram feitos por cada cliente

```sql
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
```

### 📌 Valor total gasto por cada cliente (Atributo Derivado)

```sql
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
```

---

## 🚀 Tecnologias Utilizadas  

- **Banco de Dados:** Oracle / MySQL  
- **Ferramentas de Modelagem:** BrModelo
- **Linguagem:** SQL  

---

## 📌 Como Usar  

1. Clone o repositório:  
   ```bash
   git clone https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot.git
