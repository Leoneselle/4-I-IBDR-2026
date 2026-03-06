/* 

Implementacion de una base de datos en un sistema de informacion

2025/02/19 4-I

Juan Antonio Ortega Sandoval

Nombre de la practica: identificación de errores

No me repruebe profe pli ni idea comose hace

Eduardo Leonel Navarro Avila 4-i

*/





CREATE TABLE BOOKS (

	ID INT NOT NULL,

	NAME VARCHAR(50) NOT NULL,

	PRICE INT NULL,

	CATEGORYID INT NULL,

	AUTHORID INT NULL,

	PRIMARY KEY (ID, NAME)

);



CREATE TABLE CATEGORIES (

	ID INT,

	NAME VARCHAR(50) NOT NULL,

	PRIMARY KEY (ID, NAME)

);



CREATE TABLE AUTHORS (ID INT,

	NAME VARCHAR(50) NOT NULL,

	PRIMARY KEY (ID, NAME)

);



INSERT INTO CATEGORIES (ID, NAME)

VALUES

	(1, 'Cat-A'),

	(2, 'Cat-B'),

	(3, 'Cat-C'),

	(7, 'Cat-D'),

	(8, 'Cat-E'),

	(4, 'Cat-F'),

	(10, 'Cat-G'),

	(12, 'Cat-H'),

	(6, 'Cat-I');



INSERT INTO AUTHORS (ID, NAME)

VALUES

	(1, 'Author-A'),

	(2, 'Author-B'),

	(3, 'Author-C'),

	(10, 'Author-D'),

	(12, 'Author-E');



INSERT INTO BOOKS (ID, NAME, PRICE, CATEGORYID, AUTHORID)

VALUES

	(1, 'Book-A', 100, 1, 2),

	(2, 'Book-B', 200, 2, 2),

	(3, 'Book-C', 150, 3, 2),

	(4, 'Book-D', 100, 3, 1),

	(5, 'Book-E', 200, 3, 1),

	(6, 'Book-F', 150, 4, 1),

	(7, 'Book-G', 100, 5, 6),

	(8, 'Book-H', 200, 5, 6),

	(9, 'Book-I', 150, 7, 8);

	



/** Encontrar los fallos en el script, hacer las correcciones, realizar las siguientes operaciones y guardar las consultas**/

SELECT * FROM CATEGORIES INNER JOIN AUTHORS
	ON CATEGORIES.name  = AUTHORS.name

 	

SELECT * FROM CATEGORIES LEFT OUTER JOIN AUTHORS
	ON CATEGORIES.NAME = AUTHORS.NAME

 	

SELECT * FROM CATEGORIES RIGHT OUTER JOIN AUTHORS
	 ON CATEGORIES.name = AUTHORS.name

SELECT *
FROM CATEGORIES
NATURAL JOIN AUTHORS;

Select * from CATEGORIES
Left join AUTHORS
On CATEGORIES.name = AUTHORS.name
Where CATEGORIES.name is Null

Select * from CATEGORIES
Right join AUTHORS
On CATEGORIES.name = AUTHORS.name
Where CATEGORIES.name is Null

