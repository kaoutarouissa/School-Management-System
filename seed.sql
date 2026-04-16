-- Active: 1776335268053@@localhost@3306@newdatabase
#file pour insertion des valeurs aux tableaux
USE  newdatabase;
INSERT INTO role(label) VALUES("Admin"),("Prof"),("Student");
SELECT * from role;
INSERT INTO user(firstname,lastname,email,password) VALUES("kaoutar","ouissa","ouissa@gmail.com","kawtar123");
insert into classes(name,classroom_number) VALUES("webwizard",1);
INSERT INTO courses(title,description,total_hours) VALUES("sqlDatabase","SQL (Structured Query Language) est un langage de programmation utilisé pour gérer et manipuler des bases de données relationnelles.",20);
INSERT into students(date_birth,student_number) VALUES("2001-06-05",1);
DESCRIBE students;
select * from enrollement;
INSERT INTO enrollement(enrolled_at,status) VALUES("2024-04-19","térm");
DELETE FROM enrollement
WHERE id = 2;