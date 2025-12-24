# Funções Básicas em SQL  

As funções básicas em SQL permitem **manipular, transformar e analisar dados** diretamente nas consultas, sem necessidade de processamento adicional na aplicação.

Elas são amplamente utilizadas para:
- Ajustar formatos de dados
- Realizar cálculos
- Tratar valores nulos
- Trabalhar com textos e datas
- Preparar dados para relatórios e análises

Neste módulo, o foco é **entendimento conceitual + uso prático**, sempre pensando em cenários reais de trabalho.

---

## 📌 O que são funções em SQL?

Uma função é uma **instrução que recebe valores como entrada**, processa esses valores e **retorna um resultado**.

Estrutura geral:  

```sql  
FUNCAO(coluna_ou_valor) 

``` 

Exemplo simples:

```SQL 
SELECT UPPER(nome) FROM clientes;
```

🔢 Funções Numéricas
Usadas para realizar cálculos matemáticos em colunas numéricas.

Principais funções:

Função	Descrição
SUM()	Soma valores
AVG()	Calcula média
MIN()	Retorna o menor valor
MAX()	Retorna o maior valor
ROUND()	Arredonda números
ABS()	Valor absoluto

Exemplo prático:

```sql 
SELECT 
  SUM(valor) AS total_vendas,
  AVG(valor) AS media_vendas
FROM pedidos;
```

🔤 Funções de Texto (Strings)
Utilizadas para manipulação e padronização de textos, muito comuns em cadastros.

Principais funções: 
### Funções de Texto em SQL

| Função | Descrição |
| :--- | :--- |
| **UPPER()** | Converte o texto para letras maiúsculas. |
| **LOWER()** | Converte o texto para letras minúsculas. |
| **LENGTH()** | Conta a quantidade total de caracteres. |
| **CONCAT()** | Junta (concatena) dois ou mais textos. |
| **SUBSTRING()** | Extrai uma parte específica do texto. |
| **TRIM()** | Remove espaços em branco do início e do fim. |

Exemplo prático: 
```sql 
SELECT 
  UPPER(nome) AS nome_maiusculo,
  LENGTH(email) AS tamanho_email
FROM usuarios;
```

📅 Funções de Data e Hora
Permitem manipular datas para análises temporais, filtros e relatórios.

Principais funções (MySQL) 
### Funções de Data em SQL

| Função | Descrição |
| :--- | :--- |
| **NOW()** | Retorna a data e a hora atuais do sistema. |
| **CURDATE()** | Retorna apenas a data atual (sem a hora). |
| **YEAR()** | Extrai a parte do ano de uma data específica. |
| **MONTH()** | Extrai a parte do mês de uma data específica. |
| **DATEDIFF()** | Calcula a diferença de dias entre duas datas. |

Exemplo prático:
```sql 
SELECT 
  pedido_id,
  DATEDIFF(CURDATE(), data_pedido) AS dias_desde_pedido
FROM pedidos;
```

⚠️ Tratamento de Valores Nulos (NULL)
Valores NULL representam ausência de dado, e precisam de atenção especial.

F### Funções para Tratamento de Valores Nulos (NULL)

| Função | Descrição |
| :--- | :--- |
| **IS NULL** | Verifica se um campo está vazio (nulo). |
| **IS NOT NULL** | Verifica se um campo contém algum valor (não é nulo). |
| **IFNULL()** | Substitui um valor NULL por um valor alternativo especificado. |
| **COALESCE()** | Retorna o primeiro valor não nulo de uma lista de colunas ou valores. |

Exemplo prático:
```sql
SELECT 
  nome,
  IFNULL(telefone, 'Não informado') AS telefone
FROM clientes;
```

🧠 Funções + SELECT
```sql
Funções são frequentemente combinadas com SELECT, WHERE, ORDER BY e GROUP BY.
```

Exemplo combinando conceitos:
```sql 
SELECT 
  UPPER(categoria) AS categoria,
  ROUND(AVG(preco), 2) AS preco_medio
FROM produtos
GROUP BY categoria
ORDER BY preco_medio DESC;
```

💼 Cenário real de uso
Em um ambiente corporativo, funções SQL são usadas para:

Criar relatórios consolidados
Ajustar dados inconsistentes
Preparar informações para dashboards
Reduzir processamento na aplicação
Garantir padronização de dados

Dominar funções básicas é essencial para evoluir para consultas avançadas e analíticas.

