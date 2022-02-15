SELECT tb_personagem.nome, tb_classe.tipo, tb_personagem.ataque, tb_personagem.defesa
	FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.classe_id

