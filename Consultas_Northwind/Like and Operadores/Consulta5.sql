/*
5.	Selecciona el nombre de la compañía y fax de la tabla suppliers de aquellos registros que
 contengan nulos en su columna fax.
*/
USE Northwind

SELECT CompanyName, Fax FROM Suppliers
WHERE Fax is null