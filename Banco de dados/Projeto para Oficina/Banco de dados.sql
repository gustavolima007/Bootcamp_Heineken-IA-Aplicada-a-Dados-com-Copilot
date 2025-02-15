CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(20)
);

CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT NOT NULL,
    Placa VARCHAR(20) NOT NULL UNIQUE,
    Modelo VARCHAR(255),
    Marca VARCHAR(255),
    Ano INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT,
    NomeEquipe VARCHAR(255) NOT NULL
);

CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    idEquipe INT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255),
    Especialidade VARCHAR(255),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
);

CREATE TABLE Peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    ValorUnitario DECIMAL(10, 2)
);

CREATE TABLE Servico (
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    TempoEstimado INT,
    ValorMaoDeObra DECIMAL(10, 2)
);

CREATE TABLE OrdemServico (
    idOS INT PRIMARY KEY AUTO_INCREMENT,
    idVeiculo INT NOT NULL,
    idEquipe INT NOT NULL,
    DataEmissao DATE NOT NULL,
    DataConclusao DATE,
    Status ENUM('Aguardando', 'Em Andamento', 'Concluido'),
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
);

CREATE TABLE OS_Peca (
    idOS INT NOT NULL,
    idPeca INT NOT NULL,
    Quantidade INT NOT NULL,
    ValorTotalPeca DECIMAL(10, 2),
    PRIMARY KEY (idOS, idPeca),
    FOREIGN KEY (idOS) REFERENCES OrdemServico(idOS),
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca)
);

CREATE TABLE OS_Servico (
    idOS INT NOT NULL,
    idServico INT NOT NULL,
    Quantidade INT NOT NULL,
    ValorTotalServico DECIMAL(10, 2),
    PRIMARY KEY (idOS, idServico),
    FOREIGN KEY (idOS) REFERENCES OrdemServico(idOS),
    FOREIGN KEY (idServico) REFERENCES Servico(idServico)
);

CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY AUTO_INCREMENT,
    idPeca INT NOT NULL,
    Quantidade INT NOT NULL,
    DataEntrada DATE,
    CustoAquisicao DECIMAL(10, 2),
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca)
);
