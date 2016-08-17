/*
 | Inserção de Categorias
 |
 | lembrar de ajustar a sequencia (ultima linha) com o valor seguinte ao último ID inserido manualmente 
 */
INSERT INTO categories(
            id, name, created_at, updated_at)
    VALUES (1, 'Civis', current_date, current_date);
INSERT INTO categories(
            id, name, created_at, updated_at)
    VALUES (2,'Político', current_date, current_date);
INSERT INTO categories(
            id, name, created_at, updated_at)
    VALUES (3,'Social', current_date, current_date);
INSERT INTO categories(
            id, name, created_at, updated_at)
    VALUES (4,'Penal', current_date, current_date);


alter sequence categories_id_seq restart with 5;
