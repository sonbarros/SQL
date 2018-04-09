-- SQL NULL Funções

-- Suponha-se que a coluna "UnidadesPedidas" é opcional, e pode conter valores nulos.

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;

-- No exemplo acima, se qualquer um dos valores "UnitsOnOrder" são NULL, o resultado será nulo.


-- SOLUÇÃO 

-- O MySQL IFNULL () função permite retornar um valor alternativo se uma expressão é NULL:
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products

