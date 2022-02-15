USE db_farmacia_do_bem;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    tarja VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    departamento_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (departamento_id) REFERENCES tb_categoria (id)   
);

INSERT INTO tb_produtos (nome, tarja, preco, quantidade, departamento_id)
VALUES
("Acebrofilina", "Vermelha", 16.22, 20, 1),
("Omeprazol", "Vermelha", 6.93, 40, 1),
("Glimepirida", "Vermelha", 31.43, 25, 1),
("Betametasona", "Vermelha", 50.00, 30, 3),
("Biotina", "Livre", 20.00, 2, 2),
("Fluoxetina", "Preta", 26.22, 1, 2),
("Protetor Solar Vichy", "Livre", 62.84, 50, 4),
("Absorvente Com Abas", "Livre", 3.77, 20, 5);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "B%";