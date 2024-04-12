-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS db_generation_game_online;

-- Usar o banco de dados criado
USE db_generation_game_online;

-- Criar a tabela tb_classes
CREATE TABLE IF NOT EXISTS tb_classes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Tipo VARCHAR(50)
);

-- Inserir alguns registros na tabela tb_classes
INSERT INTO tb_classes (Nome, Tipo) VALUES ('Guerreiro', 'Melee');
INSERT INTO tb_classes (Nome, Tipo) VALUES ('Mago', 'Ranged');
INSERT INTO tb_classes (Nome, Tipo) VALUES ('Arqueiro', 'Ranged');
INSERT INTO tb_classes (Nome, Tipo) VALUES ('Cavaleiro', 'Melee');
INSERT INTO tb_classes (Nome, Tipo) VALUES ('Assassino', 'Melee');

-- Criar a tabela tb_personagens
CREATE TABLE IF NOT EXISTS tb_personagens (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Classe_ID INT,
    Poder_Ataque INT,
    Poder_Defesa INT,
    FOREIGN KEY (Classe_ID) REFERENCES tb_classes(ID)
);

-- Inserir alguns registros na tabela tb_personagens
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Garen', 1, 2500, 1800);
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Ahri', 2, 1800, 1200);
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Ashe', 3, 2200, 1500);
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Riven', 1, 2700, 2000);
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Talon', 5, 2600, 1700);
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Jinx', 3, 2100, 1300);
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Zed', 5, 2400, 1600);
INSERT INTO tb_personagens (Nome, Classe_ID, Poder_Ataque, Poder_Defesa) VALUES ('Lux', 2, 1900, 1400);

-- SELECT que retorne todos os personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE Poder_Ataque > 2000;

-- SELECT que retorne todos os personagens cujo poder de defesa esteja no intervalo de 1000 e 2000
SELECT * FROM tb_personagens WHERE Poder_Defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE Nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT p.*, c.Nome AS Classe 
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.Classe_ID = c.ID;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica
SELECT p.*, c.Nome AS Classe 
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.Classe_ID = c.ID
WHERE c.Nome = 'Arqueiro';
