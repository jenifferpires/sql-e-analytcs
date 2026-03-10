SELECT 
    `E-mail do Cliente`, 
    COUNT(*) AS Qtd_Compras, 
    SUM(`Total do Item`) AS Gasto_Total 
FROM vw_relatorio_vendas 
GROUP BY `E-mail do Cliente` 
ORDER BY Gasto_Total DESC;