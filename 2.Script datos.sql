insert into entity_type(entity_name) values 
('court'),
 ('sport'), 
 ('user'), 
 ('booking'), 
 ('pay');
 
 insert into status(status,id_entity_type) values 
('Activo',1),
('Eliminado',1), 
('En Mantenimiento',1), 
('Bloqueada', 1), 
('Activo', 2),
('Eliminado', 2),
('Activo', 3),
('Suspendido', 3),
('Pendiente', 3),
('Inactivo', 3),
('Eliminado', 3),
('Pendiente', 4),
('Confirmada', 4),
('Cancelada', 4),
('Finalizada', 4),
('No Presentado', 4),
('Rechazada', 4),
('Pendiente', 5),
('Confirmado', 5),
('Rechazado', 5),
('Fallido', 5),
('Reembolsado', 5),
('Aprobado', 5);

insert into country(country_name) values
('Colombia'),
('Argentina'),
('Perú'),
('Uruguay');

INSERT INTO region (region_name, id_country) VALUES
('Bogotá D.C.', 1),
('Antioquía', 1),
('Valle del Cauca', 1),
('Atlántico ', 1);


INSERT INTO city (city_name, id_region) VALUES
('Bogotá', 1),
('Medellín', 2),
('Cali', 3),
('Barranquilla', 4);


INSERT INTO region (region_name, id_country) VALUES
('Buenos Aires', 2),
('CABA', 2),
('Mendoza', 2);


INSERT INTO city (city_name, id_region) VALUES
('Buenos Aires', 5),
('Mendoza', 5),
('Rosario', 6),
('Córdoba', 7);

INSERT INTO region (region_name, id_country) VALUES
('Lima', 3),
('Cusco', 3),
('Arequipa', 3);

INSERT INTO city (city_name, id_region) VALUES
('Lima', 8),
('Cusco', 9),
('Arequipa', 10);

INSERT INTO region (region_name, id_country) VALUES
('Montevideo', 4),
('Canelones', 4),
('Maldonado', 4);

INSERT INTO city (city_name, id_region) VALUES
('Montevideo', 11),
('Punta del Este', 13),
('Canelones ', 12);

insert into sport(sport_name,id_status) values
('Fútbol', 5),('Baloncesto',5),('Tenis', 5), ('voleibol',5);

INSERT INTO `court` VALUES (1,'Estadio La Cancha 1',1,'Estadio La Cancha 1',7,4500.00,'calle 34 2',1,'Tunal',1),(2,'Estadio La Cancha 2',1,'Estadio La Cancha 2',7,3400.00,'calle 34 2',1,'Tunal',1),(3,'Cancha de Fútbol 3',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(4,'Cancha de Fútbol 4',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(5,'Cancha de Fútbol 5',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(6,'Cancha de Basket 1',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(7,'Cancha de Basket 2',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(8,'Cancha de Basket 3',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(9,'Cancha de Basket 4',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(10,'Cancha de Basket 5',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(11,'Cancha Central de Tenis 1',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(12,'Cancha Central de Tenis 2',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(13,'Cancha Central de Tenis 3',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5),(14,'Cancha Central de Tenis 4',1,'Cancha techada con césped sintético',10,150.00,'Calle 123, Bogotá',1,'Centro',5);

INSERT INTO `court_images` VALUES (1,1,'https://drive.google.com/uc?id=1umVwY8sAPmBgyJWJFNBJ-xy6N7_ykemz'),(2,1,'https://drive.google.com/uc?id=1G8AujMC32BM2j8VfPG5slK2RJ5yjwqO7'),(3,1,'https://drive.google.com/uc?id=1JdUi6zkdzynm5YfHSri52FY-Sus7SSrH'),(4,1,'https://drive.google.com/uc?id=1_HNh2QUoRavuLaLQ3J029gIs98YNIB8T'),(5,1,'https://drive.google.com/uc?id=1_s3ZPXQL8WcS03u-5h-Vc4eou8e_0xzr'),(6,2,'https://drive.google.com/uc?id=1s6AmhnkX1BqonN98UCVPmggR4rC4UaiJ'),(7,2,'https://drive.google.com/uc?id=14mJiTgMzgaN6vikFOEKXDT1pri8Ptwus'),(8,2,'https://drive.google.com/uc?id=1Wwlq_IA9o9MAJjpAz69oWPOHUtpfQ3h2'),(9,2,'https://drive.google.com/uc?id=1dh_B-LNvEoj5sDjOSatLcpaTAZ45QxrC'),(10,2,'https://drive.google.com/uc?id=1iSVBuUsIxKtRlkO4PsMNxVvnaWrNH2_v'),(11,3,'https://drive.google.com/uc?id=1jdlrtc4YIwXO_Qs0IutLzQKxXmVzwx1a'),(12,3,'https://drive.google.com/uc?id=1sK5kgz3UoCpr7PvvZi_tNnHIq2hTpFKm'),(13,3,'https://drive.google.com/uc?id=15TEL2pWlFmWDBmIxBfVig3nTzkBF3A0V'),(14,3,'https://drive.google.com/uc?id=1Z_pPIQlo5XsKQvq_Q5ISMSft9FY_MXiX'),(15,3,'https://drive.google.com/uc?id=1tQWt-qsNG4c0RiVUSPIRP_QKg_LOluU6'),(16,4,'https://drive.google.com/uc?id=1UjhIlvqRfX2WD-orhlec8W-xfvg-Wszc'),(17,4,'https://drive.google.com/uc?id=1OB5cFK6RcM0Hk9KH8pQyB7RnqdU_1xZJ'),(18,4,'https://drive.google.com/uc?id=1gci6neNGoB5E1sCH_4ZdDIsajx8thpVc'),(19,4,'https://drive.google.com/uc?id=1LLWWZYa0BEKGmRLVAv1a4-RWnF2Y8FA-'),(20,4,'https://drive.google.com/uc?id=1lirpg7gXVSoCP6AQ3LtMQhN7OXvAtqZG'),(21,4,'https://drive.google.com/uc?id=1MDfZVME6SnEWw6Fyb2cLAXTSY7cKQW1A'),(22,4,'https://drive.google.com/uc?id=1PosdtVjGV0HooHX4O99CJlL1nWrAgiqL'),(23,5,'https://drive.google.com/uc?id=1BnN5OFR-eQjK9hJl6a376DJm-LIvmKJd'),(24,5,'https://drive.google.com/uc?id=1mbrZ3nu6HYzogeBHPQdTKV1nbuqkPc6y'),(25,5,'https://drive.google.com/uc?id=1YJE_ShfYKmqUV1BpUcjqbrkN1p3deatu'),(26,5,'https://drive.google.com/uc?id=1jLYSdExrahV-pYvp-RThK-hfNkqWszK2'),(27,5,'https://drive.google.com/uc?id=1giy-xkLAw0b_2RrmvZhULsCjjDfhQMFs'),(28,5,'https://drive.google.com/uc?id=1FaMEV949bi3V-PgjtCOq2ptQpB19pAyu'),(29,6,'https://drive.google.com/uc?id=1RX4MlJa-zak8QDQhS6zbyDmWLzJL02j6'),(30,6,'https://drive.google.com/uc?id=1Y0iBa0XhG9kl8fHnrFIAp4iaUC2ICOrR'),(31,6,'https://drive.google.com/uc?id=1RNExXc3YeIKQNBww592WjxdCfuEXy1X6'),(32,6,'https://drive.google.com/uc?id=1LWimwiM2II9p5n3G0jtHznfBlQUEPaBV'),(33,6,'https://drive.google.com/uc?id=1bbuLKUGydpdwkp1MTwSFJ9yP6HMWHiq5'),(34,7,'https://drive.google.com/uc?id=1u8jfn8oaHN1QZMfKy_AL48SIQaEw3pCX'),(35,7,'https://drive.google.com/uc?id=1-uibmmfYViBGpcwK-_IV4SnKr9j-unVk'),(36,7,'https://drive.google.com/uc?id=1A61EU_zZM7uKoh3THiIgmhNGRHhCya0F'),(37,7,'https://drive.google.com/uc?id=1p44Uvjyp9tb-UR4KaB6x5MixkqXzK9N0'),(38,7,'https://drive.google.com/uc?id=1XMKUmqMgEK-dTYVJ1vIWH7Vfvc0aWRx7'),(39,8,'https://drive.google.com/uc?id=16g-Q18EqwytXG7ut0jRN-yAoP-G-d_M6'),(40,8,'https://drive.google.com/uc?id=129yiBBWxpcbSQelooSpr-aDX40u-1srh'),(41,8,'https://drive.google.com/uc?id=1-NZcT77eV0c4CRSrtzz09pQWJuCcJznY'),(42,8,'https://drive.google.com/uc?id=1dDnBavpWHbvueQ9osdksPREfXiEy6jjF'),(43,8,'https://drive.google.com/uc?id=1kiuz66fmhvdDqnmwsrDnI15puvM7H2Ys'),(44,9,'https://drive.google.com/uc?id=1TDNmD3-Au-lMz3UFEjPLPz7m1MnB8FB6'),(45,9,'https://drive.google.com/uc?id=1MuguVlDNOnUniUjL7aRWJOrcAeTgaxZF'),(46,9,'https://drive.google.com/uc?id=1u6Q0gBapvZIFdxFXWi7N6WQL_SoEaHYu'),(47,9,'https://drive.google.com/uc?id=1dvaaK952sOazJP_K7L1ECtzWrBpFk8Ic'),(48,9,'https://drive.google.com/uc?id=1IkvfuDTQtMEWqtFLstXHep-a7ZA0OqdK'),(49,10,'https://drive.google.com/uc?id=1VB7BCXdv_IciOVW6p4q5jNYODi-7rypu'),(50,10,'https://drive.google.com/uc?id=1MVnh6ufOR5BmUrGclc34XWwkmOXcQbZU'),(51,10,'https://drive.google.com/uc?id=1FJsuszeosDqmCh-N5aAN0vuzIs5Fi4Q1'),(52,10,'https://drive.google.com/uc?id=1c-KGHhElCVj2r6m2WIzkZu-D22GWrvzh'),(53,10,'https://drive.google.com/uc?id=1xMcEK4SupGcH5relkJrbpmYIQoG9EESm'),(54,11,'https://drive.google.com/uc?id=13MKz5QhDHV9fmiLjwxAskxcBf8gM5VJl'),(55,11,'https://drive.google.com/uc?id=15x90_z8O2al2007r7RhJfaq28hLglnxJ'),(56,11,'https://drive.google.com/uc?id=1UkuFiEvjtl3gOY8nYFbpmtqKBKc3UtmB'),(57,11,'https://drive.google.com/uc?id=1F0X4z3uGmS7NgJl6Ru7YH20S9fuXZrp2'),(58,11,'https://drive.google.com/uc?id=1N0okv1-P10Rua0BmRDewRObiBehCxUIg'),(59,12,'https://drive.google.com/uc?id=1a2NAUrHOFteLAxiKmkdAQ2xLFgvUBB9I'),(60,12,'https://drive.google.com/uc?id=1sIpnEhk8WxLi6pJNahYjhRwXinN9f5yA'),(61,12,'https://drive.google.com/uc?id=1i2xkxGahpGH04NXYPShTA0tVsB4RFYmG'),(62,12,'https://drive.google.com/uc?id=1oNOSVlm22JYKqDVZlQ31mkDFRYmx_RRR'),(63,12,'https://drive.google.com/uc?id=10tonckF4Sewf4FZcXcL4m3Xso-bblV6D'),(64,13,'https://drive.google.com/uc?id=1mt6Vzvk5KeGwLn1tI7Upl0x4rn5eL4Mv'),(65,13,'https://drive.google.com/uc?id=1rajg2MZEVP3vMag1DQ8guwiPDK5ocTJo'),(66,13,'https://drive.google.com/uc?id=1zFoz4j3TS4SZacPONQxJY4O5FKam7T61'),(67,13,'https://drive.google.com/uc?id=1TJpphSpICaEzw9bOvC5W30tChD3GDmKr'),(68,13,'https://drive.google.com/uc?id=1qGM7vbTMVhqUnKeXx0n2KOMkDkCvOkMl'),(69,14,'https://drive.google.com/uc?id=1wSdE5d1XurYOTR6dwK5kR-m32nzUA7lZ'),(70,14,'https://drive.google.com/uc?id=1R85Z6GDh3NWDNjnPGOePohW0vGsb-TSf'),(71,14,'https://drive.google.com/uc?id=1W782VCI5hLaH156a_pFajtkOZ3gglfz5'),(72,14,'https://drive.google.com/uc?id=1Zessq9mkqbd5yIcZdpLxQ6zxFvbvvx7N'),(73,14,'https://drive.google.com/uc?id=1YQmH-Kq0SFSlbLJihQYWkpCLDxWpJqGY');


