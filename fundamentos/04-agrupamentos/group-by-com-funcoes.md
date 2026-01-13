📊 GROUP BY com Funções de Agregação. 
🎯 Objetivo: 

Este arquivo aprofunda o uso do GROUP BY combinado com funções de agregação, permitindo analisar dados de forma consolidada e responder perguntas comuns em cenários reais de negócio. 

Ao final deste conteúdo, você será capaz de: 

Agrupar dados corretamente.
Aplicar funções de agregação.
Combinar GROUP BY com WHERE e HAVING.
Interpretar resultados agregados.
Evitar erros comuns em análises.

🧠 O que são Funções de Agregação? 

Funções de agregação processam múltiplas linhas e retornam um único valor por grupo. 

Principais funções: 

SUM() → soma valores 
COUNT() → quantidade de registros 
AVG() → média 
MIN() → menor valor 
MAX() → maior valor 

📌 Essas funções são a base de relatórios, métricas e dashboards. 

🧩 Sintaxe Básica: 

```sql
SELECT
    coluna_agrupamento,
    FUNCAO_AGREGACAO(coluna)
FROM tabela
GROUP BY coluna_agrupamento;
```
 
📌 Regra de ouro (reforço): 

Toda coluna no SELECT que não está dentro de uma função de agregação
deve aparecer no GROUP BY. 

📊 Exemplos Práticos: 
1️⃣ Total de vendas por cliente.

Pergunta: 
Quanto cada cliente já comprou?    

```sql  
SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id;
```

2️⃣ Quantidade de pedidos por status. 

Pergunta: 
Quantos pedidos existem em cada status? 

```sql 
SELECT
    status,
    COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY status;
```


📌 Muito usado em dashboards operacionais. 

3️⃣ Média salarial por departamento. 

```sql 
SELECT
    departamento,
    AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento;
```

4️⃣ Menor e maior preço por categoria.

```sql
SELECT
    categoria,
    MIN(preco) AS menor_preco,
    MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria;
```

🔗 GROUP BY com WHERE. 

Use WHERE para filtrar dados antes do agrupamento. 

Exemplo: 

Total de vendas por categoria em 2024. 

```sql
SELECT
    categoria,
    SUM(valor) AS total_vendas
FROM vendas
WHERE data >= '2024-01-01'
GROUP BY categoria;
```

🔗 GROUP BY com HAVING. 

Use HAVING para filtrar os grupos após o agrupamento. 

Exemplo:

Clientes com faturamento total acima de 1000.
```sql 
SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 1000;
```

⚠️ Erros Comuns:
❌ Coluna fora do GROUP BY  

```sql
SELECT cliente_id, valor  
FROM vendas  
GROUP BY cliente_id;  
```

🚫 valor não está agregado nem no GROUP BY. 

✔️ Correto: 
```sql 
SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id;
```

🧠 Boas Práticas: 

Use aliases claros para colunas agregadas. 

Evite SELECT * com GROUP BY.

Filtre dados cedo com WHERE. 

Use HAVING apenas quando necessário. 

Sempre valide o resultado do agrupamento.

📘 Uso no Mundo Real: 

Funções de agregação com GROUP BY são usadas em: 

Relatórios financeiros.

KPIs.

Dashboards.

Análises de performance.

Decisões estratégicas.

📌 Este é um dos recursos mais usados do SQL em ambientes profissionais. 

🚀 Próximo Passo: 

➡ Exercícios práticos de Agrupamentos. 
➡ GROUP BY com múltiplas colunas. 
➡ GROUP BY + JOIN (ponte para Intermediário). 

📌 Resumo 

GROUP BY com funções de agregação transforma dados brutos
em informações consolidadas e acionáveis. 