SET SQL_SAFE_UPDATES = 0;
delete from court_booking.user;
ALTER TABLE court_booking.user AUTO_INCREMENT = 1;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE court_booking.user DROP FOREIGN KEY fk_user_city;
ALTER TABLE court_booking.user DROP COLUMN id_city;

ALTER TABLE court_booking.user ADD COLUMN id_country INT;
ALTER TABLE court_booking.user ADD CONSTRAINT fk_user_country FOREIGN KEY (id_country) REFERENCES country(id_country);

ALTER TABLE court_booking.user DROP FOREIGN KEY user_ibfk_1;
ALTER TABLE court_booking.user DROP COLUMN id_document_type;
ALTER TABLE court_booking.user DROP COLUMN document;

