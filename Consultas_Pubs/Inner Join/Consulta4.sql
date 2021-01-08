/*
4.	Mostrar los títulos de las publicaciones y el nombre y apellido de su autor  donde su 
fecha de publicación sea del mes de junio de 1991.
*/


use pubs
Select dbo.titles.title, authors.au_lname, titles.pubdate
from titles inner join titleauthor on titles.title_id=titleauthor.title_id
inner join authors on titleauthor.au_id=authors.au_id
where titles.pubdate between '19910601' and '19910630'