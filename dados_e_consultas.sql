-- Inserts
INSERT INTO Departamento (nome, cidade) VALUES
('TI', 'Cidade A'), ('RH', 'Cidade B'), ('Financeiro', 'Cidade A'), ('Marketing', 'Cidade C');

INSERT INTO Empregado (nome, departamento_id) VALUES
('Empregado 1', 1), ('Empregado 2', 1), ('Empregado 3', 2),
('Empregado 4', 3), ('Empregado 5', 1), ('Empregado 6', 4), ('Empregado 7', 3);

-- Consultas
SELECT d.nome, COUNT(e.id) AS total
FROM Departamento d
JOIN Empregado e ON e.departamento_id = d.id
GROUP BY d.id
ORDER BY total DESC
LIMIT 1;

SELECT cidade, GROUP_CONCAT(nome SEPARATOR ', ') AS departamentos
FROM Departamento
GROUP BY cidade;

SELECT d.nome AS departamento, e.nome AS empregado
FROM Departamento d
JOIN Empregado e ON e.departamento_id = d.id
ORDER BY d.nome;
