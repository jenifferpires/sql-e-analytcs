
/*======================================================== 
Consultas Básicas em SQL 
SELECT | WHERE | ORDER BY | LIMIT | DISTINCT | ALIASES 
========================================================*/


/* -- Objetivo: 
Demonstrar o uso das principais cláusulas de consulta 
em SQL para leitura, filtragem e ordenação de dados, 
utilizando cenários comuns do dia a dia. --*/


/*-- ----------------------------------------------------- 
-- Exemplo 1: Selecionar todos os registros de uma tabela 
-- Pergunta: Quais dados existem na tabela de clientes? 
-- -----------------------------------------------------*/

SELECT 
    * 
FROM clientes; 


/*-- ----------------------------------------------------- 
-- Exemplo 2: Selecionar colunas específicas 
-- Pergunta: Quais são os nomes e e-mails dos clientes? 
-- -----------------------------------------------------*/

SELECT 
    nome, 
    email 
FROM clientes; 


/*-- ----------------------------------------------------- 
-- Exemplo 3: Filtrar registros com WHERE 
-- Pergunta: Quais clientes são da cidade de São Paulo? 
-- -----------------------------------------------------*/ 

SELECT 
    nome, 
    cidade 
FROM clientes 
WHERE cidade = 'São Paulo'; 



/*-- ----------------------------------------------------- 
-- Exemplo 4: Filtro com operadores relacionais 
-- Pergunta: Quais produtos custam mais de 100? 
-- -----------------------------------------------------*/

SELECT 
    nome_produto, 
    preco 
FROM produtos 
WHERE preco > 100; 



/*-- ----------------------------------------------------- 
-- Exemplo 5: Ordenar resultados com ORDER BY 
-- Pergunta: Listar produtos do mais caro para o mais barato 
-- -----------------------------------------------------*/ 

SELECT 
    nome_produto, 
    preco 
FROM produtos 
ORDER BY preco DESC; 



/*-- ----------------------------------------------------- 
-- Exemplo 6: Limitar quantidade de resultados 
-- Pergunta: Quais são os 5 produtos mais caros? 
-- -----------------------------------------------------*/

SELECT 
    nome_produto, 
    preco 
FROM produtos 
ORDER BY preco DESC 
LIMIT 5; 



/*-- ----------------------------------------------------- 
-- Exemplo 7: Evitar registros duplicados com DISTINCT 
-- Pergunta: Quais cidades possuem clientes cadastrados? 
-- -----------------------------------------------------*/

SELECT DISTINCT 
    cidade 
FROM clientes; 



/*-- ----------------------------------------------------- 
-- Exemplo 8: Uso de ALIAS para melhorar legibilidade 
-- Pergunta: Exibir total de pedidos por cliente 
-- -----------------------------------------------------*/ 

SELECT 
    cliente_id AS id_cliente, 
    COUNT(*) AS total_pedidos 
FROM pedidos 
GROUP BY cliente_id; 



/*-- ----------------------------------------------------- 
-- Exemplo 9: WHERE + ORDER BY 
-- Pergunta: Pedidos acima de 500 ordenados por valor 
-- -----------------------------------------------------*/

SELECT 
    id, 
    valor_total 
FROM pedidos 
WHERE valor_total > 500 
ORDER BY valor_total DESC; 



/*-- ----------------------------------------------------- 
-- Exemplo 10: Erro comum (ORDER BY antes do WHERE) 
-- -----------------------------------------------------*/

-- ❌ Consulta inválida: 
-- SELECT * 
-- FROM pedidos 
-- ORDER BY valor_total 
-- WHERE valor_total > 500; 


/*-- ----------------------------------------------------- 
-- Exemplo 11: Correção do erro 
-- -----------------------------------------------------*/

SELECT 
    * 
FROM pedidos 
WHERE valor_total > 500 
ORDER BY valor_total; 
