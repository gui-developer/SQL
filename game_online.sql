-- CRIANDO O BANCO DE DADOS

CREATE DATABASE DB_GENERATION_GAME_ONLINE;

USE DB_GENERATION_GAME_ONLINE;

-- criando tabela de classes
CREATE TABLE TB_CLASSES(
	ID_CLASSES BIGINT AUTO_INCREMENT PRIMARY KEY,
	NOME_CLASSES VARCHAR(50)NOT NULL
);

ALTER TABLE TB_CLASSES ADD FUNCAO VARCHAR (50);

-- Criando tabela de personagens
CREATE TABLE TB_PERSONAGENS(
	ID_PERSONAGEM BIGINT AUTO_INCREMENT PRIMARY KEY,
    NOME_PERSONAGEM VARCHAR(50),
    FK_CLASSE_ID BIGINT,
    FOREIGN KEY (FK_CLASSE_ID) REFERENCES TB_CLASSES(ID_CLASSES)
);
-- adicionando colunas adicionais
ALTER TABLE TB_PERSONAGENS ADD NIVEL INT DEFAULT 1 ;
ALTER TABLE TB_PERSONAGENS ADD HP INT NOT NULL ;
ALTER TABLE TB_PERSONAGENS ADD ATAQUE INT NOT NULL ;
ALTER TABLE TB_PERSONAGENS ADD DEFESA INT NOT NULL ;
-- inserindo dados na tabela de classes
INSERT INTO tb_classes (NOME_CLASSES, funcao) VALUES 
('Guerreiro', 'Tank'),
('Mago', 'Dano Mágico'),
('Arqueiro', 'Dano Físico'),
('Sacerdote', 'Suporte'),
('Assassino', 'Dano Rápido');
SELECT * FROM TB_CLASSES;

-- inserindo dados na tabela de personagens
INSERT INTO tb_personagens (nome_personagem, fk_classe_id, ataque, nivel, hp) VALUES 
('Thor', 1, 250, 10, 1000),
('Merlin', 2, 180, 12, 500),
('Legolas', 3, 220, 8, 600),
('Mercy', 4, 100, 15, 400),
('Akali', 5, 280, 11, 700),
('Kratos', 1, 350, 20, 1500),
('Gandalf', 2, 300, 18, 550),
('Robin', 3, 190, 9, 650);

SELECT * FROM TB_PERSONAGENS WHERE ATAQUE > 200 ;
SELECT * FROM TB_PERSONAGENS WHERE ATAQUE BETWEEN 100 AND 200 ;

SELECT * FROM TB_PERSONAGENS WHERE NOME_PERSONAGEM LIKE '%C%';

UPDATE tb_personagens SET defesa = 150 WHERE nome_personagem = 'Thor';

SELECT * FROM TB_PERSONAGENS;
SELECT * FROM TB_CLASSES;

SELECT 
    tb_personagens.nome_personagem, 
    tb_personagens.nivel, 
    tb_personagens.ataque, 
    
    tb_classes.nome_classes, 
    tb_classes.funcao
    
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.fk_classe_id = tb_classes.id_classes;

SELECT 
	TB_PERSONAGENS.NOME_PERSONAGEM,
	TB_PERSONAGENS.NIVEL,
    TB_PERSONAGENS.ATAQUE,
    TB_PERSONAGENS.DEFESA,
    
    TB_CLASSES.NOME_CLASSES
FROM TB_PERSONAGENS
INNER JOIN TB_CLASSES ON TB_PERSONAGENS.FK_CLASSE_ID = TB_CLASSES.ID_CLASSES
WHERE TB_CLASSES.NOME_CLASSES = 'Guerreiro';






