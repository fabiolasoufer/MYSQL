USE db_rh;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cargo VARCHAR(30) NOT NULL,
    salario DECIMAL(10,2),
    telefone VARCHAR(30),
    cpf VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios (nome, cargo, salario, telefone, cpf)
VALUES
("Fabíola Souza", "Gerente", 10000.00, "97999999", "55500088840"),
("Lucas Almeida", "Scrum Master", 10000.00, "98999999", "77700088840"),
("Sara Souza", "Desenvolvedora Sênior", 4000.00, "98199999", "88800088840"),
("Ivone Medeiros", "Estagiária", 2000.00, "98599999", "33300088840"),
("Ana Clara Alencar", "Desenvolvedora", 3000.00, "97799999", "99900088840");

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = "15000.00"
	WHERE id = 1;