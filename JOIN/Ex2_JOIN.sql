SELECT tb_categoria.cliente, tb_pizza.tipo, tb_pizza.sabor, tb_pizza.adicionais, tb_pizza.preco, tb_categoria.entrega
	FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.cliente_id
WHERE tb_pizza.tipo LIKE "Salgada"