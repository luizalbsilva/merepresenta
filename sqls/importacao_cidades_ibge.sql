/*
 | Inserção de Categorias
 |
 | Aqui não é necessário ajusta a sequencia, já que o menor id é 1100015, ou seja, grande
 | o suficiente para ser ignorado (principalmente pq hj o Brasil possui 5570 cidades)
 */
insert into cities ( created_at, updated_at ,id, name, state )
  select
	  		  current_date
	        , current_date
			,  c.codigo_composto
			, c.nome 
			, c.uf
		from
			ibge.cidade c
		  	inner join
		  		ibge.estado e
				on
					(c.estado_codigo = e.codigo)
