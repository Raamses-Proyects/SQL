/*
1.	Seleccionar aquellos productos que su categor�a sea �Beverages�. 
*/
SELECT * FROM [dbo].[Products]
WHERE [CategoryID]=(SELECT [CategoryID] FROM [dbo].[Categories]
WHERE [CategoryName]='Beverages')




