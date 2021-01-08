/*
6) Seleccionar el id del empleado (employee:emp_id),el id del puesto (jobs:job_id). 
La descripción del puesto (jobs:job_desc), de todos los puestos incluyendo aquellos 
puestos que no se encuentren asignados a un empleado. Left join. (Son 44 registros como resultado)
*/

SELECT [dbo].[employee].emp_id as 'Id de Empleado', [dbo].[jobs].job_id as 'Id de Puesto', [dbo].[jobs].job_desc as 'Descripcion de Puesto'
FROM [dbo].[jobs] LEFT JOIN [dbo].[employee]
ON [dbo].[jobs].job_id=[dbo].[employee].job_id