/* 
========================================================  
GROUP BY com Funções de Agregação 
SUM | COUNT | AVG | MIN | MAX 
========================================================  

Objetivo: 
Demonstrar o uso prático de GROUP BY combinado 
com funções de agregação em cenários reais. 
*/ 


/* 
-------------------------------------------------------- 
Exemplo 1: Total de vendas por cliente 
Pergunta: Quanto cada cliente já comprou? 
-------------------------------------------------------- 
*/ 

*/ 

SELECT 
    cliente_id, 
    SUM(valor) AS total_vendas 
FROM vendas 
GROUP BY cliente_id; 
 

/* 
-------------------------------------------------------- 
Exemplo 2: Quantidade de pedidos por status 
Uso comum em dashboards operacionais 
-------------------------------------------------------- 
*/ 

SELECT 
    status, 
    COUNT(*) AS quantidade_pedidos 
FROM pedidos 
GROUP BY status; 

 
/* 
-------------------------------------------------------- 
Exemplo 3: Média salarial por departamento 
-------------------------------------------------------- 
*/ 
SELECT 
    departamento, 
    AVG(salario) AS media_salarial 
FROM funcionarios 
GROUP BY departamento; 
 
 
/* 
-------------------------------------------------------- 
Exemplo 4: Menor e maior preço por categoria 
-------------------------------------------------------- 
*/ 
SELECT 
    categoria, 
    MIN(preco) AS menor_preco, 
    MAX(preco) AS maior_preco 
FROM produtos 
GROUP BY categoria; 
 

/* 
-------------------------------------------------------- 
Exemplo 5: GROUP BY com filtro usando WHERE 
O filtro ocorre ANTES do agrupamento 
-------------------------------------------------------- 
*/ 
SELECT 
    categoria, 
    SUM(valor) AS total_vendas 
FROM vendas 
WHERE data >= '2024-01-01' 
GROUP BY categoria; 
 

/* 
-------------------------------------------------------- 
Exemplo 6: GROUP BY com filtro usando HAVING 
O filtro ocorre DEPOIS do agrupamento 
-------------------------------------------------------- 
*/ 
SELECT 
    cliente_id, 
    SUM(valor) AS total_vendas 
FROM vendas 
GROUP BY cliente_id 
HAVING SUM(valor) > 1000; 
 
 
/* 
-------------------------------------------------------- 
Exemplo 7: Erro comum (exemplo inválido) 
Coluna não agregada fora do GROUP BY 
--------------------------------------------------------  
*/ 
-- ❌ Consulta inválida: 
-- SELECT cliente_id, valor 
-- FROM vendas 
-- GROUP BY cliente_id; 
 
 
/* 
-------------------------------------------------------- 
Exemplo 8: Correção do erro 
-------------------------------------------------------- 
*/ 
SELECT 
    cliente_id, 
    SUM(valor) AS valor_total 
FROM vendas 
GROUP BY cliente_id; 
 