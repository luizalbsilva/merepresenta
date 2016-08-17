/*
 | Inserção de Questões a serem respondidas
 |
 | lembrar de ajustar a sequencia (ultima linha) com o valor seguinte ao último ID inserido manualmente 
 */
INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (1, 'Você é a favor da adoção de crianças por famílias LGBTs?', 1, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (2, 'Você é a favor do uso de banheiros por pessoas travestis e transexuais de acordo com sua identidade de gênero autodeclarada?', 1, current_date, current_date, true, 'truth');
    
INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (3, 'Você é a favor de cotas para mulheres, negras(os) e LGBTs em cargos públicos no Legislativo e Executivo?', 2, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (4, 'Você é a favor que temas como gênero, sexualidade e raça sejam discutidos nas escolas?', 3, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (5, 'Você é a favor de que sejam garantidas licenças para que mulheres e homens dediquem-se ao cuidado infantil de forma igualitária?', 3, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (6, 'Você é contra a realização de cultos e a presença de símbolos religiosos em repartições públicas?', 3, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (7, 'Você é a favor que homens que tenham praticado atos de violência contra mulheres sejam impedidos de ocupar cargos públicos?', 4, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (8, 'Você é a favor da descriminalização do aborto?', 4, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (9, 'Você é a favor da criminalização da LGBTfobia?', 4, current_date, current_date, true, 'truth');

INSERT INTO questions(
            id, text, category_id, created_at, updated_at, chosen, role_type)
    VALUES (10, 'Você é a favor da desmilitarização da polícia militar?', 4, current_date, current_date, true, 'truth');




alter sequence questions_id_seq restart with 11
