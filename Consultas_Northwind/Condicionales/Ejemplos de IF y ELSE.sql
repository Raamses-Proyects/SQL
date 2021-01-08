/*Ejemplo de IF*/
IF (SELECT [UnitPrice] FROM [dbo].[Products] WHERE [ProductID]=9) <50
SELECT 'Barato' AS PreciodeProducto
else
SELECT 'Mut Caro' AS PreciodeProducto

/*Ejemplo de CASE*/
SELECT [UnitPrice],
CASE 
WHEN [UnitPrice] > 0 AND [UnitPrice] <=20 THEN 'Barato'
WHEN [UnitPrice]>20 AND [UnitPrice]<=30 THEN 'Caro'
ELSE 'Muy Caro'
END AS TipoDePrecio
FROM [dbo].[Products]