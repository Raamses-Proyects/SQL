/*
2.	Selecciona el nombre de la compañía de la tabla customers donde en el nombre de la 
compañía contenga la palabra “Restaurant”.
*/

USE Northwind
SELECT * FROM Customers
WHERE CompanyName LIKE'%Restaurant%'