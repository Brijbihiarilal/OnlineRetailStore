-- Monthly revenue (Sept 2025)
SELECT MONTH(PaymentDate) AS Month, SUM(Amount) AS Revenue
FROM Payments
WHERE YEAR(PaymentDate) = 2025
GROUP BY MONTH(PaymentDate);

-- Category with highest sales
SELECT p.Category, SUM(od.Quantity * p.Price) AS TotalSales
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalSales DESC
LIMIT 1;

-- Rank customers by total spending
SELECT c.FirstName, c.LastName, SUM(p.Amount) AS TotalSpent,
       RANK() OVER (ORDER BY SUM(p.Amount) DESC) AS RankPosition
FROM Payments p
JOIN Orders o ON p.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID;

-- Orders pending for more than 7 days
SELECT OrderID, OrderDate, Status
FROM Orders
WHERE Status = 'Pending'
AND DATEDIFF(CURDATE(), OrderDate) > 7;
