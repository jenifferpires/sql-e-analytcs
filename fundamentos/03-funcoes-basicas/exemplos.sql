/*
========================================
FUNÇÕES BÁSICAS – EXEMPLOS PRÁTICOS
Banco: MySQL
========================================
Este arquivo contém exemplos organizados
por tipo de função, com foco em uso real.
*/

/* ======================================
1. FUNÇÕES NUMÉRICAS
====================================== */

-- Valor absoluto
SELECT ABS(-10) AS valor_absoluto;

-- Arredondamento
SELECT ROUND(12.3456, 2) AS arredondado;

-- Arredondamento para cima
SELECT CEILING(7.2) AS teto;

-- Arredondamento para baixo
SELECT FLOOR(7.8) AS piso;

-- Resto da divisão
SELECT MOD(10, 3) AS resto_divisao;


/* ======================================
2. FUNÇÕES DE TEXTO
====================================== */

-- Converter para maiúsculas
SELECT UPPER('sql mysql') AS texto_maiusculo;

-- Converter para minúsculas
SELECT LOWER('SQL MYSQL') AS texto_minusculo;

-- Tamanho do texto
SELECT LENGTH('Banco de Dados') AS tamanho_texto;

-- Concatenar textos
SELECT CONCAT('SQL', ' ', 'MySQL') AS texto_concatenado;

-- Extrair parte do texto
SELECT SUBSTRING('Aprendendo SQL', 1, 10) AS parte_texto;


/* ======================================
3. FUNÇÕES DE DATA E HORA
====================================== */

-- Data atual
SELECT CURRENT_DATE() AS data_atual;

-- Data e hora atual
SELECT NOW() AS data_hora_atual;

-- Extrair ano, mês e dia
SELECT
  YEAR(NOW()) AS ano,
  MONTH(NOW()) AS mes,
  DAY(NOW()) AS dia;

-- Diferença entre datas
SELECT DATEDIFF('2025-12-31', '2025-01-01') AS dias_diferenca;


/* ======================================
4. FUNÇÕES PARA TRATAMENTO DE NULL
====================================== */

-- Substituir NULL por valor padrão
SELECT IFNULL(NULL, 'Valor padrão') AS resultado_ifnull;

-- Verificação condicional com CASE
SELECT
  CASE
    WHEN NULL IS NULL THEN 'É nulo'
    ELSE 'Não é nulo'
  END AS verificacao_null;


/* ======================================
5. EXEMPLOS COM TABELAS (CENÁRIO REAL)
====================================== */

-- Exemplo: tabela usuarios (hipotética)

-- Substituir nome nulo por 'Não informado'
SELECT
  id,
  IFNULL(nome, 'Não informado') AS nome_usuario
FROM usuarios;

-- Calcular idade aproximada
SELECT
  nome,
  YEAR(CURRENT_DATE()) - YEAR(data_nascimento) AS idade_aproximada
FROM usuarios;
