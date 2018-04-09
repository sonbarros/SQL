--LEFT JON 

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- Fonte: w3school

-- Uma opção é clocar apelido nas tabelas (abaixo)

SELECT A.CustomerName, B.OrderID
FROM Customers A
LEFT JOIN Orders B ON A.CustomerID = B.CustomerID
ORDER BY A.CustomerName;