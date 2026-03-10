# SQL & Analytics: Sistema de Fidelidade (Case TeoMeWhy).

## 📌 Sobre o Projeto:

Este repositório contém o desenvolvimento completo de um processo de **Saneamento e Normalização de Dados** utilizando o dataset de um sistema de fidelidade. O objetivo foi transformar dados brutos com inconsistências em um banco de dados relacional otimizado para análise.

## 🎓 Referências e Base de Estudo: 
O desenvolvimento deste projeto foi baseado no excelente conteúdo educativo do **Téo Calvo (Téo Me Why)**:
- **Dataset (Kaggle):** [TéoMeWhy Loyalty System](https://www.kaggle.com/datasets/teocalvo/teomewhy-loyalty-system)
- **Curso/Playlist de Apoio:** [SQL para Análise de Dados - Téo Me Why](https://www.youtube.com/playlist?list=PLvlkVRRKOYFRo651oD0JptVqfQGDvMi3j)

## 🛠️ Tecnologias Utilizadas
- **Banco de Dados:** MySQL (Workbench)
- **Infraestrutura:** Ubuntu (WSL)
- **Versionamento:** Git & GitHub

## 📈 Etapas do Projeto (Hands-on)
1. **Importação:** Carga dos arquivos CSV brutos (mais de 1 milhão de registros).
2. **Tratamento de Erros:** Resolução de conflitos de data (Erro 1292), tipos de dados incorretos e nomes inconsistentes.
3. **Normalização:** Criação de tabelas `tb_` seguindo o modelo relacional.
4. **Otimização:** Implementação de Índices para performance e Views para relatórios concisos.

## 📂 Organização do Repositório: 
- `src/sql/normalization`: Scripts de ETL e criação de estrutura.
- `src/sql/analysis`: Consultas de Business Intelligence.
- `docs/assets`: Documentação visual (prints de sucesso das queries).