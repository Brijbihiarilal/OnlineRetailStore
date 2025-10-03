-- Customers
INSERT INTO Customers (FirstName, LastName, Email, Phone, City, Country) VALUES
('Rahul', 'Sharma', 'rahul.sharma@email.com', '9876543210', 'Delhi', 'India'),
('Priya', 'Verma', 'priya.verma@email.com', '9898989898', 'Mumbai', 'India'),
('Amit', 'Singh', 'amit.singh@email.com', '9000000000', 'Bangalore', 'India'),
('John', 'Doe', 'john.doe@email.com', '8888888888', 'New York', 'USA'),
('Emma', 'Watson', 'emma.watson@email.com', '7777777777', 'London', 'UK');

-- Products
INSERT INTO Products (ProductName, Category, Price, Stock) VALUES
('Laptop', 'Electronics', 55000.00, 10),
('Smartphone', 'Electronics', 30000.00, 20),
('Headphones', 'Accessories', 2000.00, 50),
('T-shirt', 'Clothing', 700.00, 100),
('Shoes', 'Footwear', 2500.00, 30);

-- Orders
INSERT INTO Orders (CustomerID, OrderDate, Status) VALUES
(1, '2025-09-01', 'Completed'),
(2, '2025-09-02', 'Pending'),
(3, '2025-09-05', 'Completed'),
(1, '2025-09-10', 'Completed');

-- OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 4, 3),
(4, 5, 2);

-- Payments
INSERT INTO Payments (OrderID, Amount, PaymentDate, Method) VALUES
(1, 59000.00, '2025-09-01', 'Credit Card'),
(3, 2100.00, '2025-09-05', 'UPI'),
(4, 5000.00, '2025-09-10', 'Cash');
