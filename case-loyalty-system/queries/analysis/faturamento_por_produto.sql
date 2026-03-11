USE curso_sql;

SELECT 
    nome_produto AS Produto, 
    SUM(total_item) AS Faturamento_Total 
FROM vw_relatorio_vendas 
GROUP BY nome_produto 
ORDER BY Faturamento_Total DESC;