/* Ejemplo de uso de GROUP BY*/
USE Northwind
SELECT AVG ([UnitPrice]), [CategoryID] 
FROM [dbo].[Products]
group by CategoryID
HAVING AVG([UnitPrice])>20

