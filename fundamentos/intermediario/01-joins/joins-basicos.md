# JOINs Básicos no SQL.

## 📌 Objetivo: 

Este material aprofunda o uso dos **JOINs mais utilizados no SQL**, explicando **como eles funcionam**, **quando usar cada um** e **quais resultados esperar**.

Ao final deste conteúdo, você será capaz de: 

- Entender a diferença entre os tipos de JOIN  
- Escolher o JOIN correto para cada cenário  
- Ler e interpretar consultas com múltiplas tabelas  
- Evitar erros comuns de relacionamento  

---

## 🧠 O que é um JOIN?

Um `JOIN` é usado para **combinar dados de duas ou mais tabelas** com base em uma **condição de relacionamento**, normalmente uma **chave estrangeira**.

Exemplo mental:

- Tabela `clientes`  
- Tabela `pedidos`  
- Um cliente pode ter vários pedidos  

O JOIN conecta essas tabelas para gerar informações completas.

---

## 🧩 Sintaxe Geral de um JOIN 

```sql
SELECT colunas
FROM tabela_a
JOIN tabela_b
  ON tabela_a.coluna = tabela_b.coluna;
```

📌 A cláusula ON define como as tabelas se relacionam.

🔗 INNER JOIN
📌 O que faz?

Retorna apenas os registros que existem nas duas tabelas.

👉 É o JOIN mais utilizado.

🧠 Pensamento mental:

“Traga apenas o que está relacionado em ambas as tabelas.”

📄 Exemplo:
```sql
SELECT
    clientes.nome,
    pedidos.id_pedido
FROM clientes
INNER JOIN pedidos
    ON clientes.id = pedidos.cliente_id;
``` 

    ✔️ Retorna apenas clientes que possuem pedidos.

🔗 LEFT JOIN
📌 O que faz?

Retorna todos os registros da tabela da esquerda, mesmo que não exista correspondência na tabela da direita.

🧠 Pensamento mental:

“Traga tudo da tabela principal, mesmo sem relacionamento.”

📄 Exemplo: 

```sql
SELECT
    clientes.nome,
    pedidos.id_pedido
FROM clientes
LEFT JOIN pedidos
    ON clientes.id = pedidos.cliente_id;
```

✔️ Clientes sem pedidos aparecem com valores NULL nos campos de pedidos.

🔗 RIGHT JOIN
📌 O que faz?

Retorna todos os registros da tabela da direita, mesmo sem correspondência na tabela da esquerda.

📄 Exemplo:
```sql
SELECT
    clientes.nome,
    pedidos.id_pedido
FROM clientes
RIGHT JOIN pedidos
    ON clientes.id = pedidos.cliente_id;
```
📌 Menos utilizado — geralmente pode ser reescrito como um LEFT JOIN.

🔄 Comparação Rápida: 
JOIN	Retorna
INNER JOIN	Apenas registros relacionados
LEFT JOIN	Tudo da esquerda + relacionados
RIGHT JOIN	Tudo da direita + relacionados


⚠️ Erros Comuns com JOINs 
❌ Esquecer a condição ON 
```sql
SELECT *
FROM clientes
JOIN pedidos;
```

🚫 Gera produto cartesiano (resultado incorreto).

❌ Usar JOIN errado para o objetivo 

Exemplo: 

Quer listar todos os clientes → usar INNER JOIN ❌ 

Correto: LEFT JOIN ✅ 

🧠 Boas Práticas: 

Sempre deixe claro qual tabela é a principal. 
Use aliases curtos e claros.
Prefira LEFT JOIN quando quiser garantir registros.
Evite SELECT * em JOINs.
Valide o resultado com LIMIT. 

🔗 JOINs e Próximos Conceitos

JOINs são a base para:

Subqueries 
CTEs 
Funções de agregação com múltiplas tabelas 

Se JOIN não estiver claro, os próximos módulos ficam difíceis. 

📘 Resumo 

JOINs conectam dados espalhados em múltiplas tabelas.
Dominar JOINs é o que separa SQL básico de SQL analítico profissional. 



