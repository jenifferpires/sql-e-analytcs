USE curso_sql;

-- 1. DESATIVAÇÃO DE TRAVAS PARA MANUTENÇÃO
SET FOREIGN_KEY_CHECKS = 0;
SET AUTOCOMMIT = 0;

-- 2. LIMPEZA DAS TABELAS REFINADAS
TRUNCATE TABLE tb_itens_venda;
TRUNCATE TABLE tb_vendas;
TRUNCATE TABLE tb_produtos;
TRUNCATE TABLE tb_clientes;

-- 3. REFINAMENTO: tb_clientes
-- Convertendo pontos para número e formatando a data de criação
INSERT INTO tb_clientes (id_cliente, pontos, dt_criacao)
SELECT 
    TRIM(idCliente), 
    CAST(NULLIF(TRIM(qtdePontos), '') AS UNSIGNED), 
    STR_TO_DATE(LEFT(TRIM(DtCriacao), 19), '%Y-%m-%d %H:%i:%s')
FROM stg_clientes;

-- 4. REFINAMENTO: tb_produtos
-- Limpando espaços em branco e padronizando categorias
INSERT INTO tb_produtos (id_produto, nome, categoria)
SELECT 
    TRIM(IdProduto), 
    TRIM(DescNomeProduto), 
    TRIM(DescCategoriaProduto)
FROM stg_produtos;

-- 5. REFINAMENTO: tb_vendas (Fato)
-- Uso de INSERT IGNORE para evitar erro 1062 de duplicidade
INSERT IGNORE INTO tb_vendas (id_venda, id_cliente, data_venda, origem)
SELECT 
    TRIM(IdTransacao), 
    TRIM(IdCliente), 
    STR_TO_DATE(LEFT(TRIM(DtCriacao), 19), '%Y-%m-%d %H:%i:%s'),
    TRIM(DescSistemaOrigem)
FROM stg_transacoes;

-- 6. REFINAMENTO: tb_itens_venda (Fato Detalhe)
-- Tratamento para erro 1452: garantindo que apenas itens de produtos cadastrados entrem
INSERT INTO tb_itens_venda (id_item_venda, id_venda, id_produto, quantidade, valor_unitario)
SELECT 
    TRIM(idTransacaoProduto), 
    TRIM(IdTransacao), 
    TRIM(IdProduto),
    CAST(NULLIF(TRIM(QtdeProduto), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(vlProduto), '') AS DECIMAL(10,2))
FROM stg_transacao_produto
WHERE TRIM(IdProduto) IN (SELECT id_produto FROM tb_produtos);

-- 7. FINALIZAÇÃO E ATIVAÇÃO DE TRAVAS
COMMIT;
SET FOREIGN_KEY_CHECKS = 1;
SET AUTOCOMMIT = 1;

-- 8. CONFERÊNCIA FINAL
SELECT 'Concluído' AS Status, COUNT(*) AS Total_Itens FROM tb_itens_venda;