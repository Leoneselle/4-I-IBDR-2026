CREATE TABLE F_A (
	id INT NOT NULL,
	NOMBRE VARCHAR(100),
	PRIMARY KEY (ID, NOMBRE)
);

CREATE TABLE F_B (
	id INT NOT NULL,
	NOMBRE VARCHAR(100),
	PRIMARY KEY (ID, NOMBRE)
);

INSERT INTO F_A (ID, NOMBRE)
VALUES
	(1, 'S. Serez'),
	(2, 'M. Botas'),
	(3, 'M. Verstappen'),
	(4, 'I. Hadjar'),
	(5, 'C. Leclerk'),
	(6, 'L. Hamilton'),
	(7, 'L. Norris');

INSERT INTO F_B (ID, NOMBRE)
VALUES
	(1, 'G. Rusell'),
	(2, 'K. Antoneli'),
	(3, 'S. Serez'),
	(4, 'F. Alonso'),
	(5, 'M. Verstappen'),
	(6, 'L. Lawson'),
	(7, 'L. Hamilton');

Select * from F_A inner join F_B
on F_A.NOMBRE = F_B.NOMBRE

Select * from F_A full outer join F_B
on F_A.NOMBRE = F_B.NOMBRE

Select * from F_A left outer F_B
on F_A.NOMBRE = F_B.NOMBRE

Select * from F_A right outer F_B
on F_A.NOMBRE = F_B.NOMBRE

Select * from F_A
full outer join F_B
on F_A.NOMBRE = F_B.NOMBRE
where F_A.NOMBRE is Null

Select * from F_A
Left join F_B
on F_A.NOMBRE = F_B.NOMBRE
Where F_B.NOMBRE is Null

Select * from F_A
Left join F_B
on F_A.NOMBRE = F_B.NOMBRE
Where F_B.NOMBRE is Null