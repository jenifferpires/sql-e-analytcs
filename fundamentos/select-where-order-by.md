SELECT, WHERE e ORDER BY

Esses são os três comandos mais importantes do SQL.
Com eles, já é possível resolver grande parte das consultas do dia a dia.

SELECT
O que é?

SELECT é o comando utilizado para consultar dados em uma tabela.

Em termos simples:

👉 Define quais informações você quer ver.

Exemplo básico:

SELECT nome, email
FROM clientes;

Essa query:
Busca as colunas nome e email
Na tabela clientes
Boas práticas com SELECT
Evite SELECT *
Selecione apenas as colunas necessárias.

Queries mais claras são mais fáceis de manter e analisar.

❌ Exemplo ruim:

SELECT *
FROM clientes;

✅ Exemplo melhor:

SELECT id, nome, email
FROM clientes;

WHERE
O que é?

WHERE é usado para filtrar registros, retornando apenas os dados que atendem a uma condição.
Sem WHERE, o banco retorna todos os registros da tabela.

Exemplo básico:

SELECT nome, email
FROM clientes
WHERE ativo = 1;

Essa query retorna:
Apenas clientes ativos.

Operadores mais comuns no WHERE

= → igual

<> ou != → diferente

> < >= <= → comparações

LIKE → busca por padrão

IN → múltiplos valores

BETWEEN → intervalo


Exemplos práticos :
Buscar clientes de uma cidade específica:

SELECT nome, cidade
FROM clientes
WHERE cidade = 'São Paulo';


Buscar pedidos com valor acima de 1000:
SELECT id, valor
FROM pedidos
WHERE valor > 1000;

Erros comuns com WHERE

Esquecer o filtro e retornar dados demais.
Comparar tipos errados (texto com número).
Usar LIKE quando poderia usar =
Filtros pouco específicos em tabelas grandes.


ORDER BY
O que é?

ORDER BY define a ordem de exibição dos resultados.
Por padrão:

ASC → crescente
DESC → decrescente

Exemplo básico:

SELECT nome, email
FROM clientes
ORDER BY nome ASC;

Ordenação decrescente

SELECT id, data_criacao
FROM pedidos
ORDER BY data_criacao DESC;

Muito usado para:

Ver registros mais recentes.
Analisar últimos eventos ou erros.
Combinando SELECT, WHERE e ORDER BY.

Na prática, esses comandos quase sempre são usados juntos.

Exemplo completo:

SELECT id, nome, email
FROM clientes
WHERE ativo = 1
ORDER BY nome;

Raciocínio da query:

Quais dados eu quero? → SELECT
De onde vêm? → FROM
Quais filtros aplicar? → WHERE
Como organizar o resultado? → ORDER BY
Ordem correta dos comandos.

No SQL, a ordem sempre deve ser:
SELECT
FROM
WHERE
ORDER BY

❌ Ordem incorreta gera erro de sintaxe.



No dia a dia de sustentação e análise, esse padrão é usado para:

Validar dados de clientes.
Investigar incidentes.
Conferir integrações.
Gerar relatórios rápidos.
Apoiar decisões técnicas.
Dominar bem esses três comandos é a base para queries mais complexas.


Resumo rápido

SELECT → define o que será exibido.

WHERE → filtra os dados.

ORDER BY → organiza o resultado.

Simples, mas extremamente poderoso.