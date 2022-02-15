CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    cliente VARCHAR(20) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    entrega VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
     
);

INSERT INTO tb_categoria (cliente, telefone, entrega)
VALUES
("Fabíola", "11979999999", "Delivery"),
("Lucas", "11978888888", "Delivery"),
("Saraa", "1197777777", "Retirada"),
("Ivone", "11976666666", "Retirada"),
("José", "11975555555", "Delivery");

