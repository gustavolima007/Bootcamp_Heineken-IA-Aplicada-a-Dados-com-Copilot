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
- 🔹 [Modelo Lógico](https://github.com/gustavolima007/Bootcamp_Heineken-IA-Aplicada-a-Dados-com-Copilot/blob/main/Banco%20de%20dados/Projeto%20para%20Oficina/Modelo%20conceitual.png)

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

## 📌 Regras de Negócio

- Um cliente pode ter vários veículos.
- Cada ordem de serviço pode ter múltiplos serviços e peças.
- O valor total da ordem é calculado com a soma dos serviços e peças.
- O estoque de peças é atualizado automaticamente.

## 📌 Como Utilizar

Clone o repositório:

```bash
git clone https://github.com/seu-usuario/nome-do-repositorio.git
