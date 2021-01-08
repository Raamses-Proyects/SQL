/*
4.	Selecciona el nombre del producto, el precio unitario de la tabla productos donde el precio unitario sea 
mayor igual a 10 y menor igual a 20
*/
USE Northwind

SELECT ProductName, UnitPrice from Products
WHERE UnitPrice>=10 and UnitPrice<=20