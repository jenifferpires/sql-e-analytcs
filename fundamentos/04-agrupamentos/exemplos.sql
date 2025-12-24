# GROUP BY com Funções (SUM, COUNT, AVG, MIN, MAX)

## 📌 Objetivo

Este módulo aprofunda o uso do `GROUP BY` combinado com **funções de agregação**, permitindo analisar dados de forma consolidada e responder perguntas comuns em cenários reais de negócio.

Ao final deste conteúdo, você será capaz de:

* Agrupar dados corretamente
* Aplicar funções de agregação
* Evitar erros comuns de agrupamento
* Interpretar resultados agregados

---

## 🔎 O que são Funções de Agregação?

Funções de agregação **processam múltiplas linhas** e retornam **um único valor** por grupo.

Principais funções:

* `SUM()` → soma valores
* `COUNT()` → conta registros
* `AVG()` → média
* `MIN()` → menor valor
* `MAX()` → maior valor

---

## 🧩 Sintaxe Básica:

SELECT coluna_agrupamento,
       FUNCAO_AGREGACAO(coluna)
FROM tabela
GROUP BY coluna_agrupamento;

📌 **Regra de ouro:**

> Toda coluna no `SELECT` que **não** está dentro de uma função de agregação **deve** aparecer no `GROUP BY`.

---

## 📊 Exemplos Práticos:

### 1️⃣ Total de vendas por cliente

SELECT cliente_id,
       SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id;

💡 Responde: *Quanto cada cliente já comprou?*

---

### 2️⃣ Quantidade de pedidos por status

SELECT status,
       COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY status;

💡 Muito usado em dashboards operacionais.

---

### 3️⃣ Média de salário por departamento

SELECT departamento,
       AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento;

---

### 4️⃣ Menor e maior valor por categoria

SELECT categoria,
       MIN(preco) AS menor_preco,
       MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria;

---

## ⚠️ Erros Comuns

### ❌ Selecionar coluna não agregada sem GROUP BY


SELECT cliente_id, valor
FROM vendas
GROUP BY cliente_id;

🚫 **Erro:** `valor` não está agregado nem no `GROUP BY`.

✔️ Correto:


SELECT cliente_id,
       SUM(valor)
FROM vendas
GROUP BY cliente_id;

---

## 🔗 GROUP BY + WHERE

Use `WHERE` para **filtrar antes do agrupamento**.

SELECT categoria,
       SUM(valor)
FROM vendas
WHERE data >= '2024-01-01'
GROUP BY categoria;

---

## 🔗 GROUP BY + HAVING

Use `HAVING` para **filtrar depois do agrupamento**.


SELECT cliente_id,
       SUM(valor) AS total
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 1000;

📌 `HAVING` é usado **apenas** com agregações.

---

## 🧠 Boas Práticas

* Use **aliases claros** (`AS total_vendas`)
* Evite `SELECT *` com `GROUP BY`
* Teste primeiro sem `HAVING`
* Valide se o agrupamento faz sentido para o negócio.

---

## 📘 Quando usar na prática?

Cenários comuns:

* Relatórios financeiros
* Indicadores de performance (KPIs)
* Dashboards
* Análises de comportamento

---

## 🚀 Próximos Passos

* Agrupamentos com múltiplas colunas
* `GROUP BY` com `JOIN`
* Funções de janela (`OVER`, `PARTITION BY`)

---

📌 **Resumo:**

> `GROUP BY` com funções transforma dados brutos em informação útil.
> É uma das habilidades mais importantes em SQL para ambientes reais.
> Domine essa técnica para análises poderosas!