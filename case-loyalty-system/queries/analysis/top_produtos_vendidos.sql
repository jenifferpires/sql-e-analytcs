USE curso_sql;

-- Ranking de produtos por faturamento total
SELECT 
    p.nome_produto AS Produto,
    SUM(i.quantidade * i.valor_unitario) AS Faturamento_Total
FROM tb_itens_venda i
JOIN tb_produtos p ON i.id_produto = p.id_product
GROUP BY p.nome_produto
ORDER BY Faturamento_Total DESC
LIMIT 10;