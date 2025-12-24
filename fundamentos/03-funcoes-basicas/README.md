📌 Funções Básicas em SQL 

🎯 Objetivo do módulo 

Este módulo apresenta as funções básicas do SQL, fundamentais para manipulação, transformação e  análise de dados em consultas. 

Ao final deste conteúdo, você será capaz de: 

Utilizar funções para tratar textos, números e datas. 
Aplicar funções em consultas reais com SELECT. 
Combinar funções com filtros e ordenações.  
Compreender quando e por que usar cada tipo de função.  

Este conhecimento é amplamente utilizado em ambientes corporativos, relatórios, dashboards e  integrações de sistemas. 

🧠 O que são funções em SQL? 

Funções em SQL são operações pré-definidas que recebem valores como entrada e retornam um resultado. 

Elas permitem: 

Manipular dados (ex: converter texto, arredondar números) 
Realizar cálculos 
Extrair partes de valores 
Preparar dados para análise. 
 
📌 Importante: 
Funções são aplicadas linha a linha, antes de qualquer agregação (GROUP BY). 

🗂️ Tipos de funções abordadas 

Neste módulo, trabalhamos com os principais grupos de funções básicas: 

🔤 Funções de Texto 

Usadas para manipular e tratar strings. 

Exemplos: 

UPPER() – converte texto para maiúsculo  
LOWER() – converte texto para minúsculo  
LENGTH() – retorna o tamanho do texto  
CONCAT() – concatena textos  
SUBSTRING() – extrai parte de um texto  
TRIM() – remove espaços extras  

🔢 Funções Numéricas 

Utilizadas para cálculos e ajustes de valores numéricos. 

Exemplos: 
 
ROUND() – arredonda valores 
CEILING() – arredonda para cima  
FLOOR() – arredonda para baixo 
ABS() – valor absoluto 
MOD() – resto da divisão 

📅 Funções de Data e Hora 

Essenciais para trabalhar com datas em sistemas reais. 

Exemplos: 

NOW() – data e hora atual 
CURDATE() – data atual 
YEAR(), MONTH(), DAY() – extração de partes da data 
DATEDIFF() – diferença entre datas 

🧩 Uso das funções em consultas 

As funções são normalmente utilizadas dentro do SELECT, podendo ser combinadas com: 

WHERE 
ORDER BY 
GROUP BY (mais adiante) 
ALIASES 

Exemplo conceitual: 

```sql  
SELECT 
  UPPER(nome) AS nome_formatado, 
  ROUND(salario, 2) AS salario_arredondado 
FROM funcionarios; 
``` 
 
📌 Boa prática: 
Sempre utilize aliases (AS) para deixar o resultado mais legível. 

📁 Organização dos arquivos deste módulo 
03-funcoes-basicas/ 
├── README.md           → Visão geral e objetivos do módulo.  
├── conceitos.md        → Explicação detalhada das funções.  
├── funcoes-basicas.md  → Conteúdo técnico com exemplos explicados.  
├── exemplos.sql        → Exemplos práticos executáveis.  
└── exercicios.md       → Exercícios para fixação.  

🧪 Como estudar este módulo: 
 
Sugestão de fluxo: 

📖 Leia o conceitos.md para entender o propósito das funções 

🔍 Estude o arquivo funcoes-basicas.md, analisando cada exemplo 

▶️ Execute os comandos do exemplos.sql no MySQL 

✍️ Resolva os desafios propostos em exercicios.md 

🚀 Conexão com o próximo módulo 
 
O domínio das funções básicas é essencial para avançar para: 

GROUP BY  
HAVING   
Subqueries  
Window Functions  
Queries reais e análises avançadas.  

📌 Resumo final: 
Funções básicas são um dos pilares do SQL prático.  
Elas tornam consultas mais inteligentes, dados mais limpos e resultados mais úteis para o negócio.  