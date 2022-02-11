CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id_produto BIGINT AUTO_INCREMENT,
    produto VARCHAR(20) NOT NULL,
    marca VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2),
    quantidade INT NOT NULL,
    disponivel BOOLEAN,
    PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos (produto, marca, preco, quantidade, disponivel)
VALUES
("Arroz", "Camil", 15.00, 4, true),
("Feijão", "Camil", 8.00, 10, true),
("Biscoito", "Trakinas", 5.00, 8, true),
("Margarina", "Qually", 8.00, 0, false),
("Achocolatado", "Nescau", 11.00, 2, true);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 501
	WHERE id_produto = 1;