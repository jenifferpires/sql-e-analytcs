SELECT 
    p.categoria,
    SUM(i.quantidade * i.valor_unitario) AS faturamento_total
FROM tb_itens_venda i
JOIN tb_produtos p ON i.id_produto = p.id_product
GROUP BY p.categoria
ORDER BY faturamento_total DESC;