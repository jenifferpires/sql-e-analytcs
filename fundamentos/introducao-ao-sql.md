Introdução ao SQL
O que é SQL?

SQL (Structured Query Language) é uma linguagem padrão utilizada para consultar, manipular e analisar dados armazenados em bancos de dados relacionais.

Em termos simples:
👉 SQL é a linguagem que usamos para conversar com o banco de dados.


Com SQL, conseguimos:

Buscar informações.
Filtrar dados.
Organizar resultados.
Analisar volumes grandes de dados.
Apoiar decisões técnicas e de negócio.

Onde o SQL é usado?

SQL está presente na maioria dos sistemas corporativos, como:
Sistemas financeiros
ERPs
CRMs
Plataformas SaaS
Sistemas internos e aplicações web.

Em ambientes de sustentação e produção, SQL é essencial para:

Investigar incidentes
Validar dados
Corrigir inconsistências
Gerar relatórios operacionais.


O que é um banco de dados relacional?

Um banco de dados relacional organiza os dados em tabelas, compostas por:

Linhas → registros

Colunas → atributos

Exemplo simples de tabela:

id	nome	email
1	Ana	ana@email.com

2	Carlos	carlos@email.com

As tabelas podem se relacionar entre si por meio de chaves (IDs).


Principais comandos SQL (visão geral)

Neste repositório, o foco será principalmente nos comandos de consulta, como:

SELECT → buscar dados

WHERE → filtrar registros

ORDER BY → ordenar resultados

GROUP BY → agrupar dados

JOIN → relacionar tabelas

Outros comandos importantes também serão abordados:

INSERT

UPDATE

DELETE

Controle de transações


Exemplo simples de SQL:

SELECT nome, email
FROM clientes
WHERE ativo = 1
ORDER BY nome;

O que essa query faz?

Busca o nome e o email dos clientes
Retorna apenas clientes ativos
Ordena o resultado pelo nome


Como pensar em SQL (modelo mental)?

Antes de escrever uma query, pense sempre em:

O que eu quero ver?
→ colunas (SELECT)

De onde vêm esses dados?
→ tabela (FROM)

Quais filtros são necessários?
→ condições (WHERE)

Como o resultado deve ser organizado?
→ ordenação ou agrupamento

Esse raciocínio evita queries confusas e erros comuns.


Erros comuns para iniciantes:

Usar SELECT * sem necessidade
Não filtrar dados corretamente
Não entender o impacto de grandes volumes de dados
Misturar lógica de negócio direto na query sem clareza
Esses pontos serão trabalhados ao longo do repositório.


No dia a dia de sustentação e análise, SQL é usado para:

Verificar se dados foram gravados corretamente.
Identificar registros inconsistentes.
Apoiar investigações de erros em produção.
Criar relatórios rápidos para áreas internas.

Dominar SQL significa ganhar autonomia técnica.