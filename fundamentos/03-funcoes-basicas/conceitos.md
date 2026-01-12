# 🛠️ Funções Básicas em SQL

As **funções SQL** são comandos essenciais para manipular, transformar e analisar dados. Elas permitem realizar cálculos e tratar textos ou datas diretamente na consulta.

---

## 🎯 O que é uma Função?

Uma função recebe um valor, processa-o e retorna um resultado.

| Tipo | Descrição | Exemplos |
| :--- | :--- | :--- |
| **🔢 Numéricas** | Cálculos matemáticos e estatísticos | `SUM`, `AVG`, `ROUND` |
| **🔤 Texto** | Manipulação de strings | `UPPER`, `CONCAT`, `LENGTH` |
| **📅 Data** | Operações com calendário | `NOW`, `YEAR`, `DATEDIFF` |
| **🚫 NULL** | Tratamento de valores ausentes | `IFNULL`, `COALESCE` |

---

## 🔢 Funções Numéricas

Utilizadas para gerar métricas e estatísticas.

```sql
SELECT 
    COUNT(*) AS total_clientes,
    AVG(salario) AS media_salarial,
    MAX(salario) AS maior_salario
FROM clientes;
```

🔤 Funções de Texto     
Essenciais para padronização de cadastros.      

UPPER / LOWER: Padroniza para maiúsculo/minúsculo.      
CONCAT: Une duas ou mais colunas.       
LENGTH: Retorna a quantidade de caracteres.     

```sql
SELECT 
    CONCAT(nome, ' - ', email) AS contato,
    UPPER(cidade) AS cidade_padrao
FROM clientes;
```

📅 Funções de Data
Permitem cálculos temporais precisos.

CURDATE(): Retorna a data atual.

DATEDIFF(data1, data2): Diferença em dias entre datas.

YEAR() / MONTH(): Extrai partes específicas.

```sql
SELECT 
    nome, 
    DATEDIFF(CURDATE(), data_nascimento) / 365 AS idade_aproximada
FROM clientes;
```

🚫 Tratamento de NULL
Evita que valores vazios quebrem seus cálculos ou relatórios.

IFNULL(coluna, substituto): Troca o NULL por um valor fixo.

COALESCE(v1, v2, ...): Retorna o primeiro valor não nulo encontrado.

```sql
SELECT 
    nome, 
    IFNULL(telefone, 'Sem Telefone') AS status_contato
FROM clientes;
```

⚠️ Atenção:  
Performance 
Evite usar funções diretamente na cláusula WHERE em colunas indexadas (ex: WHERE YEAR(data) = 2024), pois isso pode deixar a consulta lenta em bases muito grandes. 