USE curso_sql;

-- 1. Migração de Clientes (Limpando espaços extras)
INSERT IGNORE INTO tb_clientes (id_cliente, email, pontos)
SELECT 
    TRIM(idCliente), 
    TRIM(flEmail), 
    CAST(NULLIF(TRIM(qtdePontos), '') AS UNSIGNED) 
FROM clientes 
WHERE idCliente != 'idCliente';

-- 2. Migração de Vendas (Corrigindo o formato de Data)
INSERT IGNORE INTO tb_vendas (id_transacao, id_cliente, data_venda)
SELECT 
    TRIM(IdTransacao), 
    TRIM(IdCliente), 
    STR_TO_DATE(LEFT(TRIM(DtCriacao), 19), '%Y-%m-%d %H:%i:%s')
FROM transacoes
WHERE IdTransacao != 'IdTransacao';

-- 3. Migração de Itens (Tratando decimais e nulos)
INSERT IGNORE INTO tb_itens_venda (id_transacao, id_produto, quantidade, valor_unitario)
SELECT 
    TRIM(IdTransacao), 
    TRIM(IdProduto), 
    CAST(NULLIF(TRIM(QtdeProduto), '') AS UNSIGNED), 
    CAST(NULLIF(TRIM(vlProduto), '') AS DECIMAL(10,2))
FROM transacao_produto
WHERE IdTransacao != 'IdTransacao';