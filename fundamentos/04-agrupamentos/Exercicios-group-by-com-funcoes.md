# Exercícios – GROUP BY com Funções de Agregação.

## 🎯 Objetivo:

Praticar o uso de `GROUP BY` combinado com funções de agregação (`SUM`, `COUNT`, `AVG`, `MIN`, `MAX`) em cenários progressivos, do básico ao desafiador, simulando situações reais de negócio.

---

## 📘 Instruções Gerais:

* Leia o enunciado com atenção. 
* Escreva a consulta SQL completa. 
* Evite `SELECT *`. 
* Use **aliases claros**. 
* Valide se todas as colunas não agregadas estão no `GROUP BY`. 

--- 

## 🟢 Nível 1 — Básico  

### 1️⃣ Total de vendas por cliente   

Tabela: `vendas (cliente_id, valor)`    

> Liste o total vendido por cada cliente.       

--- 

### 2️⃣ Quantidade de pedidos por status      

Tabela: `pedidos (id, status)`      

> Conte quantos pedidos existem em cada status.     

--- 

### 3️⃣ Média salarial por departamento   

Tabela: `funcionarios (id, departamento, salario)`  

> Calcule a média salarial de cada departamento.    

--- 

## 🟡 Nível 2 — Intermediário   

### 4️⃣ Menor e maior preço por categoria 

Tabela: `produtos (id, categoria, preco)`   

> Mostre o menor e o maior preço de cada categoria. 

--- 

### 5️⃣ Total de vendas por categoria em 2024 

Tabela: `vendas (categoria, valor, data)`   

> Calcule o total de vendas por categoria apenas para vendas realizadas em 2024.    

💡 Dica: use `WHERE`.   

--- 

### 6️⃣ Quantidade de clientes por cidade 

Tabela: `clientes (id, cidade)` 

> Conte quantos clientes existem em cada cidade.    

--- 

## 🟠 Nível 3 — GROUP BY + HAVING   

### 7️⃣ Clientes com total de compras acima de 1000   

Tabela: `vendas (cliente_id, valor)`    

> Liste apenas os clientes cujo total comprado seja maior que 1000. 

💡 Dica: use `HAVING`.  

--- 

### 8️⃣ Departamentos com média salarial maior que 5000   

Tabela: `funcionarios (departamento, salario)`  

> Retorne apenas os departamentos com média salarial acima de 5000. 

--- 

## 🔴 Nível 4 — Desafio

### 9️⃣ Clientes com mais de 5 pedidos

Tabela: `pedidos (id, cliente_id)`

> Liste os clientes que realizaram mais de 5 pedidos.

---

### 🔟 Categorias com faturamento médio acima de 300

Tabela: `vendas (categoria, valor)`

> Retorne as categorias cujo valor médio de venda seja maior que 300.

---

## 🧠 Desafio Extra (Reflexão)

### ❓ Quando usar WHERE e quando usar HAVING?

Explique com suas próprias palavras:    

* Quando usar `WHERE`   
* Quando usar `HAVING`  
* O que acontece se usar `WHERE` no lugar de `HAVING`   

--- 

## ✅ Checklist de Aprendizado

Ao finalizar este módulo, você deve ser capaz de: 

 Explicar com clareza o que é GROUP BY e para que ele serve.  
 Utilizar corretamente funções de agregação:  

SUM  
COUNT  
AVG  
MIN  
MAX  

 Identificar quando usar WHERE (filtro antes do agrupamento)  
 Identificar quando usar HAVING (filtro após o agrupamento)  
 Explicar a diferença prática entre WHERE e HAVING  
 Evitar erros comuns de agrupamento (colunas fora do GROUP BY)  

 Criar consultas agregadas para:   

Relatórios gerenciais.  
KPIs.  
Dashboards operacionais.  
Ler e interpretar corretamente resultados agregados.  
Aplicar GROUP BY em cenários reais de negócio.  

🧠 Autoavaliação (reflexão importante): 

Explique com suas próprias palavras:   

Quando usar WHERE?  
Quando usar HAVING?  
O que acontece se usar WHERE no lugar de HAVING?  
Por que HAVING depende de funções de agregação?  

Se você consegue responder sem consultar o material, o aprendizado está consolidado. ✅ 

📌 **Resumo**

Dominar agrupamentos com funções é essencial para relatórios, KPIs e análises reais.
Este é um dos pilares do SQL analítico e aparece diariamente em ambientes corporativos.

--- 
