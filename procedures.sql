DELIMITER //
CREATE PROCEDURE sp_inserir_empregado (
    IN nome_emp VARCHAR(100),
    IN depto_id INT
)
BEGIN
    INSERT INTO Empregado (nome, departamento_id)
    VALUES (nome_emp, depto_id);
END;
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_atualizar_cidade (
    IN depto_id INT,
    IN nova_cidade VARCHAR(100)
)
BEGIN
    UPDATE Departamento
    SET cidade = nova_cidade
    WHERE id = depto_id;
END;
//
DELIMITER ;

-- Testes
CALL sp_inserir_empregado('Empregado 8', 2);
CALL sp_atualizar_cidade(3, 'Cidade Z');
