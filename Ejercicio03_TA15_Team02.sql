DROP DATABASE IF EXISTS Ejercicio09_14;
CREATE DATABASE Ejercicio09_14;
USE Ejercicio09_14;

CREATE TABLE proyecto (
	id CHAR(4),
    nombre NVARCHAR(255),
    horas INT,
    PRIMARY KEY (id)
);

CREATE TABLE cientificos (
	DNI VARCHAR(8),
    nombre_apels NVARCHAR(255),
    PRIMARY KEY (DNI)
);

CREATE TABLE asignado_a (
	cientifico VARCHAR(8),
    proyecto CHAR(4),
    FOREIGN KEY (cientifico) REFERENCES cientificos (DNI) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (proyecto) REFERENCES proyecto (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO proyecto VALUES 
('0001', 'Proyecto 1', 100),
('0002', 'Proyecto 2', 200),
('0003', 'Proyecto 3', 150),
('0004', 'Proyecto 4', 200),
('0005', 'Proyecto 5', 100),
('0006', 'Proyecto 6', 50),
('0007', 'Proyecto 7', 190),
('0008', 'Proyecto 8', 90),
('0009', 'Proyecto 9', 250),
('0010', 'Proyecto 10', 350);

INSERT INTO cientificos VALUES 
('1234567A', 'Albert Einstein'),
('2345678B', 'Marie Curie'),
('3456789C', 'Stephen Hawking'),
('4567891D', 'Galileo Galilei'),
('5678912E', 'Charles Darwin'),
('6789123F', 'Isaac Newton'),
('7891234G', 'Nikola Tesla'),
('8912345H', 'Richard Feynman'),
('9123456J', 'Carl Sagan'),
('1189745L', 'Neil deGrasse Tyson');

INSERT INTO asignado_a VALUES 
('1234567A', '0001'),
('2345678B', '0009'),
('3456789C', '0005'),
('4567891D', '0010'),
('5678912E', '0002'),
('6789123F', '0003'),
('7891234G', '0006'),
('8912345H', '0004'),
('9123456J', '0007'),
('1189745L', '0008');

SELECT * FROM proyecto;
SELECT * FROM cientificos;
SELECT * FROM asignado_a;