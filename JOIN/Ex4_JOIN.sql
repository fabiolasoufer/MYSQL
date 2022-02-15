SELECT tb_categoria.tipo , tb_produto.nome, tb_categoria.categoria, tb_produto.preco, tb_produto.quantidade
	FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.tipo_id
WHERE tb_categoria.categoria LIKE "Conserva"