/* Syntax */

SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

/*
  Cruza a tabela com ela mesma
*/

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City 
ORDER BY A.City;


/* Fonte: w3school*/

/* 
  Agora podemos dizer também, que apenas os CustomerName que iniciam
  com a letra 'a' deve atender a pesquisa. veja abaixo.
*/

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE (A.CustomerID <> B.CustomerID
AND A.City = B.City) AND A.CustomerName LIKE "a%"
ORDER BY A.City;