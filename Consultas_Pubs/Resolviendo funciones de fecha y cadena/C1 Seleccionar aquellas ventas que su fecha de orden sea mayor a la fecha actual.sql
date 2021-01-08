/*1. Seleccionar aquellas ventas (tabla:Sales) que su fecha de orden sea mayor a la fecha actual.*/

SELECT [dbo].[sales].ord_date FROM [dbo].[sales]
WHERE [dbo].[sales].ord_date>GETDATE()