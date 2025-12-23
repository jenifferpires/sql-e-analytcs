
GROUP BY e HAVING

GROUP BY e HAVING são usados para agrupar dados e aplicar filtros sobre resultados agregados.
Eles são essenciais para relatórios, métricas e análises.

GROUP BY
O que é?

GROUP BY agrupa registros com valores iguais em uma ou mais colunas,
permitindo o uso de funções de agregação como COUNT, SUM e AVG.

Em termos simples:
👉 transforma vários registros em resumos organizados.

Exemplo básico
SELECT status, COUNT(*) AS total
FROM pedidos
GROUP BY status;


Resultado:

quantidade de pedidos por status

GROUP BY com mais de uma coluna
SELECT cidade, status, COUNT(*) AS total
FROM clientes
GROUP BY cidade, status;


Agrupa:

clientes por cidade e status

Regra importante do GROUP BY

Toda coluna presente no SELECT que não esteja dentro de uma função
de agregação deve estar no GROUP BY.

❌ Exemplo inválido:

SELECT status, data_criacao, COUNT(*)
FROM pedidos
GROUP BY status;


✅ Exemplo correto:

SELECT status, COUNT(*)
FROM pedidos
GROUP BY status;

Erros comuns com GROUP BY

Esquecer colunas no GROUP BY

Agrupar dados sem entender o objetivo

Criar agrupamentos que não fazem sentido para a análise

Confundir GROUP BY com ORDER BY

HAVING
O que é?

HAVING é usado para filtrar resultados após o agrupamento.

Enquanto:

WHERE filtra registros

HAVING filtra grupos

Exemplo básico
SELECT status, COUNT(*) AS total
FROM pedidos
GROUP BY status
HAVING COUNT(*) > 10;


Retorna:

apenas status com mais de 10 pedidos

HAVING com SUM
SELECT cliente_id, SUM(valor) AS total_gasto
FROM pedidos
GROUP BY cliente_id
HAVING SUM(valor) > 5000;


Muito usado para:

identificar clientes relevantes

análises financeiras

WHERE x HAVING (comparação clara)
WHERE	HAVING
Filtra registros	Filtra grupos
Antes do GROUP BY	Depois do GROUP BY
Não usa agregação	Usa agregação

📌 Sempre que possível:

use WHERE para reduzir dados antes

use HAVING apenas para filtros agregados

Erros comuns com HAVING

Usar HAVING no lugar de WHERE

Criar filtros complexos sem necessidade

Esquecer que HAVING depende de GROUP BY

Exemplo completo (fluxo real)
SELECT status,
       COUNT(*) AS total_pedidos,
       SUM(valor) AS valor_total
FROM pedidos
WHERE data_criacao >= '2024-01-01'
GROUP BY status
HAVING SUM(valor) > 10000
ORDER BY valor_total DESC;


Raciocínio da query:

Filtra pedidos recentes (WHERE)

Agrupa por status (GROUP BY)

Calcula métricas

Filtra grupos relevantes (HAVING)

Ordena o resultado

Ligação com o mundo real

No dia a dia, GROUP BY e HAVING são usados para:

gerar relatórios gerenciais

analisar volumes e métricas

identificar padrões

apoiar decisões estratégicas

investigar problemas em produção

Eles são base para dashboards e análises mais avançadas.

Resumo rápido:

GROUP BY → agrupa dados

HAVING → filtra grupos

WHERE → filtra registros

Juntos, permitem análises completas.