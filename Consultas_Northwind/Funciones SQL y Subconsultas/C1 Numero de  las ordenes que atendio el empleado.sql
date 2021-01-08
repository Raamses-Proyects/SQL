/*1. Obtén el numero de  las ordenes que atendió el empleado con el id igual a 4*/

SELECT [dbo].[Orders].[EmployeeID], COUNT([dbo].[Orders].EmployeeID) AS 'Numero de ordenes que Atendio' FROM [dbo].[Orders]
Group by [dbo].[Orders].EmployeeID
Having [dbo].[Orders].EmployeeID=4
Order By [dbo].[Orders].EmployeeID desc


/*Otra forma de hacer el problema con SubConsulta*/
SELECT COUNT([dbo].[Orders].EmployeeID) FROM [dbo].[Orders]
WHERE [dbo].[Orders].EmployeeID IN (SELECT [dbo].[Orders].EmployeeID FROM [dbo].[Orders]
WHERE [dbo].[Orders].EmployeeID=4)


/*Todas las OrderID que hiso el empleado 4*/
SELECT [OrderID], [EmployeeID] FROM [dbo].[Orders]
WHERE [EmployeeID]=4