/*
6.	Selecciona el productid, productname, categoryid y unitprice de la tabla productos, ordenados
 por categoryid y unitprice de manera descendiente este último.
*/
USE Northwind

SELECT ProductID, ProductName, CategoryID, UnitPrice FROM Products
order by CategoryID, UnitPrice desc
