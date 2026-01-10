========================================================
FUNÇÕES BÁSICAS EM SQL
Numéricas | Texto | Datas | Tratamento de NULL
========================================================

Objetivo:
Demonstrar o uso prático das funções básicas do SQL
para manipular, transformar e tratar dados em consultas.

--------------------------------------------------------
FUNÇÕES NUMÉRICAS
--------------------------------------------------------

-- Exemplo 1: Arredondamento de valores
-- Pergunta: Como exibir valores monetários com 2 casas decimais?

SELECT
    valor,
    ROUND(valor, 2) AS valor_arredondado
FROM vendas;

--------------------------------------------------------

-- Exemplo 2: Valor absoluto
-- Pergunta: Como remover sinal negativo de um valor?

SELECT
    ABS(-150) AS valor_absoluto;

--------------------------------------------------------

-- Exemplo 3: Arredondamento para cima e para baixo

SELECT
    CEILING(4.3) AS arredonda_para_cima,
    FLOOR(4.7)   AS arredonda_para_baixo;

========================================================
FUNÇÕES DE TEXTO
========================================================

-- Exemplo 4: Padronização de texto
-- Pergunta: Como padronizar nomes para maiúsculas?

SELECT
    nome,
    UPPER(nome) AS nome_maiusculo
FROM clientes;

--------------------------------------------------------

-- Exemplo 5: Contagem de caracteres

SELECT
    nome,
    LENGTH(nome) AS tamanho_nome
FROM clientes;

--------------------------------------------------------

-- Exemplo 6: Extração parcial de texto
-- Pergunta: Como extrair parte de um e-mail?

SELECT
    email,
    SUBSTRING(email, 1, 5) AS inicio_email
FROM usuarios;

--------------------------------------------------------

-- Exemplo 7: Remoção de espaços em branco

SELECT
    TRIM(nome) AS nome_sem_espacos
FROM clientes;

--------------------------------------------------------

-- Exemplo 8: Concatenação de campos

SELECT
    CONCAT(nome, ' - ', cargo) AS descricao_funcionario
FROM funcionarios;

========================================================
FUNÇÕES DE DATA
========================================================

-- Exemplo 9: Data atual do sistema

SELECT
    CURRENT_DATE AS data_atual;

--------------------------------------------------------

-- Exemplo 10: Data e hora atual

SELECT
    NOW() AS data_hora_atual;

--------------------------------------------------------

-- Exemplo 11: Extração de partes da data

SELECT
    data_nascimento,
    YEAR(data_nascimento)  AS ano,
    MONTH(data_nascimento) AS mes,
    DAY(data_nascimento)   AS dia
FROM pessoas;

--------------------------------------------------------

-- Exemplo 12: Diferença entre datas
-- Pergunta: Quantos dias se passaram desde o cadastro?

SELECT
    nome,
    DATEDIFF(CURRENT_DATE, data_cadastro) AS dias_desde_cadastro
FROM clientes;

========================================================
TRATAMENTO DE VALORES NULL
========================================================

-- Exemplo 13: Substituição de NULL com COALESCE
-- Pergunta: Como exibir um valor padrão quando o dado é NULL?

SELECT
    nome,
    COALESCE(email, 'não informado') AS email
FROM clientes;

--------------------------------------------------------

-- Exemplo 14: NULLIF
-- Pergunta: Quando transformar um valor específico em NULL?

SELECT
    NULLIF(status, 'inativo') AS status_tratado
FROM usuarios;

--------------------------------------------------------

-- Exemplo 15: Evitando erros em cálculos com NULL

SELECT
    valor,
    COALESCE(valor, 0) AS valor_seguro
FROM pagamentos;

========================================================
OBSERVAÇÕES IMPORTANTES
========================================================

-- • Funções simples atuam linha a linha
-- • Valores NULL precisam sempre de tratamento
-- • Use aliases claros para facilitar leitura
-- • Teste funções isoladamente antes de combiná-las

========================================================
FIM DOS EXEMPLOS
========================================================
-- Pratique aplicando essas funções em seus próprios conjuntos de dados!