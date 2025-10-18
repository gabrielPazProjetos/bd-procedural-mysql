CREATE TABLE Departamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE Empregado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id)
);

CREATE INDEX idx_departamento_id ON Empregado(departamento_id);
