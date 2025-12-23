# Conceitos Fundamentais de SQL

Antes de escrever qualquer consulta, é essencial entender
os principais conceitos que fazem parte do universo de bancos de dados
e do SQL.

Este arquivo serve como **base conceitual** para todo o repositório.

---

## O que é um Banco de Dados

Um **banco de dados** é um local onde dados são armazenados de forma
estruturada, organizada e persistente, permitindo consultas,
alterações e análises.

Exemplos de dados armazenados:
- Clientes
- Pedidos
- Produtos
- Usuários
- Logs de sistemas

---

## O que é um SGBD (Sistema Gerenciador de Banco de Dados)

Um **SGBD** é o software responsável por gerenciar o banco de dados.

Ele cuida de:
- Armazenamento dos dados
- Segurança e controle de acesso
- Execução de consultas
- Performance e integridade dos dados

### Exemplos de SGBDs
- MySQL
- PostgreSQL
- SQL Server
- Oracle
- MariaDB

Neste repositório, o foco é **MySQL**.

---

## O que é SQL

SQL (*Structured Query Language*) é a linguagem utilizada para:
- Consultar dados
- Inserir informações
- Atualizar registros
- Remover dados
- Criar e alterar estruturas do banco

O SQL é uma linguagem **declarativa**, ou seja:
> Você diz **o que quer**, não **como fazer**.

---

## Tabelas, Colunas e Registros

- **Tabela**: estrutura que organiza os dados
- **Coluna**: define o tipo de dado (ex: nome, idade, preço)
- **Registro (linha)**: representa um item individual

Exemplo conceitual:

| id | nome  | email              |
|----|-------|--------------------|
| 1  | Ana   | ana@email.com      |
| 2  | João  | joao@email.com     |

---

## Tipos de Comandos SQL

Os comandos SQL são normalmente divididos em categorias:

- **DDL** (Data Definition Language)  
  Criação e alteração de estruturas (CREATE, ALTER, DROP)

- **DML** (Data Manipulation Language)  
  Manipulação dos dados (INSERT, UPDATE, DELETE)

- **DQL** (Data Query Language)  
  Consulta de dados (SELECT)

- **DCL** (Data Control Language)  
  Controle de permissões (GRANT, REVOKE)

Neste repositório, o foco inicial será **DQL (SELECT)**.
