USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
     
);

INSERT INTO tb_categoria (tipo, categoria)
VALUES
("Fruta", "Fresca"),
("Fruta", "Conserva"),
("Legume", "Fresco"),
("Legume", "Conserva"),
("Vegetal", "Fresco");