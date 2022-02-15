CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagem(
	id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    relevancia VARCHAR(20) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    poderesEspeciais BOOLEAN NOT NULL,
    classe_id BIGINT NOT NULL,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id_classe)   
);

INSERT INTO tb_personagem (nome, relevancia, ataque, defesa, poderesEspeciais, classe_id)
VALUES
("Tyunn", "Protagonista", 1000, 2000, false, 1),
("Caslerd", "Secundário", 1000, 2000, false, 1),
("Grun", "Secundário", 1000, 2000, false, 1),
("Cloar", "Secundário", 2000, 500, false, 2),
("Bum", "Secundário", 2000, 500, false, 2),
("Stranger", "Protagonista", 2500, 500, true, 3),
("Gregory", "Secundário", 500, 2000, false, 4),
("Ragnar", "Protagonista", 2000, 1000, false, 5);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";
