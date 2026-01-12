
========================================================
Introdução ao SQL – Primeiros Comandos  
========================================================

Objetivo:   
Apresentar os primeiros contatos com SQL,   
demonstrando como consultar dados de uma tabela 
de forma simples e segura.  


-- -----------------------------------------------------    
-- Exemplo 1: Selecionar todos os registros de uma tabela   
-- Pergunta: O que existe dentro da tabela? 
-- -----------------------------------------------------    

SELECT  
    *   
FROM clientes;  


-- -----------------------------------------------------    
-- Exemplo 2: Selecionar colunas específicas    
-- Pergunta: Quais informações realmente preciso?   
-- -----------------------------------------------------    

SELECT  
    nome,   
    email   
FROM clientes;  


-- -----------------------------------------------------    
-- Exemplo 3: Limitar resultados    
-- Pergunta: Como visualizar apenas alguns registros?   
-- -----------------------------------------------------    

SELECT  
    *   
FROM clientes   
LIMIT 5;    


-- -----------------------------------------------------    
-- Exemplo 4: Ordenar dados 
-- Pergunta: Como ver os dados em ordem?    
-- -----------------------------------------------------    

SELECT  
    nome,   
    data_cadastro   
FROM clientes   
ORDER BY data_cadastro DESC;    


-- -----------------------------------------------------    
-- Exemplo 5: Combinar ORDER BY com LIMIT   
-- Pergunta: Quem são os clientes mais recentes?    
-- -----------------------------------------------------

SELECT  
    nome,   
    data_cadastro   
FROM clientes   
ORDER BY data_cadastro DESC 
LIMIT 3;    


-- -----------------------------------------------------    
-- Exemplo 6: Alias simples 
-- Pergunta: Como melhorar a legibilidade do resultado? 
-- -----------------------------------------------------    

SELECT  
    nome AS nome_cliente,   
    email AS email_cliente  
FROM clientes;  
