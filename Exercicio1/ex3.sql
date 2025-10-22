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

