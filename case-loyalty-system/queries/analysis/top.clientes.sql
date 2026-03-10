-- Top 10 clientes por valor total gasto
SELECT c.email, SUM(i.quantidade * i.valor_unitario) AS total_gasto
FROM tb_clientes c
JOIN tb_vendas v ON c.id_cliente = v.id_cliente
JOIN tb_itens_venda i ON v.id_transacao = i.id_transacao
GROUP BY c.email ORDER BY total_gasto DESC LIMIT 10;