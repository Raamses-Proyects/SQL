/*2. Si el flete (Freight) es mayor a 100  y la ShipVia es 1, desplegar una columna sugiriendo 
que cambie de Compañía de Envio*/

SELECT [Freight],[ShipVia],
CASE 
WHEN [Freight] > 100 AND [ShipVia]=1 THEN 'Cambie de Compañia de Envio'
END AS 'Se le Sugiere que'
FROM [dbo].[Orders]


