CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    departamento VARCHAR(20) NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
     
);

INSERT INTO tb_categoria (departamento, categoria)
VALUES
("Medicamentos", "Genérico"),
("Medicamentos", "Manipulado"),
("Medicamentos", "Referência"),
("Cosméticos", "Protetor Solar"),
("Higiene", "Absorvente");