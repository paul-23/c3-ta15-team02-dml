DROP DATABASE IF EXISTS grandes_almacenes;
CREATE DATABASE grandes_almacenes;
USE grandes_almacenes;

CREATE TABLE Productos(
	Codigo INT,
	Nombre NVARCHAR(100),
	Precio INT,
	PRIMARY KEY (Codigo)
);

CREATE TABLE Cajeros(
	Codigo INT,
	NomApels NVARCHAR(255),
	PRIMARY KEY (Codigo)
);

CREATE TABLE Maquinas_Registradoras(
	Codigo INT,
	Piso INT,
	PRIMARY KEY (Codigo)
);

CREATE TABLE Venta(
	Cajero INT,
	Maquina INT,
	Producto INT,
	PRIMARY KEY (Cajero),
	KEY (Maquina),
	KEY (Producto),
	FOREIGN KEY (Cajero) REFERENCES Cajeros (Codigo) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Maquina) REFERENCES Maquinas_Registradoras (Codigo) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (Producto) REFERENCES Productos (Codigo) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Productos (Codigo, Nombre, Precio) VALUES
	(1, 'Leche', 50),
	(2, 'Huevos', 30),
	(3, 'Pan', 20),
	(4, 'Azúcar', 40),
	(5, 'Café', 60),
	(6, 'Té', 35),
	(7, 'Arroz', 25),
	(8, 'Frijoles', 50),
	(9, 'Pasta', 45),
	(10, 'Aceite', 70);

INSERT INTO Cajeros (Codigo, NomApels) VALUES
	(1, 'Juan Perez'),
	(2, 'María Rodriguez'),
	(3, 'Pedro Gómez'),
	(4, 'Ana Martínez'),
	(5, 'Carlos Hernández'),
	(6, 'Luisa García'),
	(7, 'Jorge Flores'),
	(8, 'Lucía Sánchez'),
	(9, 'Fernando Ortiz'),
	(10, 'Elena Ramírez');

INSERT INTO Maquinas_Registradoras (Codigo, Piso) VALUES
	(1, 1),
	(2, 2),
	(3, 1),
	(4, 3),
	(5, 2),
	(6, 1),
	(7, 3),
	(8, 2),
	(9, 1),
	(10, 3);

INSERT INTO Venta (Cajero, Maquina, Producto) VALUES 
	(5, 4, 1),
    (2, 3, 7),
    (6, 9, 2),
    (7, 5, 5),
    (3, 5, 4),
    (4, 4, 9),
    (8, 6, 10),
    (9, 10, 2),
    (10, 1, 3),
    (1, 2, 1);

SELECT * FROM Productos;
SELECT * FROM Cajeros;
SELECT * FROM Maquinas_Registradoras;
SELECT * FROM Productos;