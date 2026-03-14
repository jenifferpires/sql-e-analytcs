USE curso_sql;

-- 1. CRIAÇÃO DA VIEW DE RELATÓRIO CONSOLIDADO
-- Esta view une as dimensões e fatos para facilitar qualquer análise posterior.
CREATE OR REPLACE VIEW vw_relatorio_vendas AS
SELECT 
    v.id_venda,
    v.data_venda,
    v.origem,
    c.id_cliente,
    c.pontos AS cliente_pontos_acumulados,
    p.nome AS nome_produto,
    p.categoria AS categoria_produto,
    iv.quantidade,
    iv.valor_unitario,
    (iv.quantidade * iv.valor_unitario) AS subtotal_venda
FROM tb_itens_venda iv
JOIN tb_vendas v ON iv.id_venda = v.id_venda
JOIN tb_produtos p ON iv.id_produto = p.id_produto
JOIN tb_clientes c ON v.id_cliente = c.id_cliente;

-- 2. ANÁLISE: Ranking de Faturamento por Categoria
-- Utilizada para identificar os produtos que mais geram receita.
SELECT 
    categoria_produto,
    COUNT(DISTINCT id_venda) AS total_vendas,
    SUM(quantidade) AS itens_vendidos,
    SUM(subtotal_venda) AS faturamento_total
FROM vw_relatorio_vendas
GROUP BY categoria_produto
ORDER BY faturamento_total DESC;

-- 3. ANÁLISE: Faturamento Mensal (Sazonalidade)
-- Essencial para identificar meses de pico nas plataformas (Twitch/YouTube).
SELECT 
    DATE_FORMAT(data_venda, '%Y-%m') AS mes_ano,
    COUNT(DISTINCT id_venda) AS total_pedidos,
    SUM(subtotal_venda) AS faturamento_mensal
FROM vw_relatorio_vendas
GROUP BY mes_ano
ORDER BY mes_ano DESC;

-- 4. ANÁLISE: Top Clientes por Engajamento e Compra
SELECT 
    id_cliente,
    cliente_pontos_acumulados,
    COUNT(id_venda) AS frequencia_compra,
    SUM(subtotal_venda) AS valor_gasto_total
FROM vw_relatorio_vendas
GROUP BY id_cliente, cliente_pontos_acumulados
ORDER BY valor_gasto_total DESC
LIMIT 10;