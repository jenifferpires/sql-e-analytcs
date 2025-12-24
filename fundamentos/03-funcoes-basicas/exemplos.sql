/*
===========================================
FUNÇÕES BÁSICAS - EXEMPLOS PRÁTICOS (MySQL)
===========================================

Este arquivo contém exemplos de:
- Funções numéricas
- Funções de texto
- Funções de data
- Tratamento de valores NULL

Utilize junto com uma tabela de exemplo, como:
clientes(id, nome, salario, data_nascimento, email, data_cadastro)
*/

--------------------------------------------------
-- 1. FUNÇÕES NUMÉRICAS
--------------------------------------------------

-- Arredondar valores
SELECT
    salario,
    ROUND(salario, 2) AS salario_arredondado
FROM clientes;

-- Valor absoluto
SELECT
    salario,
    ABS(salario) AS salario_absoluto
FROM clientes;

-- Maior e menor valor
SELECT
    MAX(salario) AS maior_salario,
    MIN(salario) AS menor_salario
FROM clientes;

-- Média e soma
SELECT
    AVG(salario) AS media_salarial,
    SUM(salario) AS total_salarios
FROM clientes;


--------------------------------------------------
-- 2. FUNÇÕES DE TEXTO
--------------------------------------------------

-- Converter texto
SELECT
    nome,
    UPPER(nome) AS nome_maiusculo,
    LOWER(nome) AS nome_minusculo
FROM clientes;

-- Concatenar campos
SELECT
    CONCAT(nome, ' - ', email) AS identificacao
FROM clientes;

-- Tamanho do texto
SELECT
    nome,
    LENGTH(nome) AS tamanho_nome
FROM clientes;

-- Extrair parte do texto
SELECT
    nome,
    SUBSTRING(nome, 1, 5) AS inicio_nome
FROM clientes;


--------------------------------------------------
-- 3. FUNÇÕES DE DATA
--------------------------------------------------

-- Data atual
SELECT
    CURRENT_DATE() AS data_atual,
    CURRENT_TIMESTAMP() AS data_hora_atual;

-- Extrair partes da data
SELECT
    data_nascimento,
    YEAR(data_nascimento) AS ano,
    MONTH(data_nascimento) AS mes,
    DAY(data_nascimento) AS dia
FROM clientes;

-- Diferença entre datas
SELECT
    nome,
    TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE()) AS idade
FROM clientes;


--------------------------------------------------
-- 4. TRATAMENTO DE NULL
--------------------------------------------------

-- Substituir NULL por valor padrão
SELECT
    nome,
    IFNULL(email, 'Email não informado') AS email_tratado
FROM clientes;

-- Verificar NULL explicitamente
SELECT
    nome,
    email
FROM clientes
WHERE email IS NULL;

-- Uso de COALESCE (retorna o primeiro valor não nulo)
SELECT
    nome,
    COALESCE(email, 'Email ausente', 'Sem contato') AS email_final
FROM clientes;
