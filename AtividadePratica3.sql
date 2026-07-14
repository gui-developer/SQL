CREATE DATABASE registro_escola;
USE registro_escola;

CREATE TABLE estudantes (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    nota_final DECIMAL(4,2) NOT NULL CHECK (nota_final >= 0.0 AND nota_final <= 10.0),
    status_matricula VARCHAR(15) DEFAULT 'ATIVO' CHECK (status_matricula IN ('ATIVO', 'TRANCADO', 'CONCLUIDO'))
);

INSERT INTO estudantes (nome, data_nascimento, nota_final, status_matricula) VALUES
('Ana Silva', '2008-05-15', 8.50, 'ATIVO'),
('Bruno Santos', '2007-11-22', 6.20, 'ATIVO'),
('Carla Souza', '2008-01-10', 9.00, 'ATIVO'),
('Diego Lima', '2007-03-30', 5.50, 'ATIVO'),
('Elena Oliveira', '2008-08-05', 7.20, 'ATIVO'),
('Felipe Costa', '2007-09-12', 4.80, 'ATIVO'),
('Gabriela Rocha', '2008-02-18', 9.80, 'ATIVO'),
('Hugo Almeida', '2007-06-25', 6.90, 'ATIVO');

SELECT id_estudante, nome, nota_final, status_matricula FROM estudantes WHERE nota_final > 7.0;
SELECT id_estudante, nome, nota_final, status_matricula FROM estudantes WHERE nota_final < 7.0;

UPDATE estudantes SET nota_final = 7.50 WHERE id_estudante = 6;