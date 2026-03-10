# SQL & Analytics: Case de Normalização de Dados Reais (Kaggle).

## 📌 Sobre o Projeto:
Este projeto demonstra o processo de ETL (Extração, Transformação e Carga) de um dataset de vendas com mais de 1 milhão de registros. O foco principal foi transformar dados brutos e "sujos" em um modelo relacional otimizado.

## 🛠️ Desafios Superados (Aprendizado)
- **Normalização**: Divisão de tabelas flat em tabelas de Fato e Dimensões (Star Schema).
- **Limpeza de Dados**: Tratamento de erros de `DATETIME` (Erro 1292) e conversão de tipos de dados.
- **Performance**: Implementação de índices em colunas estratégicas para acelerar Joins em grandes volumes.
- **Consultas Complexas**: Criação de Views para facilitar a geração de relatórios de faturamento.

## 📁 Estrutura do Repositório
- `/scripts`: Scripts SQL de saneamento e automação.
- `/queries`: Consultas de Business Intelligence.
- `/documentation`: Screenshots dos resultados no MySQL Workbench.

## 🚀 Como replicar
1. Importe os CSVs originais no MySQL.
2. Execute o script `01_cleanup_and_migration.sql`.
3. Valide os dados através da View `vw_relatorio_vendas`.