
-- Consultas

-- Seleção simples
SELECT nome, telefone FROM Clientes;

-- Filtro com WHERE
SELECT * FROM Veiculos WHERE marca = 'Toyota';

-- Atributo derivado
SELECT nome, salario, salario * 1.1 AS salario_com_bonus FROM Funcionarios;

-- Ordenação
SELECT * FROM Servicos ORDER BY preco DESC;

-- Agrupamento com HAVING
SELECT cliente_id, COUNT(*) AS total_ordens
FROM OrdensServico
GROUP BY cliente_id
HAVING COUNT(*) > 1;

-- Junção entre tabelas
SELECT
    c.nome AS cliente,
    v.placa,
    os.os_id,
    s.descricao AS servico,
    ios.quantidade,
    s.preco,
    (ios.quantidade * s.preco) AS custo_total_item
FROM Clientes c
JOIN Veiculos v ON c.cliente_id = v.cliente_id
JOIN OrdensServico os ON c.cliente_id = os.cliente_id
JOIN ItensOS ios ON os.os_id = ios.os_id
JOIN Servicos s ON ios.servico_id = s.servico_id
ORDER BY os.os_id;

-- Total gasto por cliente
SELECT
    c.nome,
    SUM(ios.quantidade * s.preco) AS total_gasto
FROM Clientes c
JOIN OrdensServico os ON c.cliente_id = os.cliente_id
JOIN ItensOS ios ON os.os_id = ios.os_id
JOIN Servicos s ON ios.servico_id = s.servico_id
GROUP BY c.nome
ORDER BY total_gasto DESC;
