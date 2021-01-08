/*5.Conocer el nombre del empleado (lastname ) y su clave (employeeid) 
que realizó mas ordenes (tabla: orders).*/

SELECT [dbo].[Employees].[LastName] AS 'NOMBRE',[Employees].EmployeeID AS 'ID de Empleado', COUNT([Employees].EmployeeID) AS 'NUMERO DE ORDENES POR EMPLEADO'
FROM [dbo].[Orders] INNER JOIN [dbo].[Employees]
ON [dbo].[Orders].EmployeeID = [dbo].[Employees].EmployeeID
GROUP BY [Employees].EmployeeID,  [dbo].[Employees].[LastName]
ORDER BY COUNT([Employees].EmployeeID) desc

/*Esta esta echa de otra forma pero funciona igual*/
SELECT [dbo].[Employees].FirstName as 'Nombre', [dbo].[Employees].LastName as 'Apellido', [dbo].[Employees].EmployeeID as 'Id Empleado', COUNT([dbo].[Orders].EmployeeID) as 'Numero de Ordenes de Emplelado'
FROM [dbo].[Orders] INNER JOIN [dbo].[Employees]
ON [dbo].[Orders].EmployeeID = [dbo].[Employees].EmployeeID
Group By [dbo].[Employees].FirstName,  [dbo].[Employees].LastName, [dbo].[Employees].EmployeeID ,[dbo].[Orders].EmployeeID
Order By COUNT([dbo].[Orders].EmployeeID) desc

/*Usando el TOP() para mostrar solo un dato o los que se pidan*/
SELECT TOP(1) COUNT([OrderDate])AS 'Empleando con mas ordenes', [LastName], [dbo].[Employees].[EmployeeID]
FROM [dbo].[Employees] INNER JOIN [dbo].[Orders]
ON [dbo].[Employees].EmployeeID=[dbo].[Orders].EmployeeID
GROUP BY [LastName], [dbo].[Employees].[EmployeeID]
ORDER BY COUNT([OrderDate]) DESC



--Ejemplos de maestra
select top(1) count (*) as C,orders.EmployeeID, employees.FirstName 
 from orders inner join employees 
 on orders.EmployeeID=Employees.EmployeeID 
 group by orders.EmployeeID, Employees.FirstName 
 order by C desc

 Select Employees.FirstName, Employees.EmployeeID, count(orderid) 
 from dbo.Orders inner join employees 
 on Employees.EmployeeID=orders.EmployeeID 
 group by employees.EmployeeID, Employees.FirstName 
 having count(orderid)= (select max(C) from (select count (OrderID) as C from orders group by EmployeeID) as TablaNueva)