/*
1.	Seleccionar aquellos productos que su categoría sea ‘Beverages’. 
*/
SELECT * FROM [dbo].[Products]
WHERE [CategoryID]=(SELECT [CategoryID] FROM [dbo].[Categories]
WHERE [CategoryName]='Beverages')




