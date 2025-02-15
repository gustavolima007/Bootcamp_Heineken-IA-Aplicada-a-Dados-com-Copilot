CREATE TABLE Cliente 
( 
 idCliente INT PRIMARY KEY,  
 Nome INT,  
 Email INT,  
 Telefone INT,  
 Tipo INT,  
 CPF INT,  
 CNPJ INT,  
 idPedido INT,  
); 

CREATE TABLE Fornecedor 
( 
 idFornecedor INT PRIMARY KEY,  
 RazaoSocial INT,  
 CNPJ INT,  
 Endereco INT,  
); 

CREATE TABLE Estoque 
( 
 idEstoque INT PRIMARY KEY,  
 idProduto INT PRIMARY KEY,  
 Quantidade INT,  
); 

CREATE TABLE Produto 
( 
 idProduto INT PRIMARY KEY,  
 Nome INT,  
 Categoria INT,  
 Descricao INT,  
 Valor INT,  
 idFornecedor INT PRIMARY KEY,  
); 

CREATE TABLE Pedido_Produto 
( 
 idPedido INT PRIMARY KEY,  
 idProduto INT PRIMARY KEY,  
 Quantidade INT,  
 ValorUnitario INT,  
); 

CREATE TABLE Pagamento 
( 
 idPagamento INT PRIMARY KEY,  
 idPedido INT PRIMARY KEY,  
 Metodo INT,  
 ValorPago INT,  
 StatusPagamento INT,  
); 

CREATE TABLE Rel 
( 
 idPedido INT PRIMARY KEY,  
 idProduto INT PRIMARY KEY,  
); 

CREATE TABLE Rel1 
( 
 idPedido INT PRIMARY KEY,  
 idPedido INT PRIMARY KEY,  
); 

CREATE TABLE Rel11 
( 
 idPedido INT PRIMARY KEY,  
 idEstoque INT PRIMARY KEY,  
); 

CREATE TABLE Rel111 
( 
 idProduto INT PRIMARY KEY,  
 idFornecedor INT PRIMARY KEY,  
); 

CREATE TABLE Rel1111 
( 
 idEstoque INT PRIMARY KEY,  
 idProduto INT PRIMARY KEY,  
); 

CREATE TABLE Pedido_Entrega 
( 
 idPedido INT PRIMARY KEY,  
 DataPedido INT,  
 Status INT,  
 EnderecoEntrega INT,  
 idEntrega INT PRIMARY KEY,  
 idPedido INT PRIMARY KEY,  
 StatusEntrega INT,  
 CodigoRastreio INT,  
); 

CREATE TABLE Rel11111 
( 
 idPedido INT PRIMARY KEY,  
 idPagamento INT PRIMARY KEY,  
); 

ALTER TABLE Cliente ADD FOREIGN KEY(idPedido) REFERENCES undefined (idPedido)
ALTER TABLE Rel ADD FOREIGN KEY(idPedido) REFERENCES Pedido_Produto (idPedido)
ALTER TABLE Rel ADD FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
ALTER TABLE Rel1 ADD FOREIGN KEY(idPedido) REFERENCES Pedido_Produto (idPedido)
ALTER TABLE Rel1 ADD FOREIGN KEY(idPedido) REFERENCES undefined (idPedido)
ALTER TABLE Rel11 ADD FOREIGN KEY(idPedido) REFERENCES undefined (idPedido)
ALTER TABLE Rel11 ADD FOREIGN KEY(idEstoque) REFERENCES Estoque (idEstoque)
ALTER TABLE Rel111 ADD FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
ALTER TABLE Rel111 ADD FOREIGN KEY(idFornecedor) REFERENCES Fornecedor (idFornecedor)
ALTER TABLE Rel1111 ADD FOREIGN KEY(idEstoque) REFERENCES Estoque (idEstoque)
ALTER TABLE Rel1111 ADD FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
ALTER TABLE Rel11111 ADD FOREIGN KEY(idPedido) REFERENCES Pedido_Entrega (idPedido)
ALTER TABLE Rel11111 ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento)
