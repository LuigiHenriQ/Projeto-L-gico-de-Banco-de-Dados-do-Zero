
-- Inserção de dados
INSERT INTO Clientes (nome, telefone, email) VALUES
('João da Silva', '11988887777', 'joao@email.com'),
('Maria Oliveira', '11999998888', 'maria@email.com'),
('Carlos Souza', '11977776666', 'carlos@email.com');

INSERT INTO Veiculos (cliente_id, marca, modelo, placa) VALUES
(1, 'Toyota', 'Corolla', 'ABC1234'),
(2, 'Honda', 'Civic', 'XYZ5678'),
(3, 'Fiat', 'Uno', 'DEF4321');

INSERT INTO Funcionarios (nome, funcao, salario) VALUES
('Pedro Mecânico', 'Mecânico', 3000.00),
('Luciana Técnica', 'Eletricista', 3500.00);

INSERT INTO Servicos (descricao, preco) VALUES
('Troca de óleo', 100.00),
('Alinhamento', 150.00),
('Revisão elétrica', 200.00),
('Troca de pneus', 400.00);

INSERT INTO OrdensServico (cliente_id, funcionario_id, data_entrada, data_saida, status) VALUES
(1, 1, '2025-05-01', '2025-05-03', 'Finalizado'),
(2, 2, '2025-05-02', '2025-05-04', 'Em andamento'),
(3, 1, '2025-05-05', NULL, 'Aberto');

INSERT INTO ItensOS (os_id, servico_id, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(2, 4, 2),
(3, 1, 1),
(3, 4, 1);
