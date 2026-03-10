USE curso_sql;

-- Criação de Índices para acelerar os JOINS
CREATE INDEX idx_venda_cliente ON tb_vendas(id_cliente);
CREATE INDEX idx_item_produto ON tb_itens_venda(id_produto);

-- View Consolidada: A base para qualquer relatório de BI
CREATE OR REPLACE VIEW vw_relatorio_vendas AS
SELECT 
    v.data_venda AS 'Data da Venda',
    c.email AS 'E-mail do Cliente',
    p.nome_produto AS 'Produto',
    i.quantidade AS 'Qtd',
    i.valor_unitario AS 'Preço Unit.',
    (i.quantidade * i.valor_unitario) AS 'Total do Item'
FROM tb_vendas v
INNER JOIN tb_clientes c ON v.id_cliente = c.id_cliente
INNER JOIN tb_itens_venda i ON v.id_transacao = i.id_transacao
INNER JOIN tb_produtos p ON i.id_produto = p.id_product;