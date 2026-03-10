SELECT 
    Produto, 
    SUM(`Total do Item`) AS Faturamento_Total 
FROM vw_relatorio_vendas 
GROUP BY Produto 
ORDER BY Faturamento_Total DESC;