/*2. Seleccionar  (tabla: Sales) el id del almacén, el numero de orden, el mes de la fecha de la 
orden y el año de aquellas ventas del title_id sea igual a TC3218.*/

SELECT [stor_id], [ord_num], DATENAME(MONTH,[ord_date]), DATENAME(YEAR,[ord_date]), [title_id] FROM [dbo].[sales] 
WHERE [title_id]='TC3218'
