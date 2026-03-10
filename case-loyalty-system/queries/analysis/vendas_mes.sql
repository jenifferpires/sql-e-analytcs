SELECT 
    DATE_FORMAT(data_venda, '%Y-%m') AS mes_ano,
    COUNT(DISTINCT id_transacao) AS total_pedidos,
    SUM(quantidade * valor_unitario) AS faturamento_mensal
FROM vw_relatorio_vendas
GROUP BY mes_ano
ORDER BY mes_ano DESC;