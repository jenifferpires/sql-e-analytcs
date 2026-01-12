🧠 Exercícios – Funções Básicas em SQL. 
🎯 Objetivo: 

Este conjunto de exercícios tem como objetivo fixar o uso das funções básicas em SQL, desenvolvendo: 

Raciocínio lógico. 

Capacidade de leitura de dados. 

Escrita de consultas mais expressivas. 

Visão prática de uso no dia a dia. 

📌 Dica: execute os exercícios no MySQL e observe atentamente os resultados. 

🔢 Parte 1 – Funções Numéricas 
1️⃣ Arredondamento de valores 

Considere a tabela vendas(valor). 

👉 Crie uma consulta que: 
 
Exiba o valor original 
Exiba o valor arredondado com 2 casas decimais  

2️⃣ Valor absoluto 

Considere a tabela movimentacoes(valor). 

👉 Crie uma consulta que: 

Retorne o valor absoluto de cada movimentação.


📌 Quando esse tipo de cálculo é útil no mundo real? 

3️⃣ Arredondamento estratégico 

Considere a tabela notas(media_final). 

👉 Crie uma consulta que: 

Arredonde a média para cima.
Arredonde a média para baixo.

🔤 Parte 2 – Funções de Texto 
4️⃣ Padronização de nomes 

Considere a tabela clientes(nome). 

👉 Crie uma consulta que: 

Exiba o nome original.
Exiba o nome em letras maiúsculas.

5️⃣ Contagem de caracteres 

Considere a tabela usuarios(email). 

👉 Crie uma consulta que: 

Exiba o e-mail
Exiba a quantidade de caracteres do e-mail. 

6️⃣ Extração parcial 

Considere a tabela usuarios(email). 

👉 Crie uma consulta que: 

Retorne apenas os 5 primeiros caracteres do e-mail 

7️⃣ Limpeza de dados 

Considere a tabela clientes(nome) com espaços extras. 

👉 Crie uma consulta que: 

Remova espaços em branco antes e depois do nome 
 
📌 Por que isso é importante em bases reais? 

8️⃣ Concatenação de informações 

Considere a tabela funcionarios(nome, cargo). 

👉 Crie uma consulta que: 

Retorne uma descrição no formato: 
Nome - Cargo 

📅 Parte 3 – Funções de Data 
9️⃣ Data atual 

👉 Crie uma consulta que: 

Retorne a data atual do sistema 

🔟 Data e hora atual 

👉 Crie uma consulta que: 

Retorne a data e hora atual 

1️⃣1️⃣ Extração de partes da data 

Considere a tabela pessoas(data_nascimento). 

👉 Crie uma consulta que: 

Retorne o ano, mês e dia de nascimento separadamente 

1️⃣2️⃣ Diferença entre datas 
 
Considere a tabela clientes(data_cadastro). 

👉 Crie uma consulta que: 

Calcule quantos dias se passaram desde o cadastro até hoje 

📌 Esse cálculo é comum em relatórios de churn e retenção. 

🚫 Parte 4 – Tratamento de NULL 
1️⃣3️⃣ Substituição de valores NULL 

Considere a tabela clientes(nome, email) onde email pode ser NULL. 

👉 Crie uma consulta que: 

Substitua valores NULL por "não informado" 

1️⃣4️⃣ NULLIF 

Considere a tabela usuarios(status). 

👉 Crie uma consulta que: 

Retorne NULL quando o status for 'inativo' 

📌 Em quais cenários isso pode ser útil? 

1️⃣5️⃣ Evitando erro em cálculos 

Considere a tabela pagamentos(valor) onde o valor pode ser NULL. 

👉 Crie uma consulta que: 

Garanta que valores NULL sejam tratados como 0 

🧪 Parte 5 – Exercícios de Raciocínio (Mundo Real) 
1️⃣6️⃣ Relatório de clientes 

👉 Crie uma consulta que: 

Exiba o nome do cliente em maiúsculo.
Substitua e-mails nulos.
Mostre quantos dias o cliente está cadastrado. 

1️⃣7️⃣ Qualidade de dados 

👉 Crie uma consulta que: 

Limpe espaços em nomes.
Padronize textos.
Garanta que campos numéricos não retornem NULL. 

🧠 Reflexão Final 

Responda mentalmente ou documente:

Quando devo usar funções no SQL? 

Qual função evita mais erros em dados reais? 

Qual função você mais usou até agora? 

Onde funções simplificam regras de negócio? 

🚀 Próximo Passo 

➡ Agrupamentos (GROUP BY) 

Funções de agregação 
 
Métricas 

Dashboards 

Indicadores de negócio 

📘 Resumo 

Funções básicas são o alicerce para análises mais avançadas. 
Quem domina funções escreve SQL mais limpo, seguro e profissional. 