/*
 | Inserção de Categorias
 |
 | Aqui não é necessário ajusta a sequencia, já que o menor id é 1100015, ou seja, grande
 | o suficiente para ser ignorado (principalmente pq hj o Brasil possui 5570 cidades
 */

﻿insert into cities ( created_at, updated_at ,id, name, state )
  select  current_date
        , current_date
	,  c.codigo_composto
	, c.nome 
	,
	case 
		when e.nome = 'Acre' then 'AC'
		when e.nome = 'Alagoas' then 'AL'
		when e.nome = 'Amapá' then 'AP'
		when e.nome = 'Amazonas' then 'AM'
		when e.nome = 'Bahia' then 'BA'
		when e.nome = 'Ceará' then 'CE'
		when e.nome = 'Distrito Federal' then 'DF'
		when e.nome = 'Espírito Santo' then 'ES'
		when e.nome = 'Goiás' then 'GO'
		when e.nome = 'Maranhão' then 'MA'
		when e.nome = 'Mato Grosso' then 'MT'
		when e.nome = 'Mato Grosso do Sul' then 'MS'
		when e.nome = 'Minas Gerais' then 'MG'
		when e.nome = 'Pará' then 'PA'
		when e.nome = 'Paraíba' then 'PB'
		when e.nome = 'Paraná' then 'PR'
		when e.nome = 'Pernambuco' then 'PE'
		when e.nome = 'Piauí' then 'PI'
		when e.nome = 'Rio Grande do Norte' then 'RN'
		when e.nome = 'Rio Grande do Sul' then 'RS'
		when e.nome = 'Rio de Janeiro' then 'RJ'
		when e.nome = 'Rondônia' then 'RO'
		when e.nome = 'Roraima' then 'RR'
		when e.nome = 'Santa Catarina' then 'SC'
		when e.nome = 'Sergipe' then 'SE'
		when e.nome = 'São Paulo' then 'SP'
		when e.nome = 'Tocantins' then 'TO'
		else null
	  end as uf
from		ibge.cidade c
  inner join	ibge.estado e
	on
		(c.estado_codigo = e.codigo)
