USE db_pizzaria_legal;

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    sabor VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2),
    adicionais VARCHAR(20),
    cupomDesconto BOOLEAN NOT NULL,
    cliente_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES tb_categoria (id)   
);

INSERT INTO tb_pizza (tipo, sabor, preco, adicionais, cupomDesconto, cliente_id)
VALUES
("Salgada", "Mussarela", 29.90, "Batata Frita", false, 1),
("Salgada", "Calabresa", 29.90, "Refrigerante", false, 1),
("Salgada", "Napolitana", 35.90, "Refrigerante", true, 2),
("Doce", "Nutella", 19.90, "Não", false, 2),
("Salgada", "Vegetariana", 32.90, "Batata Frita", true, 3),
("Doce", "Banana com canela", 16.90, "Refrigerante", true, 3),
("Salgada", "Quatro Queijos", 34.90, "Refrigerante", false, 4),
("Salgada", "Carne Seca", 49.00, "Refrigerante", false, 5);

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE sabor LIKE "C%";