-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;

-- Usar o banco de dados criado
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE IF NOT EXISTS tb_categorias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(255)
);

-- Inserir alguns registros na tabela tb_categorias
INSERT INTO tb_categorias (Nome, Descricao) VALUES ('Salgadas', 'Pizzas salgadas tradicionais');
INSERT INTO tb_categorias (Nome, Descricao) VALUES ('Doces', 'Pizzas doces deliciosas');

-- Criar a tabela tb_pizzas
CREATE TABLE IF NOT EXISTS tb_pizzas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria_ID INT,
    Preco DECIMAL(10, 2),
    Ingredientes TEXT,
    FOREIGN KEY (Categoria_ID) REFERENCES tb_categorias(ID)
);

-- Inserir alguns registros na tabela tb_pizzas
INSERT INTO tb_pizzas (Nome, Categoria_ID, Preco, Ingredientes) VALUES ('Calabresa', 1, 40.00, 'Calabresa, mussarela, molho de tomate');
INSERT INTO tb_pizzas (Nome, Categoria_ID, Preco, Ingredientes) VALUES ('Marguerita', 1, 50.00, 'Mussarela, tomate, manjericão, azeite');
INSERT INTO tb_pizzas (Nome, Categoria_ID, Preco, Ingredientes) VALUES ('Quatro Queijos', 1, 55.00, 'Mussarela, parmesão, provolone, gorgonzola');
INSERT INTO tb_pizzas (Nome, Categoria_ID, Preco, Ingredientes) VALUES ('Chocolate', 2, 45.00, 'Chocolate, morango, leite condensado');
INSERT INTO tb_pizzas (Nome, Categoria_ID, Preco, Ingredientes) VALUES ('Banana Caramelada', 2, 60.00, 'Banana, caramelo, leite condensado');

-- SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE Preco > 45.00;

-- SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE Preco BETWEEN 50.00 AND 100.00;

-- SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE Nome LIKE '%M%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT p.*, c.Nome AS Categoria 
FROM tb_pizzas AS p
INNER JOIN tb_categorias AS c ON p.Categoria_ID = c.ID;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica
SELECT p.*, c.Nome AS Categoria 
FROM tb_pizzas AS p
INNER JOIN tb_categorias AS c ON p.Categoria_ID = c.ID
WHERE c.Nome = 'Doces';
