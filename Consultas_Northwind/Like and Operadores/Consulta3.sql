/*
3.	Selecciona el id del producto, el nombre del producto, el id del proveedor, el precio unitario
 de aquellos productos que su nombre empieza con la letra T o que su productid sea igual a 46 y su
 precio unitario sea mayor que 16.00.
*/

USE Northwind
SELECT ProductID, ProductName, SupplierID, UnitPrice, * FROM Products
WHERE ProductName LIKE'T%' OR ProductID = 46 AND UnitPrice > 16

