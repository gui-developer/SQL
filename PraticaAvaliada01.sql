CREATE DATABASE db_escola;
USE db_escola;


CREATE TABLE tb_curso (
  id_curso INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  carga_horaria INT NOT NULL
);

CREATE TABLE tb_aluno (
  id_aluno INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  id_curso INT NOT NULL,
  CONSTRAINT fk_aluno_curso
  FOREIGN KEY (id_curso) REFERENCES tb_curso (id_curso)
);

INSERT INTO tb_curso (nome, carga_horaria) VALUES
('Programação Web', 80),
('Banco de Dados', 60),
('Redes de Computadores', 70),
('Engenharia de Software', 90),
('Administração de Sistemas', 75),
('Mobile Development', 65),
('Ciência de Dados', 100),
('DevOps', 85),
('Cibersegurança', 95),
('Gestão de Projetos', 55);

INSERT INTO tb_aluno (nome, idade, id_curso) VALUES
('Ana Souza', 17, 1),
('Bruno Lima', 22, 2),
('Carla Mendes', 19, 3),
('Diego Alves', 25, 4),
('Eduarda Rocha', 20, 5),
('Felipe Santos', 16, 6),
('Fernanda Costa', 23, 7),
('Gabriel Nascimento', 18, 8),
('Helena Carvalho', 21, 9),
('Igor Almeida', 24, 10);

SELECT * FROM tb_curso;
SELECT * FROM tb_aluno;

SELECT * FROM tb_aluno WHERE idade >= 18;

UPDATE tb_aluno SET idade = 23 WHERE nome = 'Bruno Lima';

DELETE FROM tb_aluno WHERE nome = 'Felipe Santos';


SELECT 
	tb_aluno.nome,
    tb_aluno.idade,
    
    tb_curso.nome,
    tb_curso.carga_horaria
FROM tb_aluno
INNER JOIN tb_curso ON tb_aluno.id_curso = tb_curso.id_curso;


