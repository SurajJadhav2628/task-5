-- ***************************************************** Task 5: SQL JOINS *****************************************************
USE Ecommerce;

-- INNER JOIN: Show order info with customer names
SELECT Orders.order_id, Customers.name AS customer_name, Orders.order_date
FROM Orders
INNER JOIN Customers ON Orders.customer_id = Customers.customer_id;

-- LEFT JOIN: All customers and their orders (if any)
SELECT Customers.name, Orders.order_id, Orders.order_date
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT JOIN: All orders and customer names (may be NULL) – works in MySQL
SELECT Orders.order_id, Orders.order_date, Customers.name AS customer_name
FROM Orders
RIGHT JOIN Customers ON Orders.customer_id = Customers.customer_id;

-- FULL JOIN ( using UNION)
SELECT Customers.name, Orders.order_id, Orders.order_date
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id

UNION

SELECT Customers.name, Orders.order_id, Orders.order_date
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
