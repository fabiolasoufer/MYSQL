CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe BIGINT AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    nivel VARCHAR(20) NOT NULL,
    poder VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_classe)
     
);

INSERT INTO tb_classe (tipo, nivel, poder)
VALUES
("Guerreiro", "Alta Resistência", "Médio Dano"),
("Arqueiro", "Baixa Resistência", "Alto Dano"),
("Mago", "Baixa Resistência", "Altíssimo Dano"),
("Clérigo", "Alta Resistência", "Baixo Dano"),
("Bárbaro", "Média Resistência", "Alto Dano");

