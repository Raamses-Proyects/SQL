/*
2.	Selecciona el nombre de la compa��a de la tabla customers donde en el nombre de la 
compa��a contenga la palabra �Restaurant�.
*/

USE Northwind
SELECT * FROM Customers
WHERE CompanyName LIKE'%Restaurant%'