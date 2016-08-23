insert into tse_data (cpf, born_at, "number", male, party_id, city_id, electoral_title, created_at, updated_at) 
select distinct
   can.cpf
   , can.nascimento
   , can.numero_candidato
   , sexo = 'MASCULINO'
   , can.numero_partido
   , cid.id
   , can.titulo_eleitoral
   , current_date
   , current_date
from 
	tse.candidate can
	left join tse.cidades cid
		on (cid.nome = can.cidade and cid.uf = can.uf)
where can.cargo = 'VEREADOR'