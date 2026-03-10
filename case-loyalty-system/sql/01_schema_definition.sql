CREATE DATABASE IF NOT EXISTS curso_sql;
USE curso_sql;

CREATE TABLE IF NOT EXISTS tb_clientes (
    id_cliente VARCHAR(100) PRIMARY KEY,
    email VARCHAR(150),
    pontos INT
);

CREATE TABLE IF NOT EXISTS tb_produtos (
    id_product VARCHAR(100) PRIMARY KEY,
    nome_produto VARCHAR(150),
    categoria VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS tb_vendas (
    id_transacao VARCHAR(100) PRIMARY KEY,
    id_cliente VARCHAR(100),
    data_venda DATETIME
);

CREATE TABLE IF NOT EXISTS tb_itens_venda (
    id_item_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_transacao VARCHAR(100),
    id_produto VARCHAR(100),
    quantidade INT,
    valor_unitario DECIMAL(10,2)
);