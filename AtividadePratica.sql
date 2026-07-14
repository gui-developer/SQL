CREATE DATABASE db_RH;  -- Cria o banco de dados 

-- Usando a tabela
use db_rh;

-- Criando tabela com atribudos
CREATE TABLE tb_colaboradores(
ID INT auto_increment PRIMARY KEY ,
NOME VARCHAR (150) NOT NULL,
SALARIO BIGINT,
CARGO VARCHAR(120),
TEMPO_NA_EMPRESA INT CHECK (TEMPO_NA_EMPRESA >= 0),
DISPONIBILIDADE VARCHAR(40) CHECK (DISPONIBILIDADE  IN ('PARCIAL','INTEGRAL','SOB DEMANDA'))
);

INSERT INTO tb_colaboradores(nome, salario, cargo, tempo_na_empresa, disponibilidade)
values ('Lucas' , 2900 ,'Suporte' , 1 ,'Integral');

INSERT INTO tb_colaboradores(nome, salario, cargo, tempo_na_empresa, disponibilidade)
values ('Afonso' ,  1000 , 'Estagiario' , 1 , 'Integral');

INSERT INTO tb_colaboradores(nome, salario,cargo, tempo_na_empresa, disponibilidade)
values ('Luana' , 2499 ,'Analista' , 1 , 'INTEGRAL');

INSERT INTO tb_colaboradores(nome, salario, cargo, tempo_na_empresa, disponibilidade)
values ('Rogerinho', 3000 ,'Desenvolvedor ',2,'Integral');

INSERT INTO tb_colaboradores(nome, salario, cargo, tempo_na_empresa, disponibilidade)
values ('Marcia' , 4900 ,'Desenvolvedor Pleno' , 4 , 'Integral');

SELECT * FROM tb_colaboradores;

UPDATE TB_COLABORADORES SET DISPONIBILIDADE = 'Parcial' WHERE ID = 3;

SELECT * FROM TB_COLABORADORES WHERE SALARIO > 2000;

SELECT * FROM TB_COLABORADORES WHERE SALARIO < 2000;

UPDATE TB_COLABORADORES SET SALARIO = 1500 WHERE ID = 1;

