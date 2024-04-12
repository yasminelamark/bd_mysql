-- Criar o banco de dados
CREATE DATABASE  db_farmacia_bem_estar;

-- Usar o banco de dados criado
USE db_farmacia_bem_estar;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao VARCHAR(255)
);

-- Inserir alguns registros na tabela tb_categorias
INSERT INTO tb_categorias (Nome, Descricao) VALUES ('Medicamentos', 'Produtos para tratamento de doenças e condições de saúde');
INSERT INTO tb_categorias (Nome, Descricao) VALUES ('Cosméticos', 'Produtos de beleza e cuidados pessoais');

-- Criar a tabela tb_produtos
CREATE TABLE  tb_produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria_ID INT,
    Preco DECIMAL(10, 2),
    Descricao TEXT,
    FOREIGN KEY (Categoria_ID) REFERENCES tb_categorias(ID)
);

-- Inserir alguns registros na tabela tb_produtos
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Paracetamol', 1, 10.00, 'Analgésico e antipirético');
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Ibuprofeno', 1, 15.00, 'Anti-inflamatório não esteroidal');
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Shampoo', 2, 20.00, 'Limpa e fortalece os cabelos');
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Creme Hidratante', 2, 25.00, 'Hidrata a pele e previne ressecamento');
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Protetor Solar', 2, 30.00, 'Protege a pele contra os raios UV');
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Batom', 2, 10.00, 'Realça a cor dos lábios');
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Antiácido', 1, 8.00, 'Alivia azia e má digestão');
INSERT INTO tb_produtos (Nome, Categoria_ID, Preco, Descricao) VALUES ('Loção Pós-Barba', 2, 12.00, 'Suaviza a pele após o barbear');

-- SELECT que retorne todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE Preco > 50.00;

-- SELECT que retorne todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE Preco BETWEEN 5.00 AND 60.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c ON p.Categoria_ID = c.ID;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica
SELECT p.*, c.Nome AS Categoria 
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c ON p.Categoria_ID = c.ID
WHERE c.Nome = 'Cosméticos';
