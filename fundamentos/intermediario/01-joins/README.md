# 01 – JOINs Básicos

## 📌 Objetivo do Módulo

Este módulo introduz o conceito de **JOINs em SQL**, fundamentais para trabalhar com **dados relacionais** distribuídos em múltiplas tabelas.

Ao final deste módulo, você será capaz de:

- Entender por que JOINs existem
- Relacionar tabelas corretamente
- Escolher o tipo de JOIN adequado para cada cenário
- Evitar erros comuns de relacionamento
- Criar consultas mais realistas e próximas do mercado

---

## 🧠 Por que JOINs são importantes?

Em bancos de dados relacionais:

- Dados **não ficam todos em uma única tabela**
- Informações são separadas para evitar duplicidade
- JOINs permitem **reconstruir a visão completa dos dados**

📌 **Sem JOINs, não existe análise real em SQL.**

---

## 🔗 O que é um JOIN?

Um `JOIN` é uma operação que **combina linhas de duas ou mais tabelas** com base em uma **condição de relacionamento**.

Exemplo conceitual:

- Tabela `clientes`
- Tabela `pedidos`
- Relacionamento: `clientes.id = pedidos.cliente_id`

---

## 🧩 Sintaxe Geral

```sql
SELECT colunas
FROM tabela_a
JOIN tabela_b
    ON tabela_a.coluna = tabela_b.coluna;
```

📌 Regra fundamental:  

Todo JOIN precisa de uma condição ON bem definida.  

🔹 Tipos de JOIN abordados neste módulo  
✅ INNER JOIN  

Retorna apenas os registros que existem nas duas tabelas.    

```sql
SELECT c.nome, p.id_pedido
FROM clientes c
INNER JOIN pedidos p
    ON c.id = p.cliente_id; 
```     

    📌 Uso mais comum no dia a dia.

✅ LEFT JOIN

Retorna todos os registros da tabela da esquerda
e os correspondentes da direita (ou NULL). 

```sql
SELECT c.nome, p.id_pedido
FROM clientes c
LEFT JOIN pedidos p
    ON c.id = p.cliente_id;
``` 
📌 Ideal para relatórios completos.

✅ RIGHT JOIN

Retorna todos os registros da tabela da direita. 
```sql 
SELECT c.nome, p.id_pedido
FROM clientes c
RIGHT JOIN pedidos p
    ON c.id = p.cliente_id;
```

📌 Menos utilizado — normalmente substituído por LEFT JOIN.
---

🔗 JOIN + WHERE

O WHERE filtra antes do resultado final. 

```sql
SELECT c.nome, p.data_pedido
FROM clientes c
INNER JOIN pedidos p
    ON c.id = p.cliente_id
WHERE p.data_pedido >= '2024-01-01';
```
--- 
🔗 JOIN + GROUP BY 

JOINs são frequentemente combinados com agregações. 

```sql 
SELECT c.nome, SUM(p.valor) AS total_gasto 
FROM clientes c
INNER JOIN pedidos p
    ON c.id = p.cliente_id
GROUP BY c.nome;
```

📌 Extremamente comum em análises e dashboards.

---

🔗 JOIN com múltiplas tabelas

É possível encadear vários JOINs na mesma consulta.
```sql
SELECT
    p.id_pedido,
    pr.nome_produto,
    i.quantidade
FROM pedidos p
INNER JOIN itens_pedido i
    ON p.id_pedido = i.pedido_id
INNER JOIN produtos pr
    ON i.produto_id = pr.id_produto;
``` 


⚠️ Erros Comuns:   
❌ Esquecer a condição ON    

-- Consulta inválida:   

```sql 
SELECT *
FROM clientes
JOIN pedidos;
```

🚫 Gera produto cartesiano (resultado incorreto).   

✔️ Correto:   
```sql 
SELECT *
FROM clientes
INNER JOIN pedidos
    ON clientes.id = pedidos.cliente_id;
```
--- 

🧠 Boas Práticas: 

Use aliases claros (c, p, pr) 

Sempre valide o relacionamento (ON) 

Evite SELECT * em queries reais 

Teste JOINs simples antes de consultas complexas 

Entenda o negócio, não só a sintaxe. 
---   
📂 Arquivos deste módulo   
01-joins/    
├── README.md    
├── joins-basicos.md    
├── exemplos.sql    
└── exercicios.md    

✅ Checklist de Aprendizado:   

Ao finalizar este módulo, você deve ser capaz de:  

 Explicar o que é um JOIN  

 Diferenciar INNER, LEFT e RIGHT JOIN  

 Criar JOINs com mais de duas tabelas  

 Combinar JOIN com WHERE e GROUP BY  

 Identificar e corrigir erros de relacionamento  

🚀 Próximos Passos:   

Após dominar JOINs básicos, avançaremos para:  
  
➡ Subqueries   
➡ JOINs avançados   
➡ Análises mais complexas   
 
📌 Resumo final:   

JOINs conectam dados.   
Sem JOINs, SQL não resolve problemas reais.   
Dominar JOINs é um divisor de águas no aprendizado de SQL.   