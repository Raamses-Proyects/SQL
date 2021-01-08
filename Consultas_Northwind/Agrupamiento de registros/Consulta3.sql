/*3. Seleccionar el nombre del producto (productname, tabla: Products), la cantidad mínima vendida 
(quantity, tabla: [Order details])  por producto (productid).*/

SELECT [dbo].[Products].ProductID, [dbo].[Products].ProductName, MIN([dbo].[Order Details].Quantity) 
FROM [dbo].[Products] INNER JOIN [dbo].[Order Details] 
ON [dbo].[Products].ProductID=[dbo].[Order Details].ProductID
GROUP BY [dbo].[Products].ProductID, [dbo].[Products].ProductName, [dbo].[Order Details].Quantity 