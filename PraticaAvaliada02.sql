CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_departamento (
  id_departamento INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE tb_funcionario (
  id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  salario DECIMAL(10,2) NOT NULL,
  id_departamento INT NOT NULL,
  CONSTRAINT fk_funcionario_departamento
    FOREIGN KEY (id_departamento) REFERENCES tb_departamento (id_departamento)
);

INSERT INTO tb_departamento (nome) VALUES
('Recursos Humanos'),
('Financeiro'),
('TI'),
('Marketing'),
('Vendas'),
('Operações');

INSERT INTO tb_funcionario (nome, salario, id_departamento) VALUES
('Ana Martins', 5500.00, 1),
('Carlos Pereira', 7200.00, 2),
('Bruna Costa', 6800.00, 3),
('Daniel Souza', 4300.00, 4),
('Ester Almeida', 5100.00, 5),
('Felipe Ribeiro', 7900.00, 6),
('Giovana Nunes', 6400.00, 3),
('Henrique Barros', 4700.00, 2),
('Isabela Rocha', 5300.00, 1),
('João Silva', 8600.00, 5);

SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario WHERE salario > 6000;

UPDATE tb_funcionario SET salario = 7500.00 WHERE nome = 'Carlos Pereira';

SELECT * FROM tb_funcionario WHERE nome = 'Carlos Pereira';

DELETE FROM tb_funcionario WHERE nome = 'Daniel Souza';

SELECT 
	tb_departamento.nome,
	tb_funcionario.nome,
    tb_funcionario.salario
FROM tb_departamento
INNER JOIN tb_funcionario ON tb_funcionario.id_departamento = tb_departamento.id_departamento;

SELECT * FROM tb_funcionario;
