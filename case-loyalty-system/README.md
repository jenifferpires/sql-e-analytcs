# SQL & Analytics: Sistema de Fidelidade (Case TeoMeWhy).  

## 📌 Visão Geral:  
Este projeto documenta a construção de um pipeline de dados completo, focado em um sistema de fidelidade. O objetivo foi transformar dados brutos (CSV) em uma camada analítica robusta, superando desafios reais de integridade e performance em uma volumetria de **300 mil registros**.

## 🏗️ Estrutura do Repositório
* **/data**: Amostras dos 4 arquivos CSV originais (clientes, produtos, transacoes e transacao_produto).
* **/scripts/sql**:
    * `01_staging.sql`: Criação das tabelas e `LOAD DATA` dos 4 arquivos brutos.
    * `02_refined.sql`: ETL e Saneamento (Tratamento de integridade e duplicatas).
    * `03_analytics.sql`: View `vw_relatorio_vendas` e KPIs de negócio.
    * `04_automacoes.sql`: Script de humanização e limpeza de e-mails/nomes.
    * `04_automacoes.sql`: Scripts de enriquecimento e manutenção.

## 🛠️ Desafios Técnicos & Soluções (O Diferencial).  
1. **Segurança (secure_file_priv):** Configuração de privilégios no SO para leitura de arquivos externos.
2. **Performance:** Uso de `SET AUTOCOMMIT = 0` e suspensão de `FOREIGN_KEY_CHECKS` para otimizar a carga de +320k linhas.
3. **Integridade de Dados:** Tratamento de registros órfãos (Erro 1452) e duplicados com `INSERT IGNORE` e subqueries de validação.
4. **Enriquecimento (UX para Analytics):** Transformação de UUIDs em nomes amigáveis (`Usuario_ID`) e e-mails estruturados, simulando um ambiente de suporte real.

## 📊 Resultados e Métricas:  
* **Total de Clientes**: 15.099 usuários únicos.
* **Faturamento Global**: **R$ 1.924.819,00**.
* **Volumetria de Itens**: 300.268 registros validados.

### 🏆 Top 5 Categorias (Volume).  
| Categoria | Total de Produtos |
| :--- | :--- |
| RPG | 24 |
| Espada | 14 |
| Armadura | 14 |
| Botas | 14 |
| Cajado | 14 |
*(Dados validados na `tb_produtos`)*

---
### 🚀 Como Executar?  
1. Clone o repositório e configure as permissões de leitura na pasta `/data`.
2. Execute os scripts em ordem (`01` a `04`).
3. Acesse a view `vw_relatorio_vendas` para insights imediatos.