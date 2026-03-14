# SQL & Analytics: Sistema de Fidelidade (Case TeoMeWhy).

## 📌 Visão Geral:  
Este projeto documenta a construção de um pipeline de dados completo, desde a ingestão de arquivos brutos (CSVs) até a criação de uma camada analítica para Business Intelligence. O cenário foca em um sistema de fidelidade e transações de itens.

## 🏗️ Estrutura do Repositório:  
Para manter a organização modular que discutimos, a estrutura sugerida é:

/data: Arquivos CSV originais.

/scripts/01_staging: Criação das tabelas de "pouso" e scripts de LOAD DATA.

/scripts/02_refined: Scripts de ETL, normalização e carga para tabelas tb_.

/scripts/03_analytics: Criação de Views e consultas de KPIs (Faturamento, Rankings).

## 🛠️ Desafios Técnicos & Soluções (O Diferencial):  
Nesta etapa, demonstramos resiliência técnica ao superar os seguintes obstáculos:

####  1. Ingestão e Segurança (secure_file_priv)
Problema: Erro de permissão ao tentar ler arquivos fora do diretório padrão do MySQL.

Solução: Centralização dos dados na pasta /Uploads do MySQL Server 8.0 e configuração de permissões de leitura.

#### 2. Gerenciamento de Timeouts (Erro 2013/60s)
Problema: Queda de conexão em cargas massivas (especialmente na tabela de itens).

Solução: * Aumento dos limites de net_read_timeout e wait_timeout via SQL.

Desativação temporária de FOREIGN_KEY_CHECKS e AUTOCOMMIT para otimização de performance.

#### 3. Saneamento de Dados (Schema Drift)
Problema: Inconsistência entre os nomes das colunas nos CSVs e a modelagem final.

Solução: Criação de uma camada de Staging intermediária, utilizando TRIM, NULLIF e STR_TO_DATE para garantir a integridade antes da carga final.

## 📊 Modelagem de Dados:  
O projeto utiliza um modelo relacional clássico:

Dimensões: tb_clientes, tb_produtos.

Fatos: tb_vendas, tb_itens_venda.

Camada de Abstração: vw_relatorio_vendas (consolida os dados para relatórios).

