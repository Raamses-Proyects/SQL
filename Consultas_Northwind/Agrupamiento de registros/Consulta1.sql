/* 1. Seleccionar (tabla:Products) el precio (unitprice) mayor por categor�a (categoryid). */

select max(dbo.Products.UnitPrice), CategoryID from Products
group by Products.CategoryID