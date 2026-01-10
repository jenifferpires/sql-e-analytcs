📘 Funções Básicas em SQL
🎯 Objetivo do Módulo

Este módulo apresenta as funções básicas do SQL, que permitem transformar, calcular e tratar dados durante uma consulta.

Ao final deste conteúdo, você será capaz de:

Manipular valores numéricos

Trabalhar com textos

Tratar datas

Lidar corretamente com valores NULL

Criar consultas mais inteligentes e expressivas

📌 Funções são essenciais para transformar dados brutos em informação útil.

🧠 O que são Funções em SQL?

Funções SQL são operações aplicadas sobre valores ou colunas que retornam um novo valor.

Elas permitem:

Calcular resultados

Ajustar formatos

Corrigir dados

Preparar informações para análises

Evitar tratamentos manuais fora do banco

Exemplo simples:

SELECT UPPER(nome)
FROM clientes;

🧩 Tipos de Funções abordadas

Este módulo está organizado por categoria de função, facilitando o aprendizado progressivo.

🔢 Funções Numéricas

Utilizadas para cálculos e operações matemáticas.

Exemplos:

SUM()

AVG()

ROUND()

ABS()

🔤 Funções de Texto

Permitem manipular e padronizar strings.

Exemplos:

UPPER()

LOWER()

LENGTH()

SUBSTRING()

TRIM()

📅 Funções de Data

Usadas para cálculos e comparações temporais.

Exemplos:

CURRENT_DATE

NOW()

DATE_PART()

DATEDIFF()

🚫 Tratamento de NULL

Evita erros e resultados inesperados.

Exemplos:

COALESCE()

NULLIF()

📂 Estrutura do módulo

Os conteúdos deste módulo estão organizados nos seguintes arquivos:

📄 conceitos.md

Explica:

O que são funções

Como e quando utilizá-las

Diferença entre função e operador

Boas práticas de uso

📄 funcoes-basicas.md

Conteúdo teórico e prático sobre:

Funções numéricas

Funções de texto

Funções de data

Tratamento de NULL

📄 exemplos.sql

Arquivo prático contendo:

Exemplos separados por tipo de função

Comentários explicativos

Casos reais de uso

📄 exercicios.md

Conjunto de exercícios:

Progressivos

Baseados em cenários reais

Com foco em raciocínio e interpretação de dados

⚙️ Estrutura comum de uso

As funções normalmente aparecem dentro do SELECT:

SELECT 
    nome,
    UPPER(nome) AS nome_maiusculo,
    COALESCE(email, 'não informado') AS email
FROM clientes;


📌 Funções podem ser combinadas e encadeadas.

⚠️ Erros comuns neste módulo

Ignorar valores NULL

Usar funções em excesso sem necessidade

Não usar aliases para colunas calculadas

Confundir funções de agregação com funções simples

Esquecer diferenças entre bancos (PostgreSQL, MySQL, SQL Server)

Esses pontos são explorados ao longo do módulo.

🧪 Como estudar este módulo

Sugestão de abordagem:

1️⃣ Leia conceitos.md
2️⃣ Estude funcoes-basicas.md
3️⃣ Execute os comandos do exemplos.sql
4️⃣ Resolva os desafios do exercicios.md
5️⃣ Modifique as queries e observe os resultados

📌 A prática é fundamental para fixar funções.

📈 Uso no mundo real

Funções SQL são usadas diariamente em:

Relatórios e dashboards

Tratamento de dados inconsistentes

Normalização de informações

Regras de negócio

Preparação de dados para análise

Dominar funções torna seu SQL mais profissional e poderoso.

🚀 Próximos Passos

Após dominar Funções Básicas, o próximo passo é:

➡ Agrupamentos (GROUP BY)

Funções de agregação

Análises consolidadas

Indicadores e métricas

📘 Resumo

Funções SQL transformam dados simples em informação valiosa.
Elas são essenciais para qualquer análise real.