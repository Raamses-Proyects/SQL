/*
2.	Mostrar el nombre del editor, el titulo de la publicación y la cantidad que se han
 vendido del editor con ID igual a 0736 o  1622.
*/

SELECT pub_name, title, qty from publishers inner join titles  
on publishers.pub_id=titles.pub_id inner join sales
on sales.title_id=titles.title_id
where publishers.pub_id=0736 or publishers.pub_id=1622