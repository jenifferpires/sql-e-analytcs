# Conceitos – Agrupamentos em SQL (`GROUP BY` e `HAVING`)

Neste módulo, abordamos os conceitos de **agrupamento de dados** em SQL, que permitem
analisar informações de forma resumida, identificando padrões e métricas relevantes
a partir de grandes volumes de dados.

O uso correto de `GROUP BY` e `HAVING` é essencial em relatórios,
dashboards e análises de negócio.

---

## 📌 O que é agrupamento de dados?

Agrupar dados significa **organizar registros que possuem valores semelhantes**
em uma ou mais colunas, permitindo aplicar **funções de agregação**
sobre esses grupos.

Em vez de analisar registros individualmente, passamos a analisar **conjuntos de dados**.

📊 Exemplo prático:
- Total de vendas por cliente
- Quantidade de pedidos por status
- Média salarial por departamento

---

## 🎯 Funções de agregação

As funções de agregação são usadas para **resumir informações** dentro de um grupo.

As mais comuns são:

- `COUNT()` → conta registros
- `SUM()` → soma valores
- `AVG()` → calcula média
- `MIN()` → menor valor
- `MAX()` → maior valor

⚠️ Essas funções **sempre operam sobre conjuntos de dados**, não sobre linhas individuais.

---

## 🧩 GROUP BY – Agrupando registros

A cláusula `GROUP BY` define **como os dados serão agrupados**.

### Sintaxe básica:

```sql 
SELECT coluna, FUNCAO_AGREGACAO(coluna)
FROM tabela
GROUP BY coluna;
```

Exemplo prático:
```sql 
SELECT departamento, COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY departamento;
```

🧠 Interpretação:

Os registros são agrupados por departamento
Para cada grupo, o COUNT é calculado.

⚠️ Regra fundamental do GROUP BY
👉 Toda coluna no SELECT que não estiver dentro de uma função de agregação
deve obrigatoriamente estar no GROUP BY.

Exemplo inválido:
```sql
SELECT nome, COUNT(*)
FROM funcionarios
GROUP BY departamento;
```

Exemplo correto:
```sql 
SELECT departamento, COUNT(*)
FROM funcionarios
GROUP BY departamento;
```

🎯 HAVING – Filtrando grupos.

O HAVING é usado para filtrar resultados após o agrupamento.

📌 Diferença importante:

Cláusula	Quando é aplicada
WHERE	Antes do agrupamento
HAVING	Depois do agrupamento

Exemplo prático:
```sql 
SELECT departamento, COUNT(*) AS total
FROM funcionarios
GROUP BY departamento
HAVING COUNT(*) > 5;
```

🧠 Aqui:

Primeiro os dados são agrupados
Depois, apenas departamentos com mais de 5 funcionários são retornados.

🔎 WHERE x HAVING (comparação direta)

-- Filtra linhas antes do agrupamento

SELECT departamento, COUNT(*)
FROM funcionarios
WHERE status = 'ATIVO'
GROUP BY departamento;

-- Filtra grupos após o agrupamento
SELECT departamento, COUNT(*)
FROM funcionarios
GROUP BY departamento
HAVING COUNT(*) > 3;


💡 Boas práticas:

✔ Use WHERE sempre que possível para reduzir o volume de dados antes do GROUP BY
✔ Use HAVING apenas quando precisar filtrar resultados agregados
✔ Nomeie colunas agregadas com AS para melhorar a legibilidade
✔ Evite agrupar dados desnecessariamente — isso impacta performance.

🔗 Conexão com o mundo real
O uso de GROUP BY e HAVING é extremamente comum em:

Relatórios gerenciais.
Indicadores (KPIs).
Dashboards.
Análises financeiras.
Monitoramento de sistemas. 

Dominar esse conceito é um divisor de águas entre consultas simples
e análises profissionais em SQL.

