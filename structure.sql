

# file pour création des tables
CREATE DATABASE NEW;
USE NEW;
CREATE DATABASE NewDatabase;
use NewDatabase;
CREATE Table role(
id INT PRIMARY KEY not NULL AUTO_INCREMENT ,
label VARCHAR(255)
);
DESCRIBE role;
alter Table role
MODIFY label VARCHAR(255) not null;
DESCRIBE role;
create Table user(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255) not null ,
        lastname VARCHAR(255) not null ,
        email VARCHAR(255) UNIQUE NOT NULL,
        password  VARCHAR(255)

);
DESCRIBE user;
alter Table user
MODIFY password VARCHAR(255) not null;
DESCRIBE user;
CREATE Table classes(
    id int not null AUTO_INCREMENT PRIMARY key,
    name VARCHAR(255) not null,
    classroom_number int not null unique
);
DESCRIBE classes;
CREATE Table students(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    date_birth date not null,
    student_number int  not NULL UNIQUE,
    classes_id INT,
    user_id int ,
    FOREIGN KEY(classes_id) REFERENCES classes(id),
    FOREIGN KEY(user_id) REFERENCES user(id)
);
DESCRIBE students;
CREATE Table courses(
id int not null AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) not NULL UNIQUE,
description TEXT not null,
total_hours DECIMAL (5,2),
user_id int,
FOREIGN KEY(user_id) REFERENCES user(id)
);
DESCRIBE courses;
CREATE Table enrollement(
    id int not null AUTO_INCREMENT,
    enrolled_at date not null,
    status VARCHAR(255)
)