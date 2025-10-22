CREATE DATABASE vendas;
USE vendas;

CREATE TABLE Produto (
    Codigo_Produto INT PRIMARY KEY,
    Descricao_Produto VARCHAR(30),
    Preco_Produto FLOAT
);

CREATE TABLE Nota_Fiscal (
    Numero_NF INT PRIMARY KEY,
    Data_NF DATE,
    Valor_NF FLOAT
);

CREATE TABLE Itens (
    Produto_Codigo_Produto INT,
    Nota_fiscal_Numero_NF INT,
    Num_Item INT,
    Qtde_Item INT,
    PRIMARY KEY (Produto_Codigo_Produto, Nota_fiscal_Numero_NF),
    FOREIGN KEY (Produto_Codigo_Produto) REFERENCES Produto(Codigo_Produto),
    FOREIGN KEY (Nota_fiscal_Numero_NF) REFERENCES Nota_Fiscal(Numero_NF)
);

ALTER TABLE Produto
MODIFY Descricao_Produto VARCHAR(50);

ALTER TABLE Nota_Fiscal
ADD ICMS FLOAT AFTER Numero_NF;

ALTER TABLE Produto
ADD Peso FLOAT;
