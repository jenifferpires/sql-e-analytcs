# Exercícios – Funções Básicas

Este conjunto de exercícios foi pensado para
reforçar o entendimento das funções mais usadas
em ambientes reais de trabalho com SQL.

---

## 🟢 Nível 1 – Aquecimento

1. Retorne o valor absoluto de `-25`.
2. Arredonde o número `9.876` para 1 casa decimal.
3. Converta o texto `BancoDeDados` para letras minúsculas.
4. Retorne o tamanho da palavra `MySQL`.

---

## 🟡 Nível 2 – Aplicação prática

Considere uma tabela chamada `clientes` com as colunas:

- `id`
- `nome`
- `email`
- `data_cadastro`

### Exercícios:

1. Retorne o nome do cliente em letras maiúsculas.
2. Mostre apenas o ano de cadastro dos clientes.
3. Concatene `nome` e `email` em uma única coluna chamada `cliente_info`.
4. Retorne apenas os 5 primeiros caracteres do nome.

---

## 🟠 Nível 3 – Cenários reais

Considere uma tabela `pedidos` com:

- `id`
- `valor_total`
- `data_pedido`
- `data_entrega`

### Exercícios:

1. Arredonde o `valor_total` para 2 casas decimais.
2. Calcule a diferença de dias entre `data_pedido` e `data_entrega`.
3. Retorne a data do pedido no formato ano/mês/dia.
4. Substitua valores `NULL` de `data_entrega` por `Data não informada`.

---

## 🔵 Desafios:

.1 Considere uma tabela `funcionarios` com:

- `nome`
- `salario`
- `data_admissao`

1. Calcule quantos anos o funcionário está na empresa.
2. Retorne o salário arredondado para o valor inteiro mais próximo.
3. Exiba o nome do funcionário junto com o ano de admissão.

.2 O time de RH precisa de um relatório com:
- Nome do cliente
- Idade
- Salário formatado
- Email tratado (sem valores nulos)

Crie uma query que entregue essas informações de forma clara e organizada.

💡 **Dica:** Combine funções de texto, numéricas, datas e tratamento de NULL.

---

## ✅ Objetivo dos exercícios

Ao concluir este módulo, você deve ser capaz de:

- Aplicar funções diretamente em consultas
- Tratar dados nulos corretamente
- Manipular textos, números e datas
- Resolver problemas comuns do dia a dia com SQL.
