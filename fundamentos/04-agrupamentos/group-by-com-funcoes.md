# GROUP BY com Funções de Agregação 

Este módulo aprofunda o uso do `GROUP BY` em conjunto com **funções de agregação**, 
que são amplamente utilizadas em análises de dados, relatórios e cenários reais
de negócio.

Aqui você aprenderá **como resumir dados**, **extrair métricas** e **analisar informações agrupadas**.  

--- 

## O que são Funções de Agregação?

Funções de agregação são funções SQL que **operam sobre um conjunto de linhas**
e retornam **um único valor resumido**.

As principais são:

- `COUNT()` → Conta registros
- `SUM()` → Soma valores
- `AVG()` → Calcula média
- `MIN()` → Retorna o menor valor
- `MAX()` → Retorna o maior valor

Essas funções **normalmente são usadas junto com `GROUP BY`**.

---

## Estrutura Básica

```sql
SELECT coluna_agrupamento, FUNCAO_AGREGACAO(coluna)
FROM tabela
GROUP BY coluna_agrupamento;

Exemplo de Contexto
Considere uma tabela vendas:

id	produto	categoria	valor	data_venda
1	Mouse	Periféricos	50.00	2024-01-10
2	Teclado	Periféricos	120.00	2024-01-11
3	Monitor	Monitores	900.00	2024-01-12
4	Mouse	Periféricos	50.00	2024-01-13

COUNT() — Contagem de Registros.

Quantidade de vendas por categoria:

SELECT categoria, COUNT(*) AS total_vendas
FROM vendas
GROUP BY categoria;


📌 Uso comum:

Número de pedidos   
Quantidade de clientes  
Total de registros por grupo   

---

SUM() — Soma de Valores.

Total faturado por categoria:

SELECT categoria, SUM(valor) AS faturamento_total
FROM vendas
GROUP BY categoria;

📌 Uso comum:

Faturamento.
Total vendido.
Soma de custos.

---

AVG() — Média.

Valor médio das vendas por categoria:

SELECT categoria, AVG(valor) AS ticket_medio
FROM vendas
GROUP BY categoria;

📌 Uso comum:

Ticket médio
Média salarial
Média de consumo.

---

MIN() e MAX() — Valores Extremos.

Menor e maior valor de venda por categoria:

SELECT 
  categoria,
  MIN(valor) AS menor_venda,
  MAX(valor) AS maior_venda
FROM vendas
GROUP BY categoria;

📌 Uso comum:

Identificar outliers
Análise de extremos
Auditorias
Agrupando por Mais de Uma Coluna.

Vendas por categoria e produto:

SELECT categoria, produto, SUM(valor) AS total_vendido
FROM vendas
GROUP BY categoria, produto;

📌 Importante:

Toda coluna no SELECT que não esteja em uma função de agregação
precisa estar no GROUP BY.

Erro Comum ❌

SELECT categoria, produto, SUM(valor)
FROM vendas
GROUP BY categoria;

🚫 Erro: produto não está no GROUP BY nem em uma função.

Uso com ORDER BY

SELECT categoria, SUM(valor) AS faturamento
FROM vendas
GROUP BY categoria
ORDER BY faturamento DESC;

📌 Muito utilizado para:

Rankings
Dashboards
Relatórios executivos

Cenário Real de Trabalho
“Quero saber o faturamento total por categoria,
ordenado da maior para a menor.”

SELECT categoria, SUM(valor) AS faturamento_total
FROM vendas
GROUP BY categoria
ORDER BY faturamento_total DESC;

Esse tipo de consulta é extremamente comum em:

BI.
Analytics.
Sistemas corporativos.
Relatórios financeiros.


🧩Boas Práticas:

✔ Use aliases claros
✔ Agrupe apenas o necessário
✔ Combine com HAVING para filtros agregados
✔ Sempre valide os dados antes de interpretar resultados.

📘 Resumo 
 
GROUP BY organiza os dados
Funções de agregação resumem informações
Juntos, são a base de análises em SQL
Dominar esse conceito é essencial para evoluir do SQL básico para o intermediário.