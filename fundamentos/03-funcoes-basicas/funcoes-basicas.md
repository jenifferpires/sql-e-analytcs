# Funções Básicas em SQL

As **funções SQL** são utilizadas para **manipular, transformar e analisar dados**
retornados pelas consultas.

Elas permitem realizar cálculos, tratar textos, datas e valores nulos,
tornando as consultas mais poderosas e expressivas.

Neste módulo, vamos estudar as **funções mais utilizadas no dia a dia**,
com foco em clareza conceitual e aplicação prática em MySQL.

---

## 🎯 O que são funções em SQL?

Uma **função** é um comando que:

- Recebe **um ou mais valores** como entrada.
- Executa uma operação específica.
- Retorna **um único valor** como resultado.

📌 Funções geralmente são usadas dentro do `SELECT`, `WHERE`, `ORDER BY` ou `HAVING`.

Exemplo simples: 
```sql
SELECT UPPER('sql');

Resultado:
SQL
```
🧠 Tipos de funções
As funções em SQL podem ser agrupadas em categorias:

🔢 Funções Numéricas
Utilizadas para cálculos matemáticos.

Exemplos:

COUNT()

SUM()

AVG()

MIN()

MAX()

ROUND()

🔤 Funções de Texto (String)
Utilizadas para manipular textos.

Exemplos:

UPPER()

LOWER()

LENGTH()

CONCAT()

SUBSTRING()

TRIM()

📅 Funções de Data e Hora
Utilizadas para trabalhar com datas.

Exemplos:

NOW()

CURDATE()

YEAR()

MONTH()

DATEDIFF()

🚫 Funções de Tratamento de NULL
Utilizadas para lidar com valores nulos.

Exemplos:

IS NULL

IS NOT NULL

IFNULL()

COALESCE()

🔢 Funções Numéricas – Conceitos
COUNT()
Conta a quantidade de registros.

``` sql
SELECT COUNT(*) FROM clientes;
```

📌 Conta todas as linhas, inclusive com valores nulos.

```sql
SELECT COUNT(email) FROM clientes;
```

📌 Conta apenas linhas onde email não é NULL.

SUM() e AVG()
Somam ou calculam a média de valores numéricos.

```sql
SELECT SUM(valor) FROM pedidos;
SELECT AVG(valor) FROM pedidos;
MIN() e MAX()
``` 
Retornam o menor ou maior valor.

```sql
SELECT MIN(preco), MAX(preco) FROM produtos;
```

🔤 Funções de Texto – Conceitos
UPPER() e LOWER()
Convertem textos para maiúsculas ou minúsculas. 

```sql
SELECT UPPER(nome), LOWER(email) FROM usuarios;
LENGTH()
```
Retorna o tamanho de uma string.

```sql
SELECT LENGTH(nome) FROM clientes;
CONCAT()
```
Concatena textos.

```sql
SELECT CONCAT(nome, ' ', sobrenome) AS nome_completo
FROM clientes;
```
📌 Muito utilizada para montar campos derivados.

📅 Funções de Data – Conceitos. 
NOW() e CURDATE()
Retornam data e hora atuais. 

```sql
SELECT NOW();
SELECT CURDATE();
```
Extraindo partes da data.

```sql
SELECT YEAR(data_pedido), MONTH(data_pedido)
FROM pedidos;
DATEDIFF()
```
Calcula a diferença entre duas datas (em dias).

```sql
SELECT DATEDIFF(data_fim, data_inicio) FROM contratos;
```

🚫 Tratamento de valores NULL
IS NULL e IS NOT NULL 
Utilizados para filtrar valores nulos. 

```sql
SELECT * FROM clientes WHERE email IS NULL;
IFNULL()
```
Substitui valores NULL por outro valor.

```sql
SELECT IFNULL(email, 'Não informado') FROM clientes;
COALESCE()`
```
Retorna o primeiro valor não nulo da lista.

```sql
SELECT COALESCE(telefone, celular, 'Sem contato')
FROM clientes;
```

⚠️ Pontos de Atenção: 
Funções podem impactar performance em grandes volumes de dados. 
Usar funções no WHERE pode impedir uso de índices.
Sempre valide se o tipo do dado é compatível com a função. 

📌 Conclusão: 
As funções básicas são essenciais para: 

Análise de dados. 

Criação de relatórios. 

Limpeza e padronização de informações. 

Resolução de problemas reais em ambientes corporativos.

Dominar essas funções é um passo fundamental
antes de avançar para JOINs, subqueries e funções analíticas. 


