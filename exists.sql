/*

  The SQL EXISTS Operator
  * The EXISTS operator is used to test for the existence of any record in a subquery.
  * The EXISTS operator returns true if the subquery returns one or more records.

*/

-- The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE SupplierId = Suppliers.supplierId AND Price < 20);

-- fonte w3school