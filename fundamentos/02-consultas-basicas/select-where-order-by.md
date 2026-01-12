# SELECT, WHERE e ORDER BY  

Este arquivo aborda os três comandos mais fundamentais do SQL: 
**SELECT**, **WHERE** e **ORDER BY**. 

Eles formam a base de praticamente qualquer consulta em banco de dados 
e são amplamente utilizados em ambientes reais de trabalho, 
desde relatórios simples até sistemas complexos. 

--- 

## 🎯 Objetivo deste módulo: 

Ao final deste conteúdo, você será capaz de: 

- Consultar dados específicos de uma tabela. 
- Aplicar filtros para retornar apenas o que é relevante. 
- Ordenar os resultados de forma clara e previsível. 
- Compreender como esses comandos se relacionam entre si. 

--- 

## 📌 O comando SELECT 

O comando **SELECT** é utilizado para **consultar dados** em uma tabela. 

### Sintaxe básica:

```sql 
SELECT coluna1, coluna2 
FROM tabela; 
```

Exemplo prático:

```sql
SELECT nome, email
FROM clientes;
```

➡️ Retorna apenas as colunas nome e email da tabela clientes. 

Selecionando todas as colunas: 

```sql
SELECT *
FROM clientes; 
```
⚠️ Boa prática:     
Evite usar SELECT * em ambientes reais, pois: 

Retorna mais dados do que o necessário.  

Impacta performance. 

Dificulta leitura e manutenção da query.  

📌 O comando WHERE:   

O WHERE é usado para filtrar registros, retornando apenas aqueles 
que atendem a uma condição específica.  

Sintaxe básica: 

SELECT colunas  
FROM tabela  
WHERE condição;  

Exemplo simples:  

```sql 
SELECT nome, cidade
FROM clientes
WHERE cidade = 'São Paulo';
``` 

➡️ Retorna apenas clientes que moram em São Paulo.  

🔎 Operadores mais comuns no WHERE :  
Operador	    Descrição  
=	             Igual  
<> ou !=	     Diferente  
>	             Maior que  
<	             Menor que  
>=	             Maior ou igual  
<=	             Menor ou igual  
LIKE	         Busca por padrão  
IN	             Lista de valores  
BETWEEN	         Intervalo de valores  
IS NULL	         Valores nulos  

Exemplos:  
```sql
SELECT *
FROM pedidos
WHERE valor > 100;


SELECT *
FROM clientes
WHERE nome LIKE 'Ana%';

SELECT *
FROM pedidos
WHERE status IN ('PAGO', 'ENVIADO');
```

📌 O comando ORDER BY  
O ORDER BY define a ordem dos resultados retornados pela consulta.  

Sintaxe básica:  

SELECT colunas  
FROM tabela  
ORDER BY coluna;  

Ordenação crescente (padrão)  

```sql
SELECT nome, data_cadastro
FROM clientes
ORDER BY data_cadastro;
```

➡️ Ordena do mais antigo para o mais recente.  

Ordenação decrescente:  
 
```sql 
SELECT nome, data_cadastro
FROM clientes
ORDER BY data_cadastro DESC; 
```

➡️ Ordena do mais recente para o mais antigo.  

📊 Ordenando por mais de uma coluna:  
```sql 
SELECT nome, cidade, idade
FROM clientes
ORDER BY cidade ASC, idade DESC; 
```

➡️ Primeiro ordena por cidade (A–Z)      
➡️ Dentro da mesma cidade, ordena por idade (maior → menor)    

🧠 Ordem lógica de execução.  
Embora a query seja escrita assim:  

SELECT colunas   
FROM tabela   
WHERE condição   
ORDER BY coluna;   

O banco executa nesta ordem:   

FROM – identifica a tabela   
WHERE – filtra os dados   
SELECT – escolhe as colunas   
ORDER BY – organiza o resultado final.   

👉 Entender isso ajuda muito a debugar consultas e melhorar performance.   

🧪 Exemplo completo (cenário real):   

```sql
SELECT nome, email, data_cadastro
FROM clientes
WHERE ativo = 1
ORDER BY data_cadastro DESC; 

``` 

➡️ Retorna apenas clientes ativos. 
➡️ Mostra nome, email e data de cadastro. 
➡️ Ordena do mais recente para o mais antigo. 

Esse tipo de consulta é extremamente comum em:  

Telas administrativas. 
 
Relatórios. 

Dashboards. 

APIs. 

⚠️ Erros comuns:  
❌ Esquecer o WHERE e retornar dados demais.  
❌ Usar SELECT * sem necessidade.  
❌ Não ordenar resultados quando a ordem é importante.  
❌ Comparar valores nulos usando = NULL (o correto é IS NULL).  


✅ Boas práticas:  
✔️ Seja explícito nas colunas do SELECT.  
✔️ Use WHERE para limitar dados sempre que possível.  
✔️ Use ORDER BY quando a ordem importa para o negócio.  
✔️ Escreva queries legíveis e bem formatadas.  

