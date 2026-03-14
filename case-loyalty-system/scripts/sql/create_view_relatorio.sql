/* PROJETO: SQL & Analytics
   OBJETIVO: Criar uma visão consolidada de vendas para análise de faturamento.
   TABELAS UTILIZADAS: tb_itens_venda, tb_produtos
*/

USE curso_sql;

-- 1. Remoção da View anterior para atualização
DROP VIEW IF EXISTS vw_relatorio_vendas;

-- 2. Criação da View com métricas de faturamento
CREATE VIEW vw_relatorio_vendas AS
SELECT 
    p.nome_produto AS Produto,
    p.categoria AS Categoria,
    i.quantidade AS Qtd_Vendida,
    i.valor_unitario AS Preco_Unit,
    (i.quantidade * i.valor_unitario) AS Faturamento_Item
FROM tb_itens_venda i
JOIN tb_produtos p ON i.id_produto = p.id_produto;

-- 3. Teste de validação
SELECT * FROM vw_relatorio_vendas LIMIT 10;