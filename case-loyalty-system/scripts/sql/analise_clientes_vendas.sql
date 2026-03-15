/* PROJETO: Análise de Fidelidade e Performance de Vendas
   AUTORA: Jeniffer Pires
   DATA: Março de 2026
   DESCRIÇÃO: Script completo de ETL, tratamento de dados e análise de KPIs.
*/

-- 1. PREPARAÇÃO E LIMPEZA DE SCHEMA
-- Desativando travas de segurança para permitir limpeza profunda
SET FOREIGN_KEY_CHECKS = 0;
SET SQL_SAFE_UPDATES = 0;

-- Limpando dados residuais para garantir carga limpa
TRUNCATE TABLE tb_clientes;

-- Padronização de nomes de colunas (Consistência de Esquema)
ALTER TABLE tb_produtos CHANGE nome nome_produto VARCHAR(255);
ALTER TABLE tb_clientes CHANGE nome nome_cliente VARCHAR(255);

-- Garantindo a existência das colunas de inteligência
ALTER TABLE tb_clientes DROP COLUMN IF EXISTS pontos_acumulados; -- Para versões 8.0+
ALTER TABLE tb_clientes ADD COLUMN pontos INT;
ALTER TABLE tb_clientes ADD COLUMN categoria_fidelidade VARCHAR(20);
ALTER TABLE tb_vendas ADD COLUMN valor_total_venda DECIMAL(10, 2);

-- 2. CARGA DE DADOS (ETL)
-- Inserindo dados da staging com limpeza de espaços e caracteres especiais (TRIM)
INSERT IGNORE INTO tb_clientes (id_cliente, email, pontos)
SELECT TRIM(idCliente), TRIM(flEmail), CAST(qtdePontos AS UNSIGNED)
FROM stg_clientes;

-- 3. DATA ENGINEERING: SEGMENTAÇÃO DE CLIENTES
-- Classificando clientes com base na pontuação acumulada
UPDATE tb_clientes
SET categoria_fidelidade = CASE
    WHEN pontos > 5000 THEN 'VIP'
    WHEN pontos >= 1000 THEN 'Frequente'
    ELSE 'Iniciante'
END;

-- 4. TRATAMENTO FINANCEIRO: CÁLCULO DE VALOR TOTAL
-- Injetando o valor total das vendas baseado na soma dos itens (vendas de 4 tabelas)
UPDATE tb_vendas v
INNER JOIN (
    SELECT id_venda, SUM(quantidade * valor_unitario) AS soma_itens
    FROM tb_itens_venda
    GROUP BY id_venda
) AS resumo_itens ON v.id_venda = resumo_itens.id_venda
SET v.valor_total_venda = resumo_itens.soma_itens;

-- Reativando travas de segurança (Boas práticas de DBA)
SET FOREIGN_KEY_CHECKS = 1;
SET SQL_SAFE_UPDATES = 1;

-- 5. ANALYTICS: RELATÓRIOS E INSIGHTS

-- Relatório A: Volumetria por Categoria
SELECT categoria_fidelidade, COUNT(*) AS total_clientes
FROM tb_clientes
GROUP BY categoria_fidelidade;

-- Relatório B: Performance de Vendas (Ticket Médio por Fidelidade)
SELECT 
    c.categoria_fidelidade,
    COUNT(v.id_venda) AS total_vendas,
    ROUND(AVG(v.valor_total_venda), 2) AS ticket_medio
FROM tb_clientes AS c
INNER JOIN tb_vendas AS v ON c.id_cliente = v.id_cliente
GROUP BY c.categoria_fidelidade
ORDER BY ticket_medio DESC;

-- Relatório C: Top 5 Produtos VIP com Gráfico de Barras Textual
SELECT 
    p.nome_produto, 
    COUNT(iv.id_produto) AS quantidade_vendida,
    REPEAT('█', COUNT(iv.id_produto) / 1000) AS visualizacao_escala_1k
FROM tb_clientes c
INNER JOIN tb_vendas v ON c.id_cliente = v.id_cliente
INNER JOIN tb_itens_venda iv ON v.id_venda = iv.id_venda
INNER JOIN tb_produtos p ON iv.id_produto = p.id_produto
WHERE c.categoria_fidelidade = 'VIP'
GROUP BY p.nome_produto
ORDER BY quantidade_vendida DESC
LIMIT 5;

-- 6. BACKUP DE SEGURANÇA
CREATE TABLE IF NOT EXISTS tb_clientes_final_bkp AS SELECT * FROM tb_clientes;