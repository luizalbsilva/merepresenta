-- PT: Importa dados para a tabela de Partidos
-- EN: Import data to the party table
insert into parties (id , symbol, "number", created_at, updated_at)
  select numero, sigla, numero, current_date, current_date from tse.partido 