/*
3.	Con inner join. Mostrar el nombre del cliente (companyname), el nombre (Lastname, firstname)  del empleado 
(EMPLOYEES) de todos los pedidos (ORDERS) que fueron ordenados (orderdate) después del 01 de agosto del 96. 
*/

SELECT [dbo].[Customers].CompanyName as 'Nombre de Cliente', [dbo].[Employees].LastName as 'Apellido', [dbo].[Employees].FirstName as 'Nombre', OrderDate
FROM [dbo].[Orders] INNER JOIN [dbo].[Customers]
ON [dbo].[Orders].CustomerID=[dbo].[Customers].CustomerID
INNER JOIN [dbo].[Employees] ON [dbo].[Employees].EmployeeID=[dbo].[Orders].EmployeeID
WHERE [dbo].[Orders].OrderDate>'19960801'