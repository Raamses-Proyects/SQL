/*4. Obtener la diferencia en a�os entre fecha actual y la fecha de las �rdenes de las 
ventas de los libros (tabla: Sales)*/

SELECT [ord_date], DateDiff (YYYY, [ord_date], '20180611') FROM [dbo].[sales]

/*Esta consulta de debi hacer asi*/
SELECT [ord_date], DateDiff (YYYY, [ord_date], GETDATE()) AS 'A�os de diferencia' FROM [dbo].[sales]