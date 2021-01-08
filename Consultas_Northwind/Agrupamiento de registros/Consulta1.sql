/* 1. Seleccionar (tabla:Products) el precio (unitprice) mayor por categoría (categoryid). */

select max(dbo.Products.UnitPrice), CategoryID from Products
group by Products.CategoryID