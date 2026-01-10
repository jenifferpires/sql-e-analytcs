🔧 Funções Básicas em SQL
🎯 Objetivo

Este arquivo apresenta as funções básicas do SQL, utilizadas para manipular, transformar e tratar dados diretamente nas consultas.

Funções permitem:

Criar cálculos

Ajustar formatos

Tratar valores inválidos

Preparar dados para análise e relatórios

📌 Dominar funções é essencial para escrever SQL eficiente e profissional.

🧠 O que são Funções?

Funções são operações aplicadas a valores ou colunas que retornam um novo valor.

Exemplo simples:

SELECT UPPER(nome)
FROM clientes;


➡ A função UPPER() transforma o texto para letras maiúsculas.

🔢 Funções Numéricas

Utilizadas para cálculos matemáticos.

Funções mais comuns:

SUM() → soma valores

AVG() → média

ROUND() → arredondamento

ABS() → valor absoluto

CEILING() / FLOOR() → arredondamento para cima ou para baixo

Exemplos:
SELECT 
    valor,
    ROUND(valor, 2) AS valor_arredondado
FROM vendas;

SELECT 
    ABS(-100) AS valor_absoluto;


📌 Muito usadas em relatórios financeiros.

🔤 Funções de Texto

Permitem padronizar e manipular strings.

Funções mais comuns:

UPPER() / LOWER()

LENGTH()

SUBSTRING()

TRIM()

CONCAT()

Exemplos:
SELECT 
    nome,
    UPPER(nome) AS nome_maiusculo
FROM clientes;

SELECT 
    SUBSTRING(email, 1, 5) AS inicio_email
FROM usuarios;


📌 Essenciais para limpeza de dados.

📅 Funções de Data

Usadas para trabalhar com datas e horários.

Funções mais comuns:

CURRENT_DATE

NOW()

YEAR(), MONTH(), DAY()

DATEDIFF()

Exemplos:
SELECT 
    CURRENT_DATE AS data_atual;

SELECT 
    DATEDIFF(CURRENT_DATE, data_nascimento) AS dias_de_vida
FROM pessoas;


📌 Muito utilizadas em análises temporais.

🚫 Tratamento de Valores NULL

Valores NULL representam ausência de informação e precisam de atenção especial.

Funções principais:

COALESCE() → substitui NULL

NULLIF() → retorna NULL se valores forem iguais

Exemplos:
SELECT 
    nome,
    COALESCE(email, 'não informado') AS email
FROM clientes;

SELECT 
    NULLIF(status, 'inativo')
FROM usuarios;


📌 Evita erros em cálculos e exibições.

⚠️ Diferença entre Funções Simples e de Agregação

Funções simples → atuam linha a linha

Funções de agregação → atuam sobre conjuntos (SUM, COUNT, etc.)

Exemplo:

SELECT 
    COUNT(*) 
FROM vendas;


📌 Funções de agregação serão aprofundadas no módulo de Agrupamentos.

⚠️ Erros Comuns

❌ Ignorar NULL em cálculos
❌ Não usar aliases (AS)
❌ Misturar funções simples com agregações sem GROUP BY
❌ Usar funções sem necessidade

✔️ Sempre valide o resultado da consulta.

🧠 Boas Práticas

Use aliases claros

Separe lógica complexa em etapas

Evite funções em excesso

Teste funções isoladamente

Comente consultas complexas

📘 Uso no Mundo Real

Funções são usadas em:

Relatórios

Dashboards

Tratamento de dados

Regras de negócio

Preparação para BI e Analytics

Sem funções, o SQL fica limitado e manual.

🚀 Próximo Passo

➡ Agrupamentos (GROUP BY)

Funções de agregação

Métricas

Indicadores

Análises consolidadas

📌 Resumo

Funções SQL permitem transformar dados brutos em informação útil.
São indispensáveis para qualquer ambiente profissional.