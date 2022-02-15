USE db_cidade_das_frutas;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    vitamina VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    tipo_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (tipo_id) REFERENCES tb_categoria (id)   
);

INSERT INTO tb_produto (nome, vitamina, preco, quantidade, tipo_id)
VALUES
("Maçã", "B", 2.00, 20, 1),
("Banana", "A", 5.00, 40, 1),
("Laranja", "C", 3.00, 25, 1),
("Cereja", "C", 15.00, 25, 2),
("Abacaxi", "A", 20.00, 24, 2),
("Mandioquinha", "A", 5.00, 10, 3),
("Cenoura", "C", 11.00, 20, 4),
("Couve", "A", 2.00, 20, 5);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "C%";