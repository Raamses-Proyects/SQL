/*
1.	Selecciona el apellido, ciudad de la tabla employees donde el pa�s sea igual a USA.
*/
USE Northwind

SELECT LastName, City FROM Employees
WHERE Country LIKE '%USA%'


