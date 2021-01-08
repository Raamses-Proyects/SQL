/*6. Obtener la antigüedad en meses de los empleados hasta la fecha actual (tabla:employee)*/

SELECT [emp_id],[hire_date] AS 'Fecha de contratación', DateDiff (mm, [hire_date], GETDATE()) AS'Antiguedad del empleado en Meses' 
FROM [dbo].[employee]

