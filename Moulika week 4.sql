USE FOOD_SALES_SHOP;


CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    OrderStatus VARCHAR(20)
);


CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);


INSERT INTO Orders
(OrderID, CustomerName, OrderDate, TotalAmount, OrderStatus)
VALUES
(501, 'ANU', '2026-09-01', 500.00, 'Delivered'),
(502, 'RAJEE', '2026-09-02', 750.00, 'Pending'),
(503, 'DHIVYA', '2026-09-03', 600.00, 'Shipped'),
(504, 'POOJA', '2026-09-04', 900.00, 'Delivered'),
(505, 'HEMA', '2026-09-05', 450.00, 'Pending'),
(506, 'ARUN', '2026-09-06', 1200.00, 'Shipped'),
(507, 'MEENA', '2026-09-07', 350.00, 'Delivered'),
(508, 'KARTHIK', '2026-09-08', 800.00, 'Pending'),
(509, 'NITHYA', '2026-09-09', 650.00, 'Shipped'),
(510, 'VISHAL', '2026-09-10', 1000.00, 'Delivered');


INSERT INTO Order_Details
(OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 501, 101, 2, 180.00),
(2, 502, 103, 3, 160.00),
(3, 503, 104, 2, 140.00),
(4, 504, 105, 3, 200.00),
(5, 505, 106, 2, 220.00),
(6, 506, 107, 4, 190.00),
(7, 507, 109, 2, 200.00),
(8, 508, 110, 3, 60.00),
(9, 509, 111, 2, 250.00),
(10, 510, 112, 3, 320.00);


SELECT * FROM Orders;

SELECT * FROM Order_Details;


UPDATE Orders
SET OrderStatus = 'Shipped'
WHERE OrderID = 502;


UPDATE Orders
SET OrderStatus = 'Delivered'
WHERE OrderID = 503;


SELECT * FROM Orders
ORDER BY CustomerName, OrderDate;


SELECT * FROM Orders
WHERE CustomerName = 'ANU'
ORDER BY OrderDate;


SELECT * FROM Orders
WHERE OrderStatus = 'Pending';


SELECT * FROM Orders
WHERE OrderStatus = 'Shipped';


SELECT * FROM Orders
WHERE OrderStatus = 'Delivered';


SELECT CustomerName, COUNT(*)
FROM Orders
GROUP BY CustomerName;


SELECT CustomerName, SUM(TotalAmount)
FROM Orders
GROUP BY CustomerName;


SELECT * FROM Order_Details
WHERE OrderID = 501;


SELECT * FROM Order_Details
WHERE ProductID = 101;


SELECT OrderID, SUM(Quantity * UnitPrice) AS OrderTotal
FROM Order_Details
GROUP BY OrderID;