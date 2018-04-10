/*
  OPERADOR IN
*/

-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- The following SQL statement selects all customers that are NOT located in "Germany", "France" or "UK":
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- with SQL statement 

SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers); -- observe que vai retornar uma lista de paises