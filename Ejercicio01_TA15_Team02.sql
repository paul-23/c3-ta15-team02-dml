DROP DATABASE IF EXISTS los_directores;
CREATE DATABASE los_directores;
USE los_directores;

CREATE TABLE Despachos(
	Numero INT,
	Capacidad INT,
	PRIMARY KEY (Numero)
);

CREATE TABLE Directores(
	DNI VARCHAR(8),
	NomApels NVARCHAR(255),
	DNIJefe VARCHAR(8),
	Despacho INT,
	PRIMARY KEY (DNI),
	FOREIGN KEY (Despacho) REFERENCES Despachos (Numero) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (DNIJefe) REFERENCES Directores (DNI) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Despachos (Numero, Capacidad) VALUES
	(1, 4),
	(2, 6),
	(3, 5),
	(4, 7),
	(5, 3),
	(6, 5),
	(7, 4),
	(8, 6),
	(9, 5),
	(10, 7);

INSERT INTO Directores (DNI, NomApels, DNIJefe, Despacho) VALUES
	('12345678', 'Pérez García, Ana', NULL, 1),
	('23456789', 'González Martín, Juan', '12345678', 2),
	('34567890', 'Fernández López, Carmen', '12345678', 3),
	('45678901', 'Martínez Sánchez, Luis', '23456789', 4),
	('56789012', 'García Fernández, María', NULL, 5),
	('67890123', 'Sánchez Pérez, Pedro', '34567890', 6),
	('78901234', 'López Martínez, Isabel', '34567890', 7),
	('89012345', 'Rodríguez García, David', NULL, 8),
	('90123456', 'Pérez Martínez, Laura', '45678901', 9),
	('01234567', 'González Fernández, Javier', '56789012', 10);

SELECT * FROM Despachos;
SELECT * FROM Directores;