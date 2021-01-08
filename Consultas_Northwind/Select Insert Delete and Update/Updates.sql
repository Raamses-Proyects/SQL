/*
9.	Modificar el precio unitario de la tabla products incrementándole un 10 porciento a ese precio
 donde el id de la categoría sea igual a 1.

 Forma para disminuir % 
Update Products SET UnitPrice = UnitPrice-(UnitPrice*.10)
WHERE CategoryID=1;
*/
Use Northwind
Update Products SET UnitPrice = (UnitPrice*1.10)
WHERE CategoryID=1;


/*
10.	Cambias el ContactName de la tabla Customers a Claudia Rojas en aquellos 
registros donde el país sea igual a México.
*/

USE Northwind
UPDATE Customers SET ContactName = 'Claudia Rojas'
WHERE Country='Mexico'
