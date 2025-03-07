CREATE DATABASE IF NOT EXISTS court_booking;
USE court_booking;

CREATE TABLE country (
	id_country int auto_increment primary key,
    country_name  varchar(50) not null
);

CREATE TABLE region (
	id_region int auto_increment primary key,
    region_name  varchar(50) not null,
    id_country int,
    foreign key (id_country) references country(id_country)
);

CREATE TABLE city (
	id_city int auto_increment primary key,
    city_name  varchar(50) not null,
    id_region int,
    foreign key (id_region) references region(id_region)
);

CREATE TABLE entity_type (
	id_entity_type int auto_increment primary key,
    entity_name varchar(20) not null
);

CREATE TABLE status (
	id_status int auto_increment primary key,
    status varchar(20) not null,
    id_entity_type int,
    foreign key (id_entity_type) references entity_type(id_entity_type)
);

CREATE TABLE sport (
	id_sport int auto_increment primary key,
    sport_name varchar(50) not null,
    id_status int,
    foreign key (id_status) references status(id_status)
);

CREATE TABLE court (
	id_court int auto_increment primary key,
    court_name varchar(50) not null  UNIQUE,
    id_sport int,
    court_description varchar(100) not null,
    capacity int not null,
	price_per_hour decimal(10, 2) NOT NULL,
    address varchar(100) not null,
    id_status int,
    neighborhood varchar(50),
    id_city int,
    foreign key (id_sport) references sport(id_sport),
    foreign key (id_status) references status(id_status),
    foreign key (id_city) references city(id_city)
);

CREATE TABLE court_schedule (
	id_court_schedule int auto_increment primary key,
    id_court int,
    day_week int not null,
    start_time time not null,
    closing_time time not null,
    is_active boolean not null,
    foreign key (id_court) references court(id_court)
);

CREATE TABLE user_profile (
	id_user_profile int auto_increment primary key,
    profile_name varchar(50) not null
);

CREATE TABLE permission (
	id_permission int auto_increment primary key,
    permission_name varchar(100) not null
);

CREATE TABLE profile_permission (
	id_profile_permission int auto_increment primary key,
    id_user_profile int,
    id_permission int,
    foreign key (id_user_profile) references user_profile(id_user_profile),
    foreign key (id_permission) references permission(id_permission)
);

CREATE TABLE document_type (
	id_document_type int auto_increment primary key,
    document_type varchar(20) not null
);

CREATE TABLE user (
	id_user int auto_increment primary key,
    id_document_type int,
    document varchar(50) not null,
    user_name varchar(150) not null,
    user_last_name varchar(150) not null,
    email_address varchar(255) not null,
    user_password varchar(255) not null,
    phone_number varchar(20) not null,
    registration_date datetime not null,
    id_user_profile int,
    id_status int,
    foreign key (id_document_type) references document_type(id_document_type),
    foreign key (id_user_profile) references user_profile(id_user_profile),
    foreign key (id_status) references status(id_status)
);

CREATE TABLE booking (
	id_booking int auto_increment primary key,
    id_user int,
    id_court int,
    registration_date datetime not null,
    booking_date date not null,
    booking_start_time time not null,
    booking_closing_time time not null,
    capacity int not null,
    id_status int,
    foreign key (id_user) references user(id_user),
    foreign key (id_court) references court(id_court),
    foreign key (id_status) references status(id_status)
);

CREATE TABLE payment_method (
	id_payment_method int auto_increment primary key,
    payment_method varchar(150) not null
);

CREATE TABLE pay (
	id_payment int auto_increment primary key,
    id_booking int,
    amount decimal(10,2) not null,
    id_payment_method int,
    payment_date datetime not null,
    id_status int,
    foreign key (id_booking) references booking(id_booking),
    foreign key (id_payment_method) references payment_method(id_payment_method),
    foreign key (id_status) references status(id_status)
);

CREATE TABLE satisfaction (
	id_satisfaction int auto_increment primary key,
    level int not null,
    Description varchar(100) not null
);

CREATE TABLE comment_booking (
	id_comment_booking int auto_increment primary key,
    id_booking int,
    id_satisfaction int,
    comment_booking varchar(255) not null,
    comment_date datetime not null,
    foreign key (id_booking) references booking(id_booking),
    foreign key (id_satisfaction) references satisfaction(id_satisfaction)
);

CREATE TABLE booking_log (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_booking INT,
    action VARCHAR(50) NOT NULL,
    old_status INT,
    new_status INT,
    id_user INT, 
    change_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_booking) REFERENCES booking(id_booking),
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (old_status) REFERENCES status(id_status),
    FOREIGN KEY (new_status) REFERENCES status(id_status)
);

CREATE TABLE court_schedule_log (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_court_schedule INT,
    action VARCHAR(50) NOT NULL,
    old_start_time TIME,
    new_start_time TIME,
    old_closing_time TIME,
    new_closing_time TIME,
    id_user INT,
    change_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_court_schedule) REFERENCES court_schedule(id_court_schedule),
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE court_images (
    id_court_image INT AUTO_INCREMENT PRIMARY KEY,
    id_court INT NOT NULL,
    image_url VARCHAR(500) NOT NULL,
    FOREIGN KEY (id_court) REFERENCES court(id_court) ON DELETE CASCADE
);


ALTER TABLE user ADD CONSTRAINT unique_email UNIQUE (email_address);

CREATE INDEX idx_status_entity ON status(id_entity_type);
CREATE INDEX idx_user_profile ON user(id_user_profile);
CREATE INDEX idx_booking_user ON booking(id_user);

ALTER TABLE satisfaction ADD CONSTRAINT chk_satisfaction_level CHECK (level BETWEEN 1 AND 5);


