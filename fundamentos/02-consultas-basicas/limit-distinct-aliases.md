LIMIT, DISTINCT e ALIASES

Esses três recursos ajudam a controlar o volume de dados, evitar duplicidades e tornar as queries mais legíveis.
São muito usados no dia a dia e fazem grande diferença na clareza das consultas. 

LIMIT
O que é?

LIMIT é utilizado para restringir a quantidade de registros retornados por uma consulta.

É especialmente útil durante:

análises iniciais

testes

validação de dados

Exemplo básico
SELECT id, nome
FROM clientes
LIMIT 10;


Essa query retorna apenas os 10 primeiros registros da tabela.

LIMIT com ORDER BY

LIMIT quase sempre deve ser usado junto com ORDER BY,
para garantir que os registros retornados façam sentido.

SELECT id, data_criacao
FROM pedidos
ORDER BY data_criacao DESC
LIMIT 5;


Exemplo comum:

buscar os últimos registros criados

Erros comuns com LIMIT

Usar LIMIT sem ORDER BY

Esquecer de remover LIMIT em queries finais

Achar que LIMIT melhora performance (ele só limita o retorno) 

DISTINCT
O que é?

DISTINCT é utilizado para eliminar registros duplicados no resultado de uma consulta.

Ele atua sobre o conjunto de colunas selecionadas.

Exemplo básico
SELECT DISTINCT cidade
FROM clientes;


Essa query retorna:

lista de cidades sem repetição 

DISTINCT com múltiplas colunas 
SELECT DISTINCT cidade, estado
FROM clientes;


Nesse caso, a combinação cidade + estado deve ser única. 

Quando usar DISTINCT

Identificar valores únicos

Gerar listas para filtros

Evitar duplicidade em relatórios 

Erros comuns com DISTINCT 

Usar DISTINCT sem entender o motivo da duplicidade

Achar que DISTINCT substitui GROUP BY

Usar DISTINCT como “correção rápida” de JOIN mal feito

ALIASES (AS)
O que é?

Aliases permitem renomear colunas ou tabelas temporariamente dentro da query.

Eles não alteram o nome real no banco.

Alias para colunas
SELECT nome AS nome_cliente,
       email AS email_cliente
FROM clientes;


Isso melhora:

legibilidade

entendimento por quem lê o resultado

Alias para tabelas
SELECT c.nome, p.id
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id;


Muito usado em:

JOINs

queries maiores

consultas complexas

Boas práticas com aliases

Use nomes curtos e claros

Evite abreviações confusas

Seja consistente ao longo da query

Erros comuns com aliases 

Usar aliases que não fazem sentido

Misturar alias e nome real da tabela

Esquecer de usar o alias após defini-lo.


Ligação com o mundo real:

No dia a dia de trabalho, esses recursos são usados para:

analisar dados sem sobrecarregar o banco.

gerar relatórios mais limpos.

facilitar leitura por outras pessoas do time.

validar rapidamente informações em produção.

Eles ajudam a escrever queries mais seguras e profissionais. 

Resumo rápido

LIMIT → controla quantidade de registros

DISTINCT → remove duplicidades

ALIASES → melhoram clareza e leitura

Pequenos recursos que fazem grande diferença