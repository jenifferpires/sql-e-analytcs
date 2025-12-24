# GROUP BY e HAVING

Neste módulo, vamos aprofundar o uso de **agrupamentos em SQL**, que permitem
resumir dados e extrair informações analíticas a partir de grandes volumes
de registros.

Esses conceitos são amplamente utilizados em relatórios, dashboards
e análises de negócio no dia a dia profissional.

---

## 📌 O que é GROUP BY?

O `GROUP BY` é utilizado para **agrupar linhas que possuem valores iguais**
em uma ou mais colunas, permitindo a aplicação de **funções de agregação**
sobre esses grupos.

Em outras palavras, ele transforma dados detalhados em **dados resumidos**.

### Exemplo de pergunta respondida com GROUP BY:
- Quantos pedidos existem por cliente?
- Qual o total de vendas por mês?
- Qual a média salarial por departamento?

---

## 🧠 Sintaxe básica

```sql
SELECT coluna_agrupamento, FUNCAO_AGREGACAO(coluna)
FROM tabela
GROUP BY coluna_agrupamento;

🔹 Toda coluna no SELECT que não estiver dentro de uma função de agregação
precisa aparecer no GROUP BY.

🔢 Funções de agregação mais usadas
Função	Descrição
COUNT()	Conta registros
SUM()	Soma valores
AVG()	Calcula média
MIN()	Retorna o menor valor
MAX()	Retorna o maior valor

📊 Exemplos práticos de GROUP BY
1️⃣ Contar registros por grupo

SELECT status, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY status;

➡️ Retorna a quantidade de pedidos para cada status.

2️⃣ Soma de valores por categoria

SELECT categoria, SUM(valor) AS total_vendas
FROM produtos
GROUP BY categoria;

➡️ Mostra o total de vendas por categoria de produto.

3️⃣ Média por grupo

SELECT departamento, AVG(salario) AS salario_medio
FROM funcionarios
GROUP BY departamento;

➡️ Calcula o salário médio por departamento.

📌 GROUP BY com múltiplas colunas
É possível agrupar por mais de uma coluna, criando grupos mais específicos.

SELECT departamento, cargo, AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento, cargo;

➡️ Cada combinação de departamento + cargo será tratada como um grupo distinto.

⚠️ Erro comum com GROUP BY
❌ Erro clássico:

SELECT departamento, nome, AVG(salario)
FROM funcionarios
GROUP BY departamento;

➡️ nome não está nem em função de agregação nem no GROUP BY.

✅ Correção:

Remover a coluna
Ou adicioná-la ao GROUP BY
Ou aplicar uma função sobre ela.

🎯 O que é HAVING?
O HAVING é usado para filtrar resultados após o agrupamento.

👉 Enquanto o WHERE filtra linhas antes do GROUP BY,
👉 o HAVING filtra grupos depois do GROUP BY.

🔍 Diferença entre WHERE e HAVING
WHERE	HAVING
Filtra linhas	Filtra grupos
Executado antes do GROUP BY	Executado após o GROUP BY
Não usa funções de agregação	Usa funções de agregação.

📊 Exemplos práticos com HAVING
1️⃣ Grupos com mais de X registros

SELECT cliente_id, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY cliente_id
HAVING COUNT(*) > 5;

➡️ Retorna apenas clientes com mais de 5 pedidos.

2️⃣ Soma acima de um valor específico

SELECT categoria, SUM(valor) AS total_vendas
FROM produtos
GROUP BY categoria
HAVING SUM(valor) > 10000;

➡️ Mostra apenas categorias com vendas acima de 10.000.

🔄 Combinando WHERE + GROUP BY + HAVING

SELECT departamento, AVG(salario) AS salario_medio
FROM funcionarios
WHERE ativo = 1
GROUP BY departamento
HAVING AVG(salario) > 5000;

Fluxo de execução:
1️⃣ WHERE filtra funcionários ativos
2️⃣ GROUP BY agrupa por departamento
3️⃣ HAVING filtra departamentos com média salarial alta

🧩 Boas práticas
✔ Use WHERE sempre que possível para reduzir o volume de dados
✔ Use HAVING apenas para condições sobre agregações
✔ Nomeie colunas agregadas com AS para melhorar a leitura
✔ Evite SELECT * em queries com GROUP BY

📎 Conclusão:

GROUP BY permite transformar dados brutos em informações resumidas

Funções de agregação são essenciais para análises

HAVING complementa o GROUP BY filtrando resultados agregados

Esse conjunto é a base de queries analíticas e relatórios profissionais.

