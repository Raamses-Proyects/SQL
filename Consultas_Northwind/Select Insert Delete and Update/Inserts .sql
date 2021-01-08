/*
7.	Insertar un registro en la tabla employees con tus datos personales (lastname, Firstname, Title, 
BirthDate, City, Country, PostalCode, ReportsTo).
*/

USE Northwind

INSERT INTO [dbo].[Employees] 
(LastName, FirstName, Title, BirthDate, City, Country, PostalCode, ReportsTo)
VALUES ('Chavez','Raamses','Estudiante','1995-29-11 ','Nogales','Mexico','84160', '7');


/*
8.	Insertar un registro en la tabla employees con los  datos personales  de tu compañero de lado 
(lastname, Firstname, Title, BirthDate, City, Country, PostalCode, ReportsTo).
*/
USE Northwind

INSERT INTO Employees
(LastName, FirstName, Title, BirthDate, City, Country, PostalCode, ReportsTo)
values('Eit', 'tikiriti', 'Estudent','1900-5-8','Magdalena', 'Sonora', '54562','9')

