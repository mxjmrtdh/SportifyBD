CREATE TABLE feature (
    id_feature INT NOT NULL,
    feature VARCHAR(50) NOT NULL,
    image_url VARCHAR(150) NOT NULL,
    id_status int,
    PRIMARY KEY (id_feature),
    foreign key (id_status) references status(id_status) ON DELETE CASCADE
);

CREATE TABLE product_feature (
    id_product_feature INT NOT NULL,
    id_feature INT NOT NULL,
    id_court INT NOT NULL,
    PRIMARY KEY (id_product_feature),
    foreign key (id_feature) references feature(id_feature) ON DELETE CASCADE,
    foreign key (id_court) references court(id_court) ON DELETE CASCADE
);

insert into entity_type values (6,'Feature');

INSERT INTO status 
VALUES (24,'Activo',6),
(25,'Eliminado',6);

INSERT	INTO court_booking.feature values(1, 'Accesible', 'https://i.imgur.com/vQBaE9p.png', 24),
(2, 'Parking disponible', 'https://i.imgur.com/B87sLqx.png', 24),
(3, 'Equipamiento para alquilar', 'https://i.imgur.com/RbTLOlC.png', 24),
(4, 'Estadio abierto', 'https://i.imgur.com/f8AWiAe.png', 24),
(5, 'Pet friendly', 'https://i.imgur.com/vhT9hqg.png', 24);

INSERT INTO court_booking.product_feature values (1,1,1),
(2,2,1),
(3,3,1),
(4,1,2),
(5,2,2),
(6,3,2),
(7,4,2),
(8,1,3),
(9,2,3),
(10,3,3),
(11,4,3),
(12,5,4),
(13,2,4),
(14,3,4),
(15,4,4),
(16,1,5),
(17,5,5),
(18,3,5),
(19,4,5),
(20,5,6),
(21,2,6),
(22,3,6),
(23,4,6),
(24,5,7),
(25,2,7),
(26,3,7),
(27,4,7),
(28,1,7),
(29,5,8),
(30,2,8),
(31,3,8),
(32,4,8),
(33,1,8),
(34,5,9),
(35,2,9),
(36,3,9),
(37,4,9),
(38,1,9),
(39,5,10),
(40,2,10),
(41,3,10),
(42,4,10),
(43,1,10),
(44,5,11),
(45,2,11),
(46,3,11),
(47,4,11),
(48,1,11),
(49,5,12),
(50,2,12),
(51,3,12),
(52,4,12),
(53,1,12),
(54,5,13),
(55,2,13),
(56,3,13),
(57,4,13),
(58,1,13),
(59,5,14),
(60,2,14),
(61,3,14),
(62,4,14),
(63,1,14);





