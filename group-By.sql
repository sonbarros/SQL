/* group by */

/*
  É como agrupar por categoria 
 */

SELECT ExpedidorID, COUNT(ExpedidorID)FROM Pedidos GROUP BY ExpedidorID;

/*
  Vou obter o ExpedidorName em outra tabela 
*/

SELECT Pedidos.ExpedidorID, COUNT(Pedidos.ExpedidorID), ExpedidorName FROM Pedidos LEFT JOIN EXPEDIDOR ON Pedidos.ExpedidorID = Expedidor.ExpedidorID GROUP BY Pedidos.ExpedidorID;

/* Fonte: w3school */

/* Mais exemplos */

SELECT Shippers.ShipperName, Shippers.ShipperId, COUNT(Orders.OrderID) AS NumberOfOrders, MAX(Orders.OrderDate) FROM 
Orders LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

/*
  Obs.: The GROUP BY statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the result-set
  by one or more columns.
*/




