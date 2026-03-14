USE curso_sql;

-- =========================================================================
-- 1. CAMADA DE ABSTRAÇÃO: VIEW CONSOLIDADA E HUMANIZADA
-- Descrição: Une dimensões e fatos, trazendo nomes e e-mails higienizados.
-- =========================================================================
CREATE OR REPLACE VIEW vw_relatorio_vendas AS
SELECT 
    v.id_venda,
    v.data_venda,
    v.origem,
    c.nome AS nome_cliente,
    c.email AS email_contato,
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

-- =========================================================================
-- 2. KPI: TOP 5 CLIENTES POR FATURAMENTO (ATENDIMENTO VIP)
-- Objetivo: Identificar usuários para ações de fidelidade personalizadas.
-- =========================================================================
SELECT 
    nome_cliente, 
    email_contato, 
    SUM(subtotal_venda) AS total_gasto
FROM vw_relatorio_vendas 
GROUP BY nome_cliente, email_contato 
ORDER BY total_gasto DESC
LIMIT 5;

-- =========================================================================
-- 3. KPI: PERFORMANCE POR CATEGORIA DE PRODUTO
-- Objetivo: Validar quais categorias dominam o volume financeiro.
-- =========================================================================
SELECT 
    categoria_produto,
    COUNT(DISTINCT id_venda) AS volume_pedidos,
    SUM(subtotal_venda) AS faturamento_categoria
FROM vw_relatorio_vendas
GROUP BY categoria_produto
ORDER BY faturamento_categoria DESC;

-- =========================================================================
-- 4. KPI: TICKET MÉDIO POR ORIGEM (TWITCH, YOUTUBE, ETC)
-- Objetivo: Avaliar qual canal de aquisição gera vendas mais valiosas.
-- =========================================================================
SELECT 
    origem,
    ROUND(AVG(subtotal_venda), 2) AS ticket_medio
FROM vw_relatorio_vendas
GROUP BY origem
ORDER BY ticket_medio DESC;