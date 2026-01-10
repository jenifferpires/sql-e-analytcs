📘 Consultas Básicas em SQL
🎯 Objetivo do Módulo

Este módulo apresenta os fundamentos das consultas SQL, ensinando como extrair dados de tabelas de forma clara, organizada e segura.

Aqui você aprenderá a ler dados, aplicar filtros, ordenar resultados e compreender como o banco processa uma consulta básica.

📌 Este é um dos módulos mais importantes do aprendizado em SQL — ele sustenta praticamente tudo que vem depois.

🧠 O que são Consultas Básicas?

Consultas básicas são instruções SQL usadas para:

Selecionar dados de tabelas

Filtrar registros

Ordenar resultados

Limitar volumes de dados retornados

Dar significado aos dados extraídos

Elas respondem perguntas como:

Quais clientes estão ativos?

Quais pedidos foram feitos hoje?

Qual produto é mais caro?

Quais registros atendem determinada condição?

🧩 Conteúdos abordados neste módulo

Este módulo está organizado nos seguintes arquivos:

📄 conceitos.md

Apresenta os conceitos fundamentais das consultas SQL, incluindo:

O papel do SELECT

Como o SQL lê uma consulta

Estrutura básica de uma query

Boas práticas iniciais

📄 select-where-order-by.md

Aprofunda o uso de:

SELECT → escolha de colunas

WHERE → filtros de dados

ORDER BY → ordenação de resultados

Inclui exemplos práticos e erros comuns.

📄 limit-distinct-aliases.md

Explora recursos essenciais para controle e clareza:

LIMIT → restringir quantidade de resultados

DISTINCT → remover duplicidades

AS (Aliases) → tornar consultas mais legíveis

📄 exemplos.sql

Arquivo prático contendo:

Consultas simples

Filtros comuns

Ordenações

Uso de LIMIT, DISTINCT e aliases

Estrutura comentada para estudo e testes

⚙️ Estrutura base de uma consulta SQL

A maioria das consultas básicas segue este formato:

SELECT coluna1, coluna2
FROM tabela
WHERE condição
ORDER BY coluna;


📌 Nem todas as cláusulas são obrigatórias, mas a ordem é importante.

🧠 Como pensar uma consulta SQL

Antes de escrever uma query, pergunte:

Qual informação eu quero?

De qual tabela vêm os dados?

Existe algum filtro necessário?

Preciso ordenar o resultado?

Quantos registros preciso visualizar?

Esse raciocínio evita erros e torna o SQL mais intuitivo.

⚠️ Erros comuns neste estágio

Alguns erros frequentes de quem está começando:

Usar SELECT * sem necessidade

Esquecer o WHERE e retornar dados demais

Ordenar por colunas que não fazem sentido

Confundir filtro (WHERE) com ordenação (ORDER BY)

Não usar aliases, dificultando a leitura

Todos esses pontos são tratados ao longo do módulo.

🧪 Como usar este módulo na prática

Sugestão de estudo:

1️⃣ Leia o conceitos.md
2️⃣ Estude select-where-order-by.md com calma
3️⃣ Pratique com limit-distinct-aliases.md
4️⃣ Execute os comandos do exemplos.sql
5️⃣ Modifique as queries e observe os resultados

📌 SQL se aprende fazendo, não apenas lendo.

📈 Conexão com o mundo real:

As consultas deste módulo são usadas diariamente em:

Suporte técnico

Análise de dados

Relatórios operacionais

Validação de informações

Investigações em produção

Dominar essas consultas traz autonomia e segurança no uso de dados.

🚀 Próximos Passos

Após dominar Consultas Básicas, você estará pronto para avançar para:

➡ Funções Básicas:

Numéricas

Texto

Datas

Tratamento de NULL

Esses recursos ampliam muito o poder das consultas.

📘 Resumo:

Consultas básicas são a base do SQL.
Quem domina SELECT, WHERE e ORDER BY consegue evoluir com muito mais facilidade.