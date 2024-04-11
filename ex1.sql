select @@version;
-- Criando o banco de dados
CREATE DATABASE RH;

-- Usando o banco de dados criado
USE RH;

-- Criar a tabela de colaboradores
CREATE TABLE Colaboradores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2)
);

-- Inserir alguns registros na tabela de colaboradores
INSERT INTO Colaboradores (Nome, Cargo, Salario) VALUES ('João', 'Analista de TI', 2500.00);
INSERT INTO Colaboradores (Nome, Cargo, Salario) VALUES ('Maria', 'Gerente de Projetos', 3500.00);
INSERT INTO Colaboradores (Nome, Cargo, Salario) VALUES ('Pedro', 'Desenvolvedor', 1800.00);
INSERT INTO Colaboradores (Nome, Cargo, Salario) VALUES ('Ana', 'Analista Financeiro', 2200.00);
INSERT INTO Colaboradores (Nome, Cargo, Salario) VALUES ('Carlos', 'Designer', 2800.00);

SELECT * FROM Colaboradores;

-- Consultar todos os colaboradores com salário maior do que 2000
SELECT * FROM Colaboradores WHERE Salario > 2000;

-- Consultar todos os colaboradores com salário menor do que 2000
SELECT * FROM Colaboradores WHERE Salario < 2000;

-- Atualizar o salário do colaborador Pedro para 2000.00
UPDATE Colaboradores SET Salario = 2000.00 WHERE id = 3;
