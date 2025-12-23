Funções Básicas (COUNT, SUM, AVG, MIN, MAX)

As funções básicas de agregação permitem resumir e analisar dados.
Elas transformam vários registros em informação útil.

São essenciais para:

relatórios.

análises rápidas.

validações em produção.

apoio à tomada de decisão.

---

COUNT
O que é?

COUNT é usado para contar registros.

Exemplo básico:

SELECT COUNT(*) 
FROM clientes;

Retorna:

total de registros da tabela clientes.

---

COUNT com condição:

SELECT COUNT(*) 
FROM clientes
WHERE ativo = 1;

Retorna:

total de clientes ativos.

---

COUNT em coluna específica:

SELECT COUNT(email)
FROM clientes;

Conta apenas registros onde email não é NULL.

---

Erros comuns com COUNT:

Achar que COUNT(coluna) conta todos os registros

Não considerar valores NULL

Usar COUNT sem WHERE em tabelas grandes sem necessidade.

---

SUM
O que é?

SUM é usado para somar valores numéricos.

---

Exemplo básico:

SELECT SUM(valor)
FROM pedidos;

Retorna:

soma total do valor dos pedidos.

---

SUM com filtro:

SELECT SUM(valor)
FROM pedidos
WHERE status = 'PAGO';

Muito comum em relatórios financeiros.

---

Erros comuns com SUM

Usar SUM em colunas não numéricas.

Não filtrar dados corretamente.

Somar valores que já estão agregados.

---

AVG
O que é?

AVG calcula a média dos valores.

---

Exemplo básico:

SELECT AVG(valor)
FROM pedidos;

Retorna:

valor médio dos pedidos.

---

AVG com filtro:

SELECT AVG(valor)
FROM pedidos
WHERE status = 'PAGO';

---

Observação importante:

AVG ignora valores NULL, o que pode impactar a análise.

---

Erros comuns com AVG:

Não considerar valores NULL.

Usar AVG sem entender o contexto dos dados.

Comparar médias sem filtros adequados.

---

MIN e MAX
O que são?

MIN → menor valor

MAX → maior valor


Funcionam com:

números

datas

textos (ordem alfabética)

---

Exemplo básico:

SELECT MIN(valor), MAX(valor)
FROM pedidos;

---

MIN e MAX com datas

SELECT MIN(data_criacao), MAX(data_criacao)
FROM pedidos;

Muito usado para:

identificar períodos

verificar dados antigos ou recentes.

---

Erros comuns com MIN e MAX

Não entender como funcionam com texto.

Esquecer filtros importantes.

Usar sem contexto (valor mínimo de quê?).

---

Usando aliases com funções

É uma boa prática usar aliases para dar nomes claros aos resultados.

SELECT 
  COUNT(*) AS total_pedidos,
  SUM(valor) AS valor_total,
  AVG(valor) AS valor_medio
FROM pedidos
WHERE status = 'PAGO';

Isso deixa o resultado:

mais legível.

mais fácil de interpretar.

melhor para relatórios.

---

No dia a dia de trabalho, funções básicas são usadas para:

contar registros impactados em incidentes

validar volumes de dados

gerar métricas rápidas

apoiar decisões técnicas e de negócio

São funções simples, mas extremamente poderosas.

---

Resumo rápido:

COUNT → quantidade de registros.

SUM → soma de valores.

AVG → média.

MIN / MAX → menor e maior valor.

Sempre usar com contexto e filtros.

---
