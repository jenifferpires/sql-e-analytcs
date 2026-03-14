# SQL & Analytics: Sistema de Fidelidade (Case TeoMeWhy).

## 📌 Visão Geral:  
Este projeto documenta a construção de um pipeline de dados completo, desde a ingestão de arquivos brutos (CSVs) até a criação de uma camada analítica para Business Intelligence. O cenário foca em um sistema de fidelidade e transações de itens, processando uma volumetria de mais de **300 mil registros**.

## 🏗️ Estrutura do Repositório:  
Para manter a organização modular e profissional, a estrutura do projeto é a seguinte:

* **/data**: Amostras dos arquivos CSV originais para reprodutibilidade.
* **/docs**: Documentação técnica, diagramas e evidências de testes.
* **/scripts/sql**:
    * `01_staging.sql`: Criação das tabelas de "pouso" e scripts de carga bruta (`LOAD DATA`).
    * `02_refined.sql`: Processos de ETL, normalização, limpeza de strings e tipagem de dados.
    * `03_analytics.sql`: Criação de Views e consultas de KPIs de negócio.

## 🛠️ Desafios Técnicos & Soluções (O Diferencial):  
Durante o desenvolvimento, foram superados obstáculos críticos que demonstram a resiliência do pipeline:

1.  **Segurança e Acesso (secure_file_priv):**
    * **Problema**: Restrições de permissão do MySQL para leitura de arquivos externos.
    * **Solução**: Padronização do diretório de carga e configuração de privilégios de leitura no SO.

2.  **Performance em Larga Escala:**
    * **Problema**: Timeouts (Erro 2013) durante a inserção de +320k linhas.
    * **Solução**: Implementação de `SET AUTOCOMMIT = 0` e suspensão temporária de `FOREIGN_KEY_CHECKS` para otimizar a velocidade de escrita.

3.  **Integridade e Saneamento:**
    * **Problema**: Registros duplicados na origem e itens vinculados a produtos inexistentes (Erro 1452).
    * **Solução**: Uso estratégico de `INSERT IGNORE` e subqueries de validação para garantir que apenas dados íntegros cheguem à camada analítica.

4. **Enriquecimento e Humanização de Dados (UX para Analytics):**
   * **Problema:** Tabelas de fatos continham apenas UUIDs, dificultando a identificação imediata dos "Top Clientes" em um cenário de suporte.
   * **Solução:** - Implementação de um script de higienização para preencher campos `NULL`.
- Geração de identidades fictícias únicas e e-mails estruturados (`Usuario_ID@genericmail.com`).
- Atualização da camada de visualização (`vw_relatorio_vendas`) para exibir nomes amigáveis, simulando um sistema de CRM real.

## 📊 Resultados e Métricas:  
Os dados foram refinados e consolidados, apresentando os seguintes números finais:

* **Total de Clientes**: 15.099 usuários únicos.
* **Catálogo de Produtos**: 118 itens normalizados por categoria.
* **Volumetria de Vendas**: 300.400 transações processadas.
* **Faturamento Global**: **R$ 1.924.819,00**.

### 🏆 Top 5 Categorias por Volume de Itens:  
| Categoria | Total de Produtos |
| :--- | :--- |
| RPG | 24 |
| Espada | 14 |
| Armadura | 14 |
| Botas | 14 |
| Cajado | 14 |
*(Dados extraídos da validação de categorias da `tb_produtos`).*

---

### 🚀 Como executar?  
1.  Importe os arquivos da pasta `/data` para o seu ambiente local.
2.  Execute os scripts SQL seguindo a ordem numérica.
3.  Consulte a view `vw_relatorio_vendas` para obter a base consolidada para dashboards.