# Exercícios Práticos – GROUP BY com Funções

## 🎯 Objetivo

Consolidar o entendimento de **GROUP BY** combinado com **funções de agregação** (`SUM`, `COUNT`, `AVG`, `MIN`, `MAX`) por meio de exercícios progressivos e cenários próximos da realidade de trabalho.

Os exercícios estão organizados do **básico ao avançado**, incentivando raciocínio analítico e leitura correta dos dados.

---

## 📘 Contexto Base:

Considere as tabelas fictícias abaixo (estrutura simplificada):

### 🧾 vendas

* `id`
* `cliente_id`
* `categoria`
* `valor`
* `data_venda`

### 👤 clientes

* `cliente_id`
* `nome`
* `cidade`

### 🏢 funcionarios

* `id`
* `nome`
* `departamento`
* `salario`

---

## 🟢 Nível Básico

### 1️⃣ Total de vendas por cliente

Liste o **total vendido** por cada `cliente_id`.

➡️ Dica: use `SUM(valor)`.

---

### 2️⃣ Quantidade de vendas por categoria

Mostre quantas vendas existem em cada `categoria`.

➡️ Dica: `COUNT(*)`.

---

### 3️⃣ Maior valor de venda por categoria

Exiba a categoria e o **maior valor de venda** registrado.

➡️ Dica: `MAX(valor)`.

---

## 🟡 Nível Intermediário

### 4️⃣ Média de vendas por cliente

Calcule o **valor médio** das vendas de cada cliente.

➡️ Dica: `AVG(valor)`.

---

### 5️⃣ Total de vendas por categoria em 2024

Considere apenas vendas realizadas no ano de 2024.

➡️ Dica: use `WHERE` antes do `GROUP BY`.

---

### 6️⃣ Departamentos com média salarial acima de 5.000

Liste os departamentos cuja **média salarial** seja maior que 5.000.

➡️ Dica: use `HAVING`.

---

## 🔴 Nível Avançado

### 7️⃣ Clientes com mais de 10 vendas

Liste os clientes que realizaram **mais de 10 vendas**.

➡️ Dica: `COUNT(*)` + `HAVING`.

---

### 8️⃣ Categorias com faturamento acima de 50.000

Exiba as categorias cujo **total faturado** ultrapassa 50.000.

➡️ Dica: `SUM(valor)`.

---

### 9️⃣ Menor e maior salário por departamento

Mostre, para cada departamento:

* Menor salário
* Maior salário

➡️ Dica: `MIN` e `MAX` na mesma query.

---

## 🧠 Desafios de Raciocínio

### 🔍 10️⃣ Qual dessas queries está correta?

```sql
SELECT cliente_id, valor
FROM vendas
GROUP BY cliente_id;
```

* Por que essa query está incorreta?
* Como ela deveria ser escrita corretamente?

---

### 🔍 11️⃣ WHERE ou HAVING?

Explique:

* Quando usar `WHERE`
* Quando usar `HAVING`

Dê um exemplo prático de cada.

---

## 🧩 Desafio Final – Cenário Real

Você precisa gerar um relatório mensal com:

* Categoria
* Quantidade de vendas
* Total faturado
* Valor médio por venda

Somente categorias com **mais de 20 vendas** devem aparecer.

➡️ Pense na ordem correta:

1. Filtro por data (`WHERE`)
2. Agrupamento (`GROUP BY`)
3. Filtro por agregação (`HAVING`)

---

## 📌 Checklist de Aprendizado

Ao finalizar este módulo, você deve ser capaz de:

* [ ] Usar `GROUP BY` corretamente
* [ ] Aplicar funções de agregação
* [ ] Diferenciar `WHERE` e `HAVING`
* [ ] Resolver cenários reais com dados agregados

---

