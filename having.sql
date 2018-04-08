/*
  The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.
*/

/* The following SQL statement lists the number of customers in each country. 
Only include countries with more than 5 customers: */

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

/*
  The following SQL statement lists the number of customers in each country, 
  sorted high to low (Only include countries with more than 5 customers): */

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

/* Fonte: w3school */

/* observe que para o codigo abaixo poderia utilizar o INNER JOIN que obteriamos o mesmo resultado */
select Employees.LastName, orders.EmployeeID, count(orders.EmployeeID) as NumberOfOrders from 
orders left join Employees on orders.EmployeeID = Employees.EmployeeID 
group by orders.EmployeeID 
having NumberOfOrders > 10 
order by NumberOfOrders DESC;

/* com a clausula WHERE */

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;
