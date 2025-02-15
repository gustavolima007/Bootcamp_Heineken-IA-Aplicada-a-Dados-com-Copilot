CREATE TABLE
    Cliente (
        idCliente INT PRIMARY KEY,
        Nome VARCHAR(100),
        Email VARCHAR(100) UNIQUE,
        Telefone VARCHAR(20),
        Tipo VARCHAR(20),
        CPF VARCHAR(14) UNIQUE,
        CNPJ VARCHAR(18) UNIQUE
    );

CREATE TABLE
    Fornecedor (
        idFornecedor INT PRIMARY KEY,
        RazaoSocial VARCHAR(150),
        CNPJ VARCHAR(18) UNIQUE,
        Endereco VARCHAR(255)
    );

CREATE TABLE
    Produto (
        idProduto INT PRIMARY KEY,
        Nome VARCHAR(100),
        Categoria VARCHAR(50),
        Descricao TEXT,
        Valor DECIMAL(10, 2),
        idFornecedor INT,
        FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor)
    );

CREATE TABLE
    Estoque (
        idEstoque INT PRIMARY KEY,
        idProduto INT UNIQUE,
        Quantidade INT,
        FOREIGN KEY (idProduto) REFERENCES Produto (idProduto)
    );

CREATE TABLE
    Pedido (
        idPedido INT PRIMARY KEY,
        idCliente INT,
        DataPedido DATE,
        Status VARCHAR(50),
        EnderecoEntrega VARCHAR(255),
        FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente)
    );

CREATE TABLE
    Pedido_Produto (
        idPedido INT,
        idProduto INT,
        Quantidade INT,
        ValorUnitario DECIMAL(10, 2),
        PRIMARY KEY (idPedido, idProduto),
        FOREIGN KEY (idPedido) REFERENCES Pedido (idPedido),
        FOREIGN KEY (idProduto) REFERENCES Produto (idProduto)
    );

CREATE TABLE
    Pagamento (
        idPagamento INT PRIMARY KEY,
        idPedido INT,
        Metodo VARCHAR(50),
        ValorPago DECIMAL(10, 2),
        StatusPagamento VARCHAR(50),
        FOREIGN KEY (idPedido) REFERENCES Pedido (idPedido)
    );

CREATE TABLE
    Pedido_Entrega (
        idEntrega INT PRIMARY KEY,
        idPedido INT UNIQUE,
        StatusEntrega VARCHAR(50),
        CodigoRastreio VARCHAR(50),
        FOREIGN KEY (idPedido) REFERENCES Pedido (idPedido)
    );