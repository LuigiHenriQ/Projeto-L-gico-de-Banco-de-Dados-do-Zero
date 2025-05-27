
# Projeto de Banco de Dados - Sistema de Oficina

Este projeto foi desenvolvido como parte do desafio do curso de modelagem de banco de dados. O objetivo é modelar e implementar um banco de dados relacional para um sistema de gerenciamento de uma oficina mecânica, partindo de um modelo conceitual (modelo ER) até sua implementação física com SQL Server.

## 💡 Descrição

O sistema da oficina é responsável por gerenciar:

- Clientes e seus dados de contato
- Veículos pertencentes aos clientes
- Funcionários que executam os serviços
- Serviços oferecidos pela oficina
- Ordens de serviço emitidas
- Itens (serviços) realizados em cada ordem de serviço

## 🧱 Modelo Lógico

O modelo lógico foi baseado no modelo ER desenvolvido anteriormente. As principais entidades e relacionamentos foram transformadas em tabelas relacionais com chaves primárias e estrangeiras adequadas para garantir a integridade referencial.

### Tabelas Criadas

- **Clientes**: Armazena informações dos clientes.
- **Veiculos**: Relacionados a clientes, com marca, modelo e placa.
- **Funcionarios**: Funcionários da oficina com salário e função.
- **Servicos**: Serviços prestados e seus preços.
- **OrdensServico**: Registra cada ordem de serviço com status e datas.
- **ItensOS**: Serviços incluídos em cada ordem de serviço.

## 📂 Estrutura dos Arquivos

O projeto está dividido em três scripts SQL:

1. [`01_criacao_tabelas.sql`](./01_criacao_tabelas.sql): Criação do banco e tabelas.
2. [`02_insercao_dados.sql`](./02_insercao_dados.sql): Inserção de dados de teste.
3. [`03_consultas_complexas.sql`](./03_consultas_complexas.sql): Consultas SQL complexas.

## 🧪 Consultas Desenvolvidas

As queries presentes cobrem:

- **SELECT** simples
- **Filtros com WHERE**
- **Atributos derivados** (expressões calculadas)
- **Ordenações com ORDER BY**
- **Agrupamentos e filtros com HAVING**
- **Junções entre tabelas** para análises mais complexas

### Exemplos de Perguntas Respondidas

- Quais os dados dos clientes da oficina?
- Quais veículos são da marca Toyota?
- Qual o salário com bônus dos funcionários?
- Quais são os serviços mais caros?
- Quais clientes possuem mais de uma ordem de serviço?
- Qual o total gasto por cada cliente?

## 🚀 Como Executar

1. Execute o script `01_criacao_tabelas.sql` para criar o banco de dados e suas tabelas.
2. Em seguida, rode o script `02_insercao_dados.sql` para inserir dados de teste.
3. Por fim, utilize o script `03_consultas_complexas.sql` para executar as consultas.

## 🛠️ Tecnologias Utilizadas

- SQL Server
- Linguagem SQL (DDL, DML, SELECT)
