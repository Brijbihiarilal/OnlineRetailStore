-- 1. Show all customers from India
SELECT * FROM Customers WHERE Country = 'India';

-- 2. Find total number of orders
SELECT COUNT(*) AS TotalOrders FROM Orders;

-- 3. Show products with stock less than 20
SELECT ProductName, Stock FROM Products WHERE Stock < 20;

-- 4. Top 3 most expensive products
SELECT ProductName, Price FROM Products ORDER BY Price DESC LIMIT 3;

-- 5. Show all orders placed by Rahul Sharma
SELECT o.OrderID, o.OrderDate, o.Status
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.FirstName = 'Rahul' AND c.LastName = 'Sharma';

-- 6. Find the product that has been ordered the most
SELECT p.ProductName, SUM(od.Quantity) AS TotalOrdered
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalOrdered DESC
LIMIT 1;

-- 7. Find average order value
SELECT AVG(Amount) AS AvgOrderValue FROM Payments;

-- 8. List customers who never placed an order
SELECT FirstName, LastName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
