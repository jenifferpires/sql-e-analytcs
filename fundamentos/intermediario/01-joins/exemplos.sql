========================================================
JOINs Básicos
INNER JOIN | LEFT JOIN | RIGHT JOIN
========================================================

Objetivo:
Demonstrar o uso prático dos principais tipos de JOIN
em cenários reais de relacionamento entre tabelas.

Tabelas usadas nos exemplos:
- clientes (id, nome)
- pedidos (id_pedido, cliente_id, data_pedido, valor)
- produtos (id_produto, nome_produto)
- itens_pedido (pedido_id, produto_id, quantidade)

--------------------------------------------------------
Exemplo 1: INNER JOIN
Clientes que possuem pedidos
--------------------------------------------------------

SELECT
    clientes.nome,
    pedidos.id_pedido,
    pedidos.data_pedido
FROM clientes
INNER JOIN pedidos
    ON clientes.id = pedidos.cliente_id;

-- Retorna apenas clientes que possuem pedidos
-- JOIN mais utilizado no dia a dia

--------------------------------------------------------
Exemplo 2: LEFT JOIN
Todos os clientes, mesmo sem pedidos
--------------------------------------------------------

SELECT
    clientes.nome,
    pedidos.id_pedido
FROM clientes
LEFT JOIN pedidos
    ON clientes.id = pedidos.cliente_id;

-- Clientes sem pedidos aparecem com NULL
-- Ideal para relatórios completos

--------------------------------------------------------
Exemplo 3: RIGHT JOIN
Todos os pedidos, mesmo sem cliente associado
--------------------------------------------------------

SELECT
    clientes.nome,
    pedidos.id_pedido
FROM clientes
RIGHT JOIN pedidos
    ON clientes.id = pedidos.cliente_id;

-- Menos utilizado
-- Geralmente substituído por LEFT JOIN invertendo tabelas

--------------------------------------------------------
Exemplo 4: JOIN com múltiplas tabelas
Pedidos com nome do cliente e valor
--------------------------------------------------------

SELECT
    clientes.nome,
    pedidos.id_pedido,
    pedidos.valor
FROM pedidos
INNER JOIN clientes
    ON pedidos.cliente_id = clientes.id;

-- Ordem das tabelas não altera o resultado do INNER JOIN

--------------------------------------------------------
Exemplo 5: JOIN + WHERE
Pedidos realizados em 2024
--------------------------------------------------------

SELECT
    clientes.nome,
    pedidos.id_pedido,
    pedidos.data_pedido
FROM clientes
INNER JOIN pedidos
    ON clientes.id = pedidos.cliente_id
WHERE pedidos.data_pedido >= '2024-01-01';

-- WHERE filtra ANTES do resultado final

--------------------------------------------------------
Exemplo 6: JOIN + GROUP BY
Total gasto por cliente
--------------------------------------------------------

SELECT
    clientes.nome,
    SUM(pedidos.valor) AS total_gasto
FROM clientes
INNER JOIN pedidos
    ON clientes.id = pedidos.cliente_id
GROUP BY clientes.nome;

-- JOIN + agregação é extremamente comum em análises

--------------------------------------------------------
Exemplo 7: JOIN entre mais de duas tabelas
Pedidos com produtos
--------------------------------------------------------

SELECT
    pedidos.id_pedido,
    produtos.nome_produto,
    itens_pedido.quantidade
FROM pedidos
INNER JOIN itens_pedido
    ON pedidos.id_pedido = itens_pedido.pedido_id
INNER JOIN produtos
    ON itens_pedido.produto_id = produtos.id_produto;

-- Muito comum em cenários de e-commerce

--------------------------------------------------------
Exemplo 8: Erro comum
Produto cartesiano (JOIN sem ON)
--------------------------------------------------------

-- ❌ Consulta inválida (gera resultado incorreto)
-- SELECT *
-- FROM clientes
-- JOIN pedidos;

--------------------------------------------------------
Exemplo 9: Correção do erro
--------------------------------------------------------

SELECT *
FROM clientes
INNER JOIN pedidos
    ON clientes.id = pedidos.cliente_id;
    
-- Sempre use ON para definir a condição do JOIN. 
---  

✅ O que este arquivo cobre (check mental)

✔ INNER JOIN

✔ LEFT JOIN

✔ RIGHT JOIN

✔ JOIN + WHERE

✔ JOIN + GROUP BY

✔ JOIN com múltiplas tabelas

✔ Erro comum explicado. 