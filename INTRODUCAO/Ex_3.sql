CREATE DATABASE db_escolar;

USE db_escolar;

CREATE TABLE tb_alunos(
	id_aluno BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    turma INT NOT NULL,
    nota DECIMAL(10,2),
    telefone VARCHAR(30),
    cpf VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_aluno)
);

INSERT INTO tb_alunos (nome, turma, nota, telefone, cpf)
VALUES
("Fabíola Souza", 45, 10.00, "97999999", "55500088840"),
("Lucas Almeida", 45, 10.00, "98999999", "77700088840"),
("Sara Souza", 44, 8.00, "98199999", "88800088840"),
("Ivone Medeiros", 46, 7.00, "98599999", "33300088840"),
("Ana Clara Alencar", 44, 9.00, "97799999", "99900088840");

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 5
	WHERE id_aluno = 4;