🔗 GROUP BY com HAVING.  
🎯 Objetivo:    

Este arquivo explica o uso da cláusula HAVING, que permite filtrar resultados após o agrupamento dos dados.  
 
Ao final deste conteúdo, você será capaz de:  

Entender a diferença entre WHERE e HAVING.  
Saber quando usar cada um.  
Aplicar filtros corretamente em consultas agrupadas.  
Evitar erros comuns em relatórios e métricas.  

📌 HAVING é indispensável em análises baseadas em agregações.  

🧠 O que é HAVING?   

HAVING é uma cláusula utilizada para filtrar grupos de dados, ou seja, ela atua depois do GROUP BY.  

Enquanto o WHERE filtra linhas individuais, o HAVING filtra resultados agregados.  

🔄 WHERE x HAVING (diferença essencial)  
| Cláusula | Quando atua          | O que filtra |
| -------- | -------------------- | ------------ |
| `WHERE`  | Antes do `GROUP BY`  | Linhas       |
| `HAVING` | Depois do `GROUP BY` | Grupos       |


📌 Essa é uma das distinções mais importantes em SQL.  

🧩 Exemplo conceitual 

Pergunta:  
Quais clientes possuem total de compras maior que 1000? 

❌ Tentativa incorreta (uso de WHERE)
```sql
SELECT cliente_id, SUM(valor)
FROM vendas
WHERE SUM(valor) > 1000
GROUP BY cliente_id;
```


🚫 Erro: funções de agregação não podem ser usadas no WHERE. 

✔️ Forma correta (uso de HAVING) 
```sql
SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 1000;
```


📌 Primeiro o SQL agrupa, depois aplica o filtro.   

🔗 Usando WHERE e HAVING juntos   

É comum (e recomendado) combinar as duas cláusulas.   

Exemplo:  
Total de vendas por cliente apenas em 2024, considerando somente clientes com faturamento acima de 1000.   

```sql
SELECT
    cliente_id,
    SUM(valor) AS total_vendas
FROM vendas
WHERE data >= '2024-01-01'
GROUP BY cliente_id
HAVING SUM(valor) > 1000;

```

✔ WHERE → filtra as vendas   
✔ GROUP BY → agrupa por cliente   
✔ HAVING → filtra os grupos   

⚙️ Ordem lógica de execução (reforço)   

FROM  
WHERE   
GROUP BY   
Funções de agregação   
HAVING   
SELECT   
ORDER BY   

📌 Entender essa ordem evita muitos erros.  

⚠️ Erros Comuns com HAVING  

❌ Usar HAVING no lugar de WHERE sem necessidade.   
❌ Tentar usar funções de agregação no WHERE.   
❌ Não usar alias claros.   
❌ Filtrar grupos sem sentido de negócio.   

🧠 Boas Práticas:   

Use WHERE sempre que possível para reduzir dados antes do agrupamento.  

Use HAVING apenas para filtros sobre agregações.   
  
Dê nomes claros às colunas agregadas.   

Teste a query sem HAVING antes de aplicá-lo.   

📘 Uso no Mundo Real   

HAVING é usado em:   

Relatórios financeiros.  
Identificação de clientes relevantes.   
Análises de performance.   
Métricas e KPIs.   
Dashboards com filtros por valor agregado.   

🚀 Próximo Passo   

➡ GROUP BY com Funções de Agregação.   

SUM   
COUNT   
AVG   
MIN   
MAX   

Esse conteúdo aprofunda a análise consolidada.   

📌 Resumo:   
  
HAVING permite filtrar resultados agregados.   
É a peça que transforma agrupamentos em análises úteis.   