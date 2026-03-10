# 🛠️ Troubleshooting: Desafios e Soluções Técnicas.  

Este documento registra os principais erros encontrados durante o processo de ETL e como foram mitigados.

## 1. Erro 1292: Incorrect datetime value:

- **Cenário**: Ao tentar inserir a coluna `DtCriacao` na tabela `tb_vendas` (tipo DATETIME).
- **Causa**: O formato original no CSV continha microsegundos ou fusos horários que o MySQL não interpretava nativamente.
- **Solução**: Utilizamos `LEFT(TRIM(DtCriacao), 19)` para capturar apenas o padrão `YYYY-MM-DD HH:MM:SS` antes da conversão.

## 2. Erro 1054: Unknown column 'pontos' in 'field list':

- **Cenário**: Falha ao executar o `INSERT INTO tb_clientes`.
- **Causa**: Tentativa de inserir dados em uma coluna com nome divergente entre a tabela de origem (CSV) e a tabela destino (`tb_`).
- **Solução**: Revisão do DDL (Data Definition Language) para garantir que a `tb_clientes` possuísse o campo `pontos INT`.

## 3. Erro 1406: Data too long for column 'id_transacao':

- **Cenário**: Truncamento de dados na tabela de itens.
- **Causa**: O `id_transacao` continha espaços em branco nas extremidades, excedendo o limite de caracteres definido.
- **Solução**: Aplicação da função `TRIM()` em todos os campos de ID para garantir a integridade e economia de espaço.

## 4. Erro 1366: Incorrect integer value (String vazia):

- **Cenário**: Erro ao converter `QtdeProduto` para `UNSIGNED`.
- **Causa**: O dataset continha campos vazios ('') que não podem ser convertidos diretamente para inteiros.
- **Solução**: Uso de `NULLIF(TRIM(campo), '')` para transformar strings vazias em `NULL` antes do `CAST`.