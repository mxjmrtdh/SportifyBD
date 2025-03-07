DROP TABLE profile_permission;
DROP TABLE permission;
ALTER TABLE user DROP FOREIGN KEY user_ibfk_2;
ALTER TABLE user DROP COLUMN id_user_profile;
DROP TABLE user_profile;

ALTER TABLE booking_log DROP FOREIGN KEY booking_log_ibfk_2;
ALTER TABLE court_schedule_log DROP FOREIGN KEY court_schedule_log_ibfk_2;
ALTER TABLE booking DROP FOREIGN KEY booking_ibfk_1;

ALTER TABLE user MODIFY COLUMN id_user BIGINT AUTO_INCREMENT;
ALTER TABLE booking_log MODIFY COLUMN id_user BIGINT;
ALTER TABLE booking MODIFY COLUMN id_user BIGINT;
ALTER TABLE court_schedule_log MODIFY COLUMN id_user BIGINT;

ALTER TABLE booking_log 
ADD CONSTRAINT fk_booking_log FOREIGN KEY (id_user) REFERENCES user(id_user);

ALTER TABLE court_schedule_log 
ADD CONSTRAINT fk_court_schedule_log FOREIGN KEY (id_user) REFERENCES user(id_user);

ALTER TABLE booking 
ADD CONSTRAINT fk_booking FOREIGN KEY (id_user) REFERENCES user(id_user);


ALTER TABLE user ADD COLUMN birthdate DATE;
ALTER TABLE user ADD COLUMN id_city INT;
ALTER TABLE user ADD CONSTRAINT fk_user_city FOREIGN KEY (id_city) REFERENCES city(id_city);

CREATE TABLE rol (
    id_rol BIGINT AUTO_INCREMENT PRIMARY KEY,
    name ENUM('ROLE_USER', 'ROLE_ADMIN', 'ROLE_SUPER_ADMIN') NOT NULL
);

CREATE TABLE user_roles (
    id_user BIGINT NOT NULL,
    id_rol BIGINT NOT NULL,
    PRIMARY KEY (id_user, id_rol),
    FOREIGN KEY (id_user) REFERENCES user(id_user) ON DELETE CASCADE,
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol) ON DELETE CASCADE
);

INSERT INTO rol (name) VALUES 
('ROLE_USER'), 
('ROLE_ADMIN'), 
('ROLE_SUPER_ADMIN');

INSERT INTO document_type VALUES(1,'CC');
INSERT INTO document_type VALUES(2,'Pasaporte');
INSERT INTO document_type VALUES(3,'Cédula extrajera');


