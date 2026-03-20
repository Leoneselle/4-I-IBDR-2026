/* Eduardo Leonel Navarro Avila
 * 4-I T/V CBTis-246
 * 20/03/2026*/

/*-ACTIVIDAD 1-
 * Registro de proceso indeterminado
 */

CREATE TABLE REGISTRO_T(
	FLUJO VARCHAR(50),
	PASO INT,
	ESTADO VARCHAR(50),
	PRIMARY KEY (FLUJO, PASO, ESTADO)
);

INSERT INTO REGISTRO_T (FLUJO, PASO, ESTADO)
VALUES
('Alpha', 1, 'Error'),
('Alpha', 2, 'Finalizado'),
('Alpha', 3, 'Corriendo'),
('Bravo', 1, 'Finalizado'),
('Bravo', 2, 'Finalizado'),
('Charlie', 1, 'Corriendo'),
('Charlie', 2, 'Corriendo'),
('Delta', 1, 'Error'),
('Delta', 2, 'Error'),
('Echo', 1, 'Corriendo'),
('Echo', 2, 'Finalizado');

SELECT 
    Flujo,
    CASE 
        WHEN COUNT(DISTINCT Estado) = 1 THEN MAX(Estado)
        WHEN SUM(CASE WHEN Estado = 'Error' THEN 1 ELSE 0 END) > 0 
             AND (SUM(CASE WHEN Estado IN ('Finalizado', 'Corriendo') THEN 1 ELSE 0 END) > 0)
             THEN 'Indeterminado'
        WHEN SUM(CASE WHEN Estado = 'Finalizado' THEN 1 ELSE 0 END) > 0 
             AND SUM(CASE WHEN Estado = 'Corriendo' THEN 1 ELSE 0 END) > 0
             THEN 'Corriendo'
	END AS pongame_10
FROM REGISTRO_T
GROUP BY Flujo;

/*-ACTIVIDAD 2-
 * Concatenación de grupos
 */

CREATE TABLE AGRUPAR(
	SECUENCIA INT,
	SINTAXIS VARCHAR(50),
	PRIMARY KEY (SECUENCIA, SINTAXIS)
);

INSERT INTO AGRUPAR (SECUENCIA, SINTAXIS)
VALUES
(1, 'SELECT'),
(2, 'Producto,'),
(3, 'Precio,'),
(4, 'Disponibilidad,'),
(5, 'FROM'),
(6, 'Productos'),
(7, 'WHERE'),
(8, 'Precio'),
(9, '>100');

SELECT
GROUP_CONCAT(SINTAXIS SEPARATOR ' ')
AS diablo
FROM AGRUPAR

/*-ACTIVIDAD 3-
 * 
 */

CREATE TABLE JUGADORES(
	JUGADOR_A INT,
	JUGADOR_B INT,
	MARCADOR INT,
	PRIMARY KEY (JUGADOR_A, JUGADOR_B, MARCADOR)
);

INSERT INTO JUGADORES (JUGADOR_A, JUGADOR_B, MARCADOR)
VALUES
(1001, 2002, 150),
(3003, 4004, 15),
(4004, 3003, 125);

SELECT 
    IF(JUGADOR_A < JUGADOR_B, JUGADOR_A, JUGADOR_B) AS JUGADOR_A,
    IF(JUGADOR_A > JUGADOR_B, JUGADOR_A, JUGADOR_B) AS JUGADOR_B,
    SUM(MARCADOR) AS MARCADOR
FROM JUGADORES
GROUP BY 
    1, 2;
	
	
