-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS Ecommerce;

-- Usar o banco de dados criado
USE Ecommerce;

-- Criar a tabela de produtos
CREATE TABLE IF NOT EXISTS Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria VARCHAR(100),
    Preco DECIMAL(10, 2),
    Estoque INT,
    Descricao TEXT
);

-- Inserir alguns registros na tabela de produtos
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Smart TV', 'Eletrônicos', 1500.00, 10, 'Smart TV 4K com tela de alta resolução e acesso a aplicativos de streaming.');
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Tênis Esportivo', 'Moda', 350.00, 20, 'Tênis para corrida com amortecimento de impacto e design moderno.');
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Sofá', 'Móveis', 800.00, 15, 'Sofá confortável com assentos reclináveis e revestimento em tecido resistente.');
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Fogão', 'Eletrodomésticos', 1200.00, 10, 'Fogão com forno elétrico e queimadores a gás, ideal para cozinhas modernas.');
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Bicicleta', 'Esportes', 450.00, 30, 'Bicicleta urbana com quadro de alumínio e marchas para diferentes terrenos.');
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Relógio de Pulso', 'Acessórios', 300.00, 25, 'Relógio analógico com pulseira de couro e resistente à água.');
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Livro de Receitas', 'Culinária', 40.00, 50, 'Livro com diversas receitas práticas e saborosas para todos os gostos.');
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, Descricao) VALUES ('Câmera Fotográfica', 'Fotografia', 800.00, 12, 'Câmera digital com lente intercambiável e alta resolução para fotografias profissionais.');

-- Consultar todos os produtos com valor maior que 500
SELECT * FROM Produtos WHERE Preco > 500;

-- Consultar todos os produtos com valor menor que 500
SELECT * FROM Produtos WHERE Preco < 500;

-- Atualizar o preço do produto "Tênis Esportivo" para 400.00
UPDATE Produtos SET Preco = 400.00 WHERE Nome = 'Tênis Esportivo';
