# Projeto Conceitual de Banco de Dados – E-COMMERCE 📊

Bem-vindo ao repositório do Projeto Conceitual de Banco de Dados – E-COMMERCE. Este projeto tem como objetivo criar um modelo de banco de dados para um sistema de e-commerce, considerando diferentes cenários de clientes, pagamentos e entregas.

## Objetivo

Refine o modelo apresentado acrescentando os seguintes pontos:

- **Cliente PJ e PF**: Uma conta pode ser PJ (Pessoa Jurídica) ou PF (Pessoa Física), mas não pode ter as duas informações.
- **Pagamento**: Pode ter cadastrado mais de uma forma de pagamento.
- **Entrega**: Possui status e código de rastreio.

## Descrição do Projeto

Este projeto visa a criação de um banco de dados conceitual para um sistema de e-commerce. O modelo considera os principais aspectos necessários para a operação de um e-commerce, incluindo cadastro de clientes, métodos de pagamento e status de entrega.

## Estrutura do Banco de Dados

- **Produto**: Tabela para cadastro dos produtos vendidos na plataforma. Cada produto possui um fornecedor.
- **Estoque**: Tabela para controle do estoque dos produtos.
- **Cliente**: Tabela para cadastro de clientes, podendo ser Pessoa Física (PF) ou Pessoa Jurídica (PJ). O endereço do cliente determinará o valor do frete.
- **Pedido**: Tabela para registro dos pedidos realizados pelos clientes. Um pedido pode conter um ou mais produtos, é criado por um cliente e possui informações de compra, endereço e status da entrega. O pedido pode ser cancelado e possui um período de carência para devolução do produto.
- **Fornecedor**: Tabela para cadastro dos fornecedores dos produtos.

## Tecnologias Utilizadas

- [MySQL](https://www.mysql.com/)
- Br modelo

## Instalação

Para clonar e executar este projeto, você precisará ter o [Git](https://git-scm.com) instalado em seu computador. Em seguida, siga as instruções abaixo:

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/seu-repositorio.git

# Entre no diretório do projeto
cd seu-repositorio

# Execute o script SQL para criar o banco de dados
mysql -u seu-usuario -p < script.sql