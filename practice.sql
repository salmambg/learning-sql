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

-- SQL SUM() Function
SELECT SUM(Quantity)
FROM OrderDetails;

-- Syntax:
SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- Sum with an expression
SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;

-- LEFT JOIN SYNTAX:
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

-- SQL AVERAGE:
SELECT avg(Price)
FROM Products;

-- Syntax:
SELECT AVG(Column_name)
From table_name
WHERE condition;
-- Example:
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

-- SQL LIKE OPERATOR:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

-- SYNTAX:
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
-- WILDCARD (_) REPRESENT A SINGLE CHARACTER
SELECT * FROM Customers
WHERE city LIKE 'L_nd__';

-- The % Wildcard (return all cities contain L)
SELECT * FROM Customers
WHERE city LIKE '%L%';
-- starts with a or starts  with b
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';
-- STARTS WITH
SELECT * FROM Customers
WHERE CustomerName LIKE 'La%';
-- ENDS WITH
SELECT * FROM Customers
WHERE CustomerName LIKE '%b';
-- starts with b or ends with s
SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s'

-- Contains (a specific letter or phrase, add the % both before and after the letter or phrase)
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

-- Combine wildcards: Return all customers that starts with "a" and are at least 3 characters in length:
SELECT * FROM customers
WHERE Customername LIKE  'a___%';

--  - Wildcard
-- The - wildcard allows you to specify a range of characters inside the [] wildcard.
-- Example

SELECT * FROM Customers
WHERE CustomerName LIKE '[a-f]%';
-- Return all customers starting with "a", "b", "c", "d", "e" or "f":

-- [] Wildcard
-- The [] wildcard returns a result if any of the characters inside gets a match.
-- Example
-- Return all customers starting with either "b", "s", or "p":

SELECT * FROM Customers
WHERE CustomerName LIKE '[bsp]%';

-- SQL IN Operator
SELECT * FROM Customers
WHERE Country IN('France','Germany', 'Uk');
--  or NOT IN
SELECT * FROM Customers
WHERE Country  NOT IN('France','Germany', 'Uk');


-- SElECT in
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);
-- return all records from the main query that are present in the result of the subquery.

-- SQL BETWEEN OPERATOR
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

-- BETWEEN with IN:selects all products with a price between 10 and 20. In addition, the CategoryID must be either 1,2, or 3:
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);

-- BETWEEN Text Values(return all the value values between this two string)
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
-- BETWEEN DATES
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;

-- ALIAS OR AS
SELECT CustomerID AS ID
FROM Customers;

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;
-- without alias
SELECT orders.OrderID, orders.OrderDate , customers.CustomerName
FROM Customers, Order
WHERE customers.CustomerName ='Around the horn' AND customers.CustomerID = orders.CustomerID;

-- SQL joins:that selects records that have matching values in both tables:
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

