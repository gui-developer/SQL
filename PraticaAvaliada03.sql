CREATE DATABASE db_vendas;
USE db_vendas;

CREATE TABLE tb_categoria (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produto (
  id_produto INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  id_categoria INT NOT NULL,
  CONSTRAINT fk_produto_categoria
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (nome) VALUES
('Eletrônicos'),
('Informática'),
('Casa e Cozinha'),
('Esportes'),
('Beleza'),
('Alimentos');

INSERT INTO tb_produto (nome, preco, id_categoria) VALUES
('Fone Bluetooth', 149.90, 1),
('Smartwatch', 399.00, 1),
('Teclado Mecânico', 219.50, 2),
('Mouse Gamer', 129.99, 2),
('Liquidificador', 259.90, 3),
('Air Fryer', 349.00, 3),
('Bicicleta Ergométrica', 899.00, 4),
('Tênis Corrida', 179.75, 4),
('Kit Skincare', 79.90, 5),
('Chocolate 70%', 12.50, 6),
('Café em Grãos 1kg', 39.90, 6);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 150;

UPDATE tb_produto SET preco = 119.99 WHERE nome = 'Mouse Gamer';

SELECT * FROM tb_produto
WHERE nome = 'Mouse Gamer';

DELETE FROM tb_produto WHERE nome = 'Chocolate 70%';

SELECT * FROM tb_produto;

SELECT 
	tb_categoria.id_categoria,
	tb_categoria.nome,
    
    tb_produto.nome,
    tb_produto.preco,
    tb_produto.id_categoria
FROM tb_categoria
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.id_categoria;


