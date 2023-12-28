-- SQL entry:
SELECT * FROM Cuatomers;

-- SQL SELECT:
SELECT CustomerNAME FROM Customers;
-- Syntax:
SELECT column1, column2, ...
FROM table_name;

--  SQL SELECT DISTINCT: a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values;
SELECT DISTINCT Country FROM Customers;
-- Syntax:
SELECT DISTINCT column1, column2, ...
FROM table_name;

-- SQL WHERE:
SELECT * FROM Customers
WHERE Country = 'MEXICO';
-- Syntax:
SELECT column1, column2,...
FROM table_name;
WHERE condition;

-- SQL ORDER BY:
SELECT * FROM Products
ORDER BY Price;
-- Syntax:
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;



