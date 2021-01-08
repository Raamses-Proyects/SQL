/*Ejercicio 1 echo por maestra*/
if exists ( select * FROM Products where UnitsInStock<ReorderLevel) 
(select Products.ProductID, Products.UnitsInStock, Products.ReorderLevel,
(Products.UnitsInStock-Products.ReorderLevel) as Deficiencia 
from Products where UnitsInStock<ReorderLevel ) 
else select 'no hay productos por ordenar'