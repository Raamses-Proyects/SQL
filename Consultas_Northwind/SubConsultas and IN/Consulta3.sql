/*
3.	Seleccionar aquellos empleados (employees) que tengan el mismo Title de Nancy
*/


SELECT [FirstName] FROM [dbo].[Employees] 
WHERE [Title]=(SELECT [Title] FROM [dbo].[Employees] WHERE [FirstName]='Nancy')


select [Title],[FirstName]
from [dbo].[Employees]
where [FirstName]='Nancy'


select * from [dbo].[Employees]
where [Title]='Sales Representative'


