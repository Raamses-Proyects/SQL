/*GETDATE es para mostrar la fecha actual*/
SELECT GETDATE()

/*Devuelve una cadena de caracteres que representa la parte de la fecha especificada de la fecha especificada*/
/*Muestra el ordersID, el orderdate y el mes(MONTH), la semana(WEEK), o el dia(WEEKDAY) del la fechas que tenga la tabla*/
SELECT Orders.OrderID, orderdate, Datename(MONTH, Orders.OrderDate) from Orders /*Aqui se muestra en mes seleccionado*/
SELECT Orders.OrderID, orderdate, Datename(WEEK, Orders.OrderDate) from Orders/*Aqui se muestra la semana en la que va el año*/
SELECT Orders.OrderID, orderdate, Datename(WEEKDAY, Orders.OrderDate) from Orders/*Aqui se muestra el dia seleccionado*/


/*Devuelde la parte de la fecha u hora indicada. Sintaxis
Datepart(Valoradevolver, fecha
mm=Mes, hh=Hora, mi=minuto)*/
SELECT DATEPART(mm, orderdate) from Orders/*Aqui muestra el numero del mes seleccionado*/
SELECT DATEPART(hh, orderdate) from Orders/*Esta es para mostrar la hora */
SELECT DATEPART(MI, orderdate) from Orders/*Esta es para mostrar el minuto */
SELECT DATEPART(mm, '20180919') from Orders/*De esta forma se muestra el mes de la fecha que se ponga*/
SELECT DATEPART(mm, GETDATE())/*De esta forma se muestra el mes de la fecha actual*/
SELECT DATEPART(mi, GETDATE())

/*Dateadd(datepart, number, date) Se añade un numero a la fecha puesta
datepart es el formato de lo que queremos añadir(dd, mm, year)
number es el numero que queremos incrementar a la fecha expuesta
Consultas para agragar cierta cantidad de años(YEAR), dias(dd) o meses(mm) a alguna fecha*/
SELECT orderdate, DATEADD(YEAR, 7, orderdate) from Orders/*Aqui se le agregaron 7 años a todos los orderdate*/
SELECT orderdate, DATEADD(dd, 7, orderdate) from Orders/*Aqui se le agregaron 7 dias al los orderdate*/
SELECT orderdate, DATEADD(mm, 7, orderdate) from Orders/*Aqui se le agregaron 7 meses al los orderdate*/



/*DateDiff
Devuelve la diferencia entre dos fechas en el intervalo que le indiquemos*/
/*Desde el orderdate a la fecha actual En Meses(GETDATE=FECHA Actual)*/
SELECT orderdate, DateDiff (mm, orderdate, GETDATE()) FROM Orders
/*En Años*/
SELECT orderdate, DateDiff (YYYY, orderdate, GETDATE()) FROM Orders 
/*En Dias*/
SELECT orderdate, DateDiff (dd, orderdate, GETDATE()) FROM Orders
/*En estas dos consultas se cambian la fecha actual por una especifica*/
SELECT orderdate, DateDiff (mm, orderdate, '20140614') FROM Orders
SELECT orderdate, DateDiff (dd, orderdate, '2014/06/14') FROM Orders


