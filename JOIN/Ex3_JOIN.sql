SELECT tb_categoria.departamento, tb_produtos.nome, tb_categoria.categoria, tb_produtos.preco, tb_produtos.tarja, tb_produtos.quantidade
	FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.departamento_id
WHERE tb_produtos.tarja LIKE "Livre"