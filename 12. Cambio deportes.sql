ALTER TABLE sport ADD COLUMN icon VARCHAR(100);

UPDATE sport SET icon = 'fas fa-futbol' WHERE id_sport=1;
UPDATE sport SET icon = 'fa-basketball-ball' WHERE id_sport=2;
UPDATE sport SET icon = 'fa-table-tennis' WHERE id_sport=3;
UPDATE sport SET icon = 'fa-volleyball-ball' WHERE id_sport=4;

insert into sport(sport_name,id_status,icon) values
('Ciclismo', 5, 'fa-bicycle'),('Golf',5, 'fa-golf-ball'),('Boxeo', 5, 'fa-hand-rock');


