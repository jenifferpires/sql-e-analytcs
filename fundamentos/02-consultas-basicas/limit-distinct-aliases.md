LIMIT, DISTINCT e ALIASES  

🎯 Objetivo deste módulo: 

Neste módulo você vai aprender três recursos fundamentais do SQL que ajudam a:   

Controlar a quantidade de resultados retornados. 
Eliminar dados duplicados. 
Melhorar a legibilidade das consultas. 

Esses conceitos são extremamente utilizados em ambientes reais de trabalho, especialmente em   análises, relatórios e investigações de dados.   

📌 LIMIT — Controlando a quantidade de registros.  

O que é o LIMIT?   

O LIMIT define quantas linhas o banco de dados deve retornar no resultado da consulta.    
Ele não altera os dados, apenas controla a exibição dos resultados.    

💡Quando usar?    
 
Testar consultas sem retornar muitos dados.  
Visualizar apenas os primeiros registros.    
Trabalhar com paginação.  
Evitar consultas pesadas em bases grandes.   

Exemplo básico:    

```sql  
SELECT *   
FROM clientes   
LIMIT 5;    
```  


🔎 O que acontece aqui?    

O banco retorna apenas os 5 primeiros registros da tabela clientes.    

LIMIT com ORDER BY (uso mais comum)    

```sql 
SELECT nome, data_cadastro   
FROM clientes   
ORDER BY data_cadastro DESC   
LIMIT 10;   
``` 


📌 Retorna os 10 clientes mais recentes.   

🧠 Boa prática: quase sempre use LIMIT junto com ORDER BY para garantir previsibilidade no   resultado.   

LIMIT com OFFSET (introdução à paginação)   

```sql  
SELECT *  
FROM pedidos  
ORDER BY data_pedido  
LIMIT 10 OFFSET 10;  
```  
 

📌 Ignora os 10 primeiros registros e retorna os próximos 10.   

📌 DISTINCT — Eliminando valores duplicados.  


O que é o DISTINCT?    

O DISTINCT remove valores duplicados do resultado da consulta.   
Ele age sobre as colunas selecionadas, não sobre a linha inteira.   

Exemplo simples :  

```sql 
SELECT DISTINCT cidade  
FROM clientes;   
``` 


📌 Retorna apenas uma ocorrência de cada cidade, mesmo que existam vários clientes na mesma cidade.  

DISTINCT em múltiplas colunas: 

```sql
SELECT DISTINCT cidade, estado  
FROM clientes; 
``` 

📌 A combinação cidade + estado precisa ser única.  

⚠️ Importante:  
Se apenas uma coluna variar, o registro não será considerado duplicado. 


💡Quando usar DISTINCT?  

Listar categorias únicas  . 
Identificar variações de dados.  
Evitar duplicações em relatórios.    
Limpeza visual de resultados.   


📌 ALIASES — Tornando consultas mais legíveis. 

O que é um alias?  

Um alias é um nome temporário dado a:   

Colunas    
Tabelas    

Ele existe apenas durante a execução da consulta.  

🔹 Alias para colunas:

Exemplo simples:  

```sql
SELECT nome AS cliente, email AS contato 
FROM clientes; 
```

📌 O resultado exibirá as colunas com nomes mais claros.  

Alias sem o AS (válido no MySQL)  

```sql
SELECT nome cliente, email contato 
FROM clientes;  
```


💡 Funciona da mesma forma, mas o uso de AS melhora a legibilidade.  

🔹 Alias para tabelas:

Muito utilizado em consultas maiores, principalmente com JOIN.  

```sql 
SELECT c.nome, p.valor 
FROM clientes c 
JOIN pedidos p ON c.id = p.cliente_id;  
``` 

 
📌 Aqui:  

c representa a tabela clientes .
p representa a tabela pedidos. 


Benefícios dos aliases : 

Código mais limpo.   
Consultas mais curtas.   
Melhor leitura em joins e subqueries.   
Padrão profissional de escrita SQL.  


🧠 Boas práticas deste módulo: 

✅ Use LIMIT ao explorar dados. 

✅ Combine LIMIT com ORDER BY.

✅ Use DISTINCT com atenção ao contexto. 

✅ Sempre utilize aliases em consultas médias ou grandes.


# 📎 Resumo Rápido: Comandos Básicos.

| Conceito | Para que serve |
| :--- | :--- |
| **LIMIT** | Controla a quantidade de registros retornados na consulta. |
| **DISTINCT** | Remove registros duplicados, retornando apenas valores únicos. |
| **ALIAS (AS)** | Renomeia colunas ou tabelas temporariamente para melhorar a legibilidade. |           
