

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;


-- SQL UNION With WHERE

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


-- SQL UNION ALL 

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

/* 
  A diferença entre union e union all é que o primeiro apresenta apenas valores distintos,
  o segundo apresenta tambem as repeticoes entre as tableas
*/