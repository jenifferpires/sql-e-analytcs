# 📁 Camada de Dados (Raw Data):  

Esta pasta contém as amostras dos dados brutos utilizados no projeto **Loyalty System ETL**. 

## 📝 Origem dos Dados:  
O dataset original foi extraído do **Kaggle**, referente ao sistema de fidelidade "TeomeWhy". 
- **Link do Dataset:** [Kaggle - TeomeWhy Loyalty System](https://www.kaggle.com/datasets/teomewhy/teomewhy-loyalty-system)

## 📊 Estrutura dos Arquivos:  
O projeto processa quatro arquivos principais:

1.  **clientes.csv**: Informações cadastrais dos usuários e pontos acumulados.
2.  **produtos.csv**: Catálogo de itens disponíveis (RPG, armaduras, poções, etc.).
3.  **transacoes.csv**: Registro das vendas (Fato principal).
4.  **transacao_produto.csv**: Detalhamento dos itens contidos em cada transação.

## ⚠️ Observação Técnica
Devido ao volume total de dados (mais de 300.000 registros na tabela de itens), os arquivos nesta pasta são **amostras (samples)**. O processamento completo deve ser feito utilizando o dataset original linkado acima.