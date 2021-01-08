/*2.	Seleccionar  (tabla:Products) el inventario promedio por  proveedor (supplierid).
Nota: (para obtener el inventario promedio multiplica unitprice por unitsinstock)
*/

SELECT [SupplierID], AVG([UnitPrice]*[UnitsInStock]) AS 'Inventario Promedio' FROM [dbo].[Products] 
GROUP BY [dbo].[Products].[SupplierID]