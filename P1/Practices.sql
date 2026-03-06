/* 

Implementacion de una base de datos en un sistema de informacion

2026/03/04 4-I

Juan Antonio Ortega Sandoval

Nombre de la practica

*/

CREATE TABLE departamentos (
  id int NOT NULL,
  name varchar(25) NOT NULL,
  location date NOT NULL,
  PRIMARY KEY (id, name)

);

-- Crear una tabla llamaba "empleados" con las columnas  id, nombre, edad, and salario.

CREATE TABLE empleados (
	ID INT NOT NULL,
	NOMBRE VARCHAR(50) NOT NULL,
	EDAD INT NOT NULL,
	SALARIO DOUBLE NOT NULL,
	PRIMARY KEY (ID, NOMBRE)
);

-- Insertar 5 registros en la tabla "emplados".

INSERT INTO empleados (ID, NOMBRE, EDAD, SALARIO)
VALUES
	(1, 'JUAN', 23, 1.90)
	(2, 'VANE', 22, 1.02)
	(3, 'ZARA', 21, 2.40)
	(4, 'ROMI', 23, 69.60)
	(5, 'LALO', 23, 69.02)
	
-- Agregar una nueva columna "departamento" a la tabla "empleados".

ALTER TABLE empleados
ADD COLUMN DEPARTAMENTO VARCHAR(50) NOT NULL;

-- Cambiar el tipo de dato de la columna "salario" a Integer.

ALTER TABLE empleados 
MODIFY COLUMN SALARIO INT;

-- Eliminar la columna "departamento de la tabla "empleados".

ALTER TABLE empleados
DROP COLUMN DEPARTAMENTO;

-- Eliminar la tabla "departamentos" permanentemente.

ALTER TABLE empleados
DROP COLUMN DEPARTAMENTO;

-- Eliminar todos los registros de la tabla "empleados" pero mantener la tabla.

TRUNCATE TABLE empleados;

-- Renombrar la tabla "empleados" a "staff".

ALTER TABLE empleados
RENAME TO staff;

-- Definir 0 como valor predeterminado en la comlumna "salario".

ALTER TABLE staff MODIFY SALARIO INT DEFAULT 0; 

-- Crear un nuevo esquema llamado "rh_db".

CREATE SCHEMA RH_DB;

-- Mover la tabla "empleados" al esquema "rh_db".
RENAME TABLE defaultdb.staff TO RH_DB.staff;