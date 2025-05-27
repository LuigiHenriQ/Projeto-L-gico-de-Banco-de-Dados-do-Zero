
-- Criação do banco de dados
CREATE DATABASE OficinaDB;
GO

USE OficinaDB;
GO

-- Tabela Clientes
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Tabela Veículos
CREATE TABLE Veiculos (
    veiculo_id INT PRIMARY KEY IDENTITY,
    cliente_id INT NOT NULL,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    placa VARCHAR(10) UNIQUE,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

-- Tabela Funcionários
CREATE TABLE Funcionarios (
    funcionario_id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100),
    funcao VARCHAR(50),
    salario DECIMAL(10,2)
);

-- Tabela Serviços
CREATE TABLE Servicos (
    servico_id INT PRIMARY KEY IDENTITY,
    descricao VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Tabela Ordens de Serviço
CREATE TABLE OrdensServico (
    os_id INT PRIMARY KEY IDENTITY,
    cliente_id INT,
    funcionario_id INT,
    data_entrada DATE,
    data_saida DATE,
    status VARCHAR(20),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(funcionario_id)
);

-- Tabela Itens da OS
CREATE TABLE ItensOS (
    os_id INT,
    servico_id INT,
    quantidade INT,
    PRIMARY KEY (os_id, servico_id),
    FOREIGN KEY (os_id) REFERENCES OrdensServico(os_id),
    FOREIGN KEY (servico_id) REFERENCES Servicos(servico_id)
);
