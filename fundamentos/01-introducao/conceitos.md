🧠 Conceitos Fundamentais de SQL. 
📌 O que é SQL?  

SQL (Structured Query Language) é a linguagem padrão utilizada para consultar, manipular e analisar dados armazenados em bancos de dados relacionais.       

Com SQL é possível:  

Ler dados.  
Filtrar informações.    
Organizar resultados.       
Gerar relatórios.   
Apoiar decisões de negócio. 

SQL não é uma linguagem de programação tradicional, mas sim uma linguagem declarativa, onde você descreve o que deseja obter, e o banco de dados decide como executar.  


🗄️ O que é um Banco de Dados?   

Um banco de dados é um local estruturado onde os dados são armazenados de forma organizada, segura e persistente.   

Ele permite:    

Armazenar grandes volumes de dados.  
Acessar informações rapidamente.     
Garantir integridade e consistência.     
Compartilhar dados entre sistemas.   

📌 Exemplos de bancos de dados relacionais:  

MySQL  
PostgreSQL  
SQL Server  
Oracle  

📊 Tabelas, Linhas e Colunas.

Em bancos de dados relacionais, os dados são organizados em tabelas. 

Estrutura básica de uma tabela: 

Tabela → conjunto de dados (ex: clientes)   

Colunas → atributos (ex: nome, email, cidade)   

Linhas → registros individuais (ex: um cliente) 


📌 Pense em uma tabela como uma planilha, onde: 

Cada linha é um registro.   
Cada coluna é uma informação específica.


🔍 O que é uma Query?   

Uma query é uma instrução SQL utilizada para consultar ou manipular dados dentro de um banco de dados.  

Exemplo simples de query:   

```sql
SELECT * FROM clientes; 
``` 

Essa instrução significa:   

SELECT → selecione  

* → todas as colunas    

FROM clientes → da tabela clientes  

📌 Queries são usadas para fazer perguntas aos dados.   


📥 O que é SELECT?   

SELECT é o comando mais básico e mais utilizado em SQL.  
Ele serve para ler dados de uma ou mais tabelas.     

Exemplo:     

```sql
SELECT nome, email   
FROM clientes;   
```

➡️ Retorna apenas os nomes e e-mails dos clientes.  

📌 Importante:  

SQL não altera dados quando usamos apenas SELECT.       

É seguro para leitura e análise.    

🧩 Conceito de Resultado (Result Set)   

Toda consulta SELECT retorna um conjunto de resultados, chamado de result set.  

Esse resultado pode ser:    

Visualizado em ferramentas SQL  
Usado em relatórios 
Consumido por sistemas e APIs   
Base para análises mais complexas.  


📌 Boas Práticas Iniciais :     

Desde o início, algumas boas práticas devem ser adotadas:   

Comece com consultas simples.   
Evite complexidade desnecessária.   
Leia o resultado antes de avançar.  
Use nomes de colunas claros.    
Entenda o dado antes de transformá-lo.  

Essas práticas ajudam a evitar erros e facilitam a evolução no aprendizado. 

🔗 Conexão com os Próximos Conceitos:   

Os conceitos apresentados aqui são a base para entender:    

WHERE (filtros)  
ORDER BY (ordenação)     
Funções SQL 
Agrupamentos (GROUP BY)  
JOINs e Subqueries   

Sem esse entendimento inicial, os módulos seguintes se tornam mais difíceis.     

📘 Resumo:  

SQL é a linguagem que permite transformar dados em informação.  
Entender seus conceitos fundamentais é o primeiro passo para análises eficientes e decisões melhores.   

