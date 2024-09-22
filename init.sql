-- DROP DATABASE IF EXISTS db_nombres;
-- CREATE DATABASE db_nombres CHARSET utf8mb4;

CREATE DATABASE IF NOT EXISTS db_nombres CHARACTER SET utf8mb4;
USE db_nombres;

CREATE TABLE personas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    edad INT UNSIGNED NOT NULL
);
INSERT INTO personas(nombre, apellido, edad) VALUES('geraldo', 'colchado', 20);
INSERT INTO personas(nombre, apellido, edad) VALUES('juan', 'salas', 15);
INSERT INTO personas(nombre, apellido, edad) VALUES('pedro', 'gamarra', 35);
