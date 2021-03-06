CREATE DATABASE IPSSI;

USE IPSSI;

CREATE TABLE class (
	id_class INT(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

CREATE TABLE student (
	id INT(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(40) NOT NULL,
    id_class INT(10) UNSIGNED NOT NULL,
    mail VARCHAR(50) UNIQUE NOT NULL,
    FOREIGN KEY (id_class) REFERENCES class(id_class)
);

CREATE TABLE Absence (
	id INT(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    dateAbs date NOT NULL,
    id_student INT(10) UNSIGNED NOT NULL,
    FOREIGN KEY (id_student) REFERENCES student(id)
);

CREATE TABLE assessment (
	id_assessment INT(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nom_mat VARCHAR(50) NOT NULL,
    nom_formateur VARCHAR(40) NOT NULL,
    dateAss DATE NOT NULL,
    id_class INT(10) UNSIGNED NOT NULL,
    FOREIGN KEY (id_class) REFERENCES class(id_class)
);

CREATE TABLE grade (
	id_grade INT(10) UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    dateG DATE NOT NULL,
    id_student INT(10) UNSIGNED NOT NULL,
    id_assessment INT(10) UNSIGNED NOT NULL,
    FOREIGN KEY (id_student) REFERENCES student(id),
    FOREIGN KEY (id_assessment) REFERENCES assessment(id_assessment)
);