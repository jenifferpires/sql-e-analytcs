========================================================
AGRUPAMENTOS COM FUNÇÕES DE AGREGAÇÃO
SUM | COUNT | AVG | MIN | MAX
========================================================

Objetivo:
Demonstrar o uso prático do GROUP BY combinado
com funções de agregação em cenários reais.

========================================================
REGRAS IMPORTANTES
========================================================
- Toda coluna no SELECT que NÃO estiver em uma
  função de agregação deve estar no GROUP BY
- WHERE filtra ANTES do agrupamento
- HAVING filtra DEPOIS do agrupamento
========================================================



--------------------------------------------------------
SEÇÃO 1 - SUM (SOMA)
--------------------------------------------------------

Exemplo 1: Total de vendas por cliente
Pergunta: Quanto cada cliente já comprou?

--------------------------------------------------------

SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id;



Exemplo 2: Total de vendas por categoria

--------------------------------------------------------

SELECT
    categoria,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY categoria;



--------------------------------------------------------
SEÇÃO 2 - COUNT (CONTAGEM)
--------------------------------------------------------

Exemplo 3: Quantidade de pedidos por status
Uso comum em dashboards operacionais

--------------------------------------------------------

SELECT
    status,
    COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY status;



Exemplo 4: Quantidade de clientes por cidade

--------------------------------------------------------

SELECT
    cidade,
    COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;



--------------------------------------------------------
SEÇÃO 3 - AVG (MÉDIA)
--------------------------------------------------------

Exemplo 5: Média salarial por departamento

--------------------------------------------------------

SELECT
    departamento,
    AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento;



Exemplo 6: Média de valor de pedidos por cliente

--------------------------------------------------------

SELECT
    cliente_id,
    AVG(valor) AS media_pedidos
FROM vendas
GROUP BY cliente_id;



--------------------------------------------------------
SEÇÃO 4 - MIN e MAX
--------------------------------------------------------

Exemplo 7: Menor e maior preço por categoria

--------------------------------------------------------

SELECT
    categoria,
    MIN(preco) AS menor_preco,
    MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria;



Exemplo 8: Data do primeiro e último pedido por cliente

--------------------------------------------------------

SELECT
    cliente_id,
    MIN(data_pedido) AS primeiro_pedido,
    MAX(data_pedido) AS ultimo_pedido
FROM pedidos
GROUP BY cliente_id;



--------------------------------------------------------
SEÇÃO 5 - GROUP BY + WHERE
--------------------------------------------------------

Exemplo 9: Total de vendas por categoria em 2024
Filtro aplicado ANTES do agrupamento

--------------------------------------------------------

SELECT
    categoria,
    SUM(valor) AS total_vendas
FROM vendas
WHERE data >= '2024-01-01'
GROUP BY categoria;



--------------------------------------------------------
SEÇÃO 6 - GROUP BY + HAVING
--------------------------------------------------------

Exemplo 10: Clientes com total de compras acima de 1000
Filtro aplicado DEPOIS do agrupamento

--------------------------------------------------------

SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 1000;



Exemplo 11: Departamentos com média salarial acima de 5000

--------------------------------------------------------

SELECT
    departamento,
    AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento
HAVING AVG(salario) > 5000;



--------------------------------------------------------
SEÇÃO 7 - ERROS COMUNS
--------------------------------------------------------

Exemplo 12: ERRO - Coluna fora do GROUP BY

--------------------------------------------------------

-- ❌ Consulta inválida:
-- SELECT cliente_id, valor
-- FROM vendas
-- GROUP BY cliente_id;



Exemplo 13: Correção do erro

--------------------------------------------------------

SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id;



========================================================
FIM DOS EXEMPLOS
========================================================
