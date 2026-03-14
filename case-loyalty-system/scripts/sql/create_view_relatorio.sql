USE curso_sql;

-- Reconstruindo a View com os nomes corretos das colunas
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

-- 2. Testando o novo resultado humanizado
SELECT 
    nome_cliente, 
    email_contato, 
    SUM(subtotal_venda) AS total_gasto
FROM vw_relatorio_vendas 
GROUP BY nome_cliente, email_contato 
ORDER BY total_gasto DESC
LIMIT 5;