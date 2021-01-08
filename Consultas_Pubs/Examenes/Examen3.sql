/*3. Muestre el stor_id y la qty  de la tabla ventas (sales) de aquellas tiendas que tengan ventas  mayores o igual 
a la máxima cantidad vendida de la tienda 7131. */

SELECT [stor_id], [qty] FROM [dbo].[sales]
WHERE [qty]>=(SELECT MAX([qty]) FROM [dbo].[sales]
WHERE [stor_id]=7131)

