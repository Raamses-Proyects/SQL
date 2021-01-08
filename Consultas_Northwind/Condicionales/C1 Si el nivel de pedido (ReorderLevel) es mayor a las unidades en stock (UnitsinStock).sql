/*1. Si el nivel de pedido (ReorderLevel) es mayor a las unidades en stock (UnitsinStock) agregar
 una columna que contenga la leyenda “Urge realizar pedido de mercancía”*/

 SELECT [ProductID],[ProductName],
 CASE
 WHEN [ReorderLevel] > [UnitsInStock] THEN 'Urge realizar pedido de mercancía'
 END AS 'Se debe de hacer pedido en'
 FROM [dbo].[Products]

