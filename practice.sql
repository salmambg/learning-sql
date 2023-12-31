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

-- SQL AND Operator
SELECT * FROM Customers
WHERE countryName -'Spain' AND CustomerName like 'G%';
-- Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

-- Where all condition must be true
SELECT * FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin'
AND PostalCode > '12000';

-- BADMAS
SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

--Without parenthesis (bracket), the select statement will return all customers from Spain that starts with a "G",
-- plus all customers that starts with an "R", regardless of the country value
SELECT * FROM Customers
WHERE Country = 'Spain'
AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';

-- SQL OR
SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

-- SQL NOT Operator== NOY LIKE,NOT Between, NOT IN, NOT GREATER THAN , NOT LESS THAN
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';
-- Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

-- SQL INSERT INTO Statement: . adding values for all the columns or specific columns to create a new row of the table,
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

-- Syntax: for  specified columns
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- for all columns by order
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

-- Insert Multiple Rows
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

-- SQL null or not null value
-- Syntax:
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

-- SQL Update
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;
-- Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ..
WHERE condition;

-- SQL DELETE Statement
DELETE from customers WHERE country = 'Mexico';
-- Syntax:
DELETE FROM table_name where condition;

-- SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause
SELECT TOP 3 * FROM Customers;
SELECT * FROM Customers LIMIT 3;
SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;

-- ADD a WHERE CLAUSE
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

-- ADD the ORDER BY Keyword
SELECT TOP 3 * FROM Customers
ORDER BY CustomerName DESC;

-- SQL MIN() and MAX() Functions
SELECT MIN(Price)
FROM Products;
SELECT MAX(Price)
FROM Products;

-- Syntax:
SELECT MIN/MAX(column_name)
FROM table_name
WHERE condition;

-- SQL COUNT() Function
-- the total number of products in the Products table:
SELECT COUNT(*)
FROM Products;
-- Syntax:
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;


