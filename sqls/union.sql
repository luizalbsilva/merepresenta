-- PT: Importação dos dados das legendas
-- EN: Import parties union data
alter table unions add codigo_tse bigint;

insert into unions (codigo_tse, name, created_at, updated_at, city_id )
select l.codigo, l.nome, current_date, current_date, c.codigo_ibge
from tse.legenda l left join tse.cidades c on (c.nome = l.cidade and c.uf = l.uf);