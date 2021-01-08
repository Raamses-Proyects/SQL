/*2. Muestre el nombre de las tiendas, el stor_id que no tengan ventas (tabla sales)  */

SELECT [dbo].[stores].stor_name, [dbo].[stores].stor_id FROM [dbo].[stores]
WHERE [dbo].[stores].stor_id=(SELECT [dbo].[sales].stor_id FROM [dbo].[sales]
WHERE [dbo].[sales].qty=NULL)