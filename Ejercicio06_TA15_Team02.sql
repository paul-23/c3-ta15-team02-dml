DROP DATABASE IF EXISTS los_investigadores;
CREATE DATABASE los_investigadores;
USE los_investigadores;

CREATE TABLE Facultad (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre NVARCHAR(100))
;

CREATE TABLE Investigadores (
	DNI VARCHAR(8) PRIMARY KEY,
	NomApels NVARCHAR(255),
	Facultad INT,
	FOREIGN KEY(facultad) REFERENCES Facultad(Codigo))
;

CREATE TABLE Equipos (
	NumSerie CHAR(4) PRIMARY KEY,
	Nombre NVARCHAR(100),
	Facultad INT,
	FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo))
;

CREATE TABLE Reserva (
	DNI varchar(8),
	NumSerie char(4),
	Comienzo DATETIME,
	Fin DATETIME,
	primary key (DNI, NumSerie),
	FOREIGN KEY (DNI) REFERENCES Investigadores(DNI),
	FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie))
;

INSERT INTO Facultad (Nombre) VALUES
	('Facultad de Ciencias de la Computación'),
	('Facultad de Ciencias Económicas'),
	('Facultad de Arquitectura'),
	('Facultad de Derecho'),
	('Facultad de Medicina'),
	('Facultad de Psicología'),
	('Facultad de Ingeniería'),
	('Facultad de Bellas Artes'),
	('Facultad de Biología'),
	('Facultad de Química');

INSERT INTO Investigadores (DNI, NomApels, Facultad) VALUES
	('12345678', 'Juan Pérez', 1),
	('23456789', 'María González', 2),
	('34567890', 'Pedro Rodríguez', 1),
	('45678901', 'Ana Martínez', 3),
	('56789012', 'Carlos Sánchez', 7),
	('67890123', 'Laura Fernández', 6),
	('78901234', 'Javier López', 8),
	('89012345', 'Marta García', 4),
	('90123456', 'Raúl Gómez', 9),
	('01234567', 'Lucía Jiménez', 10);

INSERT INTO Equipos (NumSerie, Nombre, Facultad) VALUES
	('1234', 'Equipo A', 1),
	('5678', 'Equipo B', 3),
	('9012', 'Equipo C', 4),
	('3456', 'Equipo D', 6),
	('7890', 'Equipo E', 7),
	('2345', 'Equipo F', 8),
	('6789', 'Equipo G', 2),
	('0123', 'Equipo H', 5),
	('4567', 'Equipo I', 9),
	('8901', 'Equipo J', 10);

INSERT INTO Reserva (DNI, NumSerie, Comienzo, Fin) VALUES
('12345678', '1234', '2023-04-01 09:00:00', '2023-04-01 12:00:00'),
('23456789', '5678', '2023-04-01 14:00:00', '2023-04-01 18:00:00'),
('34567890', '1234', '2023-04-02 10:00:00', '2023-04-02 13:00:00'),
('45678901', '9012', '2023-04-03 11:00:00', '2023-04-03 14:00:00'),
('56789012', '3456', '2023-04-04 09:00:00', '2023-04-04 12:00:00'),
('67890123', '7890', '2023-04-05 15:00:00', '2023-04-05 18:00:00'),
('78901234', '2345', '2023-04-06 10:00:00', '2023-04-06 12:00:00'),
('89012345', '6789', '2023-04-07 13:00:00', '2023-04-07 16:00:00'),
('90123456', '0123', '2023-04-12 18:00:00', '2023-04-30 19:00:00'),
('01234567', '8901', '2023-04-23 09:00:00', '2023-04-28 12:00:00');

SELECT * FROM Facultad;
SELECT * FROM Investigadores;
SELECT * FROM Equipos;
SELECT * FROM Reserva;