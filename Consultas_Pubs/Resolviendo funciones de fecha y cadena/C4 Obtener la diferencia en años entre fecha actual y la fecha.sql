/*4. Obtener la diferencia en años entre fecha actual y la fecha de las órdenes de las 
ventas de los libros (tabla: Sales)*/

SELECT [ord_date], DateDiff (YYYY, [ord_date], '20180611') FROM [dbo].[sales]

/*Esta consulta de debi hacer asi*/
SELECT [ord_date], DateDiff (YYYY, [ord_date], GETDATE()) AS 'Años de diferencia' FROM [dbo].[sales]