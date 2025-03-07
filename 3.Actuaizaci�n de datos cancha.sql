SET SQL_SAFE_UPDATES = 0;
DELETE FROM court;
ALTER TABLE court AUTO_INCREMENT = 1;
DELETE FROM court_images;
ALTER TABLE court_images AUTO_INCREMENT = 1;
SET SQL_SAFE_UPDATES = 1;

INSERT INTO `court` VALUES (1,'Estadio La Cancha 1',1,'Estadio La Cancha 1',7,4500.00,'calle 34 2',1,'Tunal',1),(2,'Estadio La Cancha 2',1,'Estadio La Cancha 2',7,3400.00,'calle 34 2',1,'Tunal',1),(3,'Cancha de Fútbol 3',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(4,'Cancha de Fútbol 4',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(5,'Cancha de Fútbol 5',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(6,'Cancha de Basket 1',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(7,'Cancha de Basket 2',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(8,'Cancha de Basket 3',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(9,'Cancha de Basket 4',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(10,'Cancha de Basket 5',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(11,'Cancha Central de Tenis 1',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(12,'Cancha Central de Tenis 2',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(13,'Cancha Central de Tenis 3',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(14,'Cancha Central de Tenis 4',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5);

UPDATE	court 
SET		id_sport=2
where	id_court in (6,7,8,9,10);

UPDATE	court 
SET		id_sport=3
where	id_court in (11,12,13,14);

INSERT INTO court_images VALUES (1,1,'https://i.imgur.com/4w8mYnz.jpeg'),
(2,1,'https://i.imgur.com/61nWS9L.jpeg'),
(3,1,'https://i.imgur.com/7Q2BQK7.jpeg'),
(4,1,'https://i.imgur.com/8WZl4lb.jpeg'),
(5,1,'https://i.imgur.com/a8IXPd3.jpeg'),
(6,1,'https://i.imgur.com/adciAlf.jpeg'),
(7,2,'https://i.imgur.com/B0ZledY.jpeg'),
(8,2,'https://i.imgur.com/BzlUK4d.jpeg'),
(9,2,'https://i.imgur.com/c0Uq7HC.jpeg'),
(10,2,'https://i.imgur.com/COVuKDI.jpeg'),
(11,2,'https://i.imgur.com/cwMubCz.jpeg'),
(12,3,'https://i.imgur.com/DlvPosz.jpeg'),
(13,3,'https://i.imgur.com/dnf8V6O.jpeg'),
(14,3,'https://i.imgur.com/eSGOBOI.jpeg'),
(15,3,'https://i.imgur.com/fpLnAwb.jpeg'),
(16,3,'https://i.imgur.com/HhXC2U0.jpeg'),
(17,4,'https://i.imgur.com/hKvIg3u.jpeg'),
(18,4,'https://i.imgur.com/HV0O7oZ.jpeg'),
(19,4,'https://i.imgur.com/HyyNpwh.jpeg'),
(20,4,'https://i.imgur.com/I6GIlVv.jpeg'),
(21,4,'https://i.imgur.com/jcJmebJ.jpeg'),
(22,4,'https://i.imgur.com/jiuqVlw.jpeg'),
(23,5,'https://i.imgur.com/jJfIfgu.jpeg'),
(24,5,'https://i.imgur.com/kxQxjdl.jpeg'),
(25,5,'https://i.imgur.com/ky8QfKr.jpeg'),
(26,5,'https://i.imgur.com/le5EEK2.jpeg'),
(27,5,'https://i.imgur.com/MD1ImVs.jpeg'),
(28,6,'https://i.imgur.com/NMxtRYP.jpeg'),
(29,6,'https://i.imgur.com/SlbEC4b.jpeg'),
(30,6,'https://i.imgur.com/tMcTUo1.jpeg'),
(31,6,'https://i.imgur.com/yvRyGcg.jpeg'),
(32,6,'https://i.imgur.com/HhXC2U0.jpeg'),
(33,7,'https://i.imgur.com/hKvIg3u.jpeg'),
(34,7,'https://i.imgur.com/HV0O7oZ.jpeg'),
(35,7,'https://i.imgur.com/HyyNpwh.jpeg'),
(36,7,'https://i.imgur.com/I6GIlVv.jpeg'),
(37,7,'https://i.imgur.com/jcJmebJ.jpeg'),
(38,8,'https://i.imgur.com/jiuqVlw.jpeg'),
(39,8,'https://i.imgur.com/jJfIfgu.jpeg'),
(40,8,'https://i.imgur.com/kxQxjdl.jpeg'),
(41,8,'https://i.imgur.com/ky8QfKr.jpeg'),
(42,8,'https://i.imgur.com/le5EEK2.jpeg'),
(43,9,'https://i.imgur.com/MD1ImVs.jpeg'),
(44,9,'https://i.imgur.com/NMxtRYP.jpeg'),
(45,9,'https://i.imgur.com/SlbEC4b.jpeg'),
(46,9,'https://i.imgur.com/tMcTUo1.jpeg'),
(47,9,'https://i.imgur.com/yvRyGcg.jpeg'),
(48,10,'https://i.imgur.com/HV0O7oZ.jpeg'),
(49,10,'https://i.imgur.com/HyyNpwh.jpeg'),
(50,10,'https://i.imgur.com/I6GIlVv.jpeg'),
(51,10,'https://i.imgur.com/jcJmebJ.jpeg'),
(52,10,'https://i.imgur.com/jiuqVlw.jpeg'),
(53,10,'https://i.imgur.com/jJfIfgu.jpeg'),
(54,11,'https://i.imgur.com/kxQxjdl.jpeg'),
(55,11,'https://i.imgur.com/ky8QfKr.jpeg'),
(56,11,'https://i.imgur.com/le5EEK2.jpeg'),
(57,11,'https://i.imgur.com/MD1ImVs.jpeg'),
(58,11,'https://i.imgur.com/NMxtRYP.jpeg'),
(59,11,'https://i.imgur.com/SlbEC4b.jpeg'),
(60,12,'https://i.imgur.com/tMcTUo1.jpeg'),
(61,12,'https://i.imgur.com/yvRyGcg.jpeg'),
(62,12,'https://i.imgur.com/HhXC2U0.jpeg'),
(63,12,'https://i.imgur.com/hKvIg3u.jpeg'),
(64,12,'https://i.imgur.com/HV0O7oZ.jpeg'),
(65,13,'https://i.imgur.com/HyyNpwh.jpeg'),
(66,13,'https://i.imgur.com/I6GIlVv.jpeg'),
(67,13,'https://i.imgur.com/jcJmebJ.jpeg'),
(68,13,'https://i.imgur.com/jiuqVlw.jpeg'),
(69,13,'https://i.imgur.com/jJfIfgu.jpeg'),
(70,14,'https://i.imgur.com/kxQxjdl.jpeg'),
(71,14,'https://i.imgur.com/ky8QfKr.jpeg'),
(72,14,'https://i.imgur.com/le5EEK2.jpeg'),
(73,14,'https://i.imgur.com/MD1ImVs.jpeg'),
(74,14,'https://i.imgur.com/NMxtRYP.jpeg');

