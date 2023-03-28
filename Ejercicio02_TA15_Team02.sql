DROP DATABASE IF EXISTS piezas_y_proveedores;
CREATE DATABASE piezas_y_proveedores;
USE piezas_y_proveedores;

CREATE TABLE Piezas (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre NVARCHAR(100))
;

CREATE TABLE Proveedores (
	Id CHAR(4) PRIMARY KEY,
	Nombre NVARCHAR(100))
;

CREATE TABLE Suministra (
	CodigoPieza INT,
	IdProveedor CHAR(4),
	Precio INT,
	PRIMARY KEY(CodigoPieza,IdProveedor),
	KEY(CodigoPieza),
	FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (IdProveedor) REFERENCES Proveedores(Id)
	ON DELETE CASCADE ON UPDATE CASCADE)
;

INSERT INTO Piezas (Nombre) VALUES
	("Pieza1"),
	("Pieza2"),
	("Pieza3"),
	("Pieza4"),
	("Pieza5"),
	("Pieza6"),
	("Pieza7"),
	("Pieza8"),
	("Pieza9"),
	("Pieza10");

INSERT INTO Proveedores (Id, Nombre) VALUES
	("0001", "Proveedor 1"),
	("0002", "Proveedor 2"),
	("0003", "Proveedor 3"),
	("0004", "Proveedor 4"),
	("0005", "Proveedor 5"),
	("0006", "Proveedor 6"),
	("0007", "Proveedor 7"),
	("0008", "Proveedor 8"),
	("0009", "Proveedor 9"),
	("0010", "Proveedor 10");

INSERT INTO Suministra (CodigoPieza, IdProveedor, Precio) VALUES
	(1, "0001", 100),
	(2, "0002", 200),
	(3, "0003", 150),
	(4, "0004", 120),
	(5, "0005", 300),
	(6, "0006", 250),
	(7, "0007", 180),
	(8, "0008", 220),
	(9, "0009", 90),
	(10, "0010", 280);

SELECT * FROM Piezas;
SELECT * FROM Proveedores;
SELECT * FROM Suministra;