/*6. Obtener la antig�edad en meses de los empleados hasta la fecha actual (tabla:employee)*/

SELECT [emp_id],[hire_date] AS 'Fecha de contrataci�n', DateDiff (mm, [hire_date], GETDATE()) AS'Antiguedad del empleado en Meses' 
FROM [dbo].[employee]

