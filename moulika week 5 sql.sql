USE FOOD_SALES_SHOP;

DROP TABLE IF EXISTS Payment;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20)
);

INSERT INTO Payment VALUES
(601, 501, 'UPI',  '2026-09-01', 500.00,  'SUCCESSFUL'),
(602, 502, 'CARD', '2026-09-02', 750.00,  'SUCCESSFUL'),
(603, 503, 'CASH', '2026-09-03', 600.00,  'FAILED'),
(604, 504, 'UPI',  '2026-09-04', 900.00,  'SUCCESSFUL'),
(605, 505, 'CARD', '2026-09-05', 450.00,  'SUCCESSFUL'),
(606, 506, 'CASH', '2026-09-06', 1200.00, 'SUCCESSFUL'),
(607, 507, 'UPI',  '2026-09-07', 350.00,  'FAILED'),
(608, 508, 'CARD', '2026-09-08', 800.00,  'SUCCESSFUL'),
(609, 509, 'CASH', '2026-09-09', 650.00,  'SUCCESSFUL'),
(610, 510, 'UPI',  '2026-09-10', 1000.00, 'SUCCESSFUL');

SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'SUCCESSFUL'
WHERE PaymentID = 603;

UPDATE Payment
SET PaymentStatus = 'SUCCESSFUL'
WHERE PaymentID = 607;

SELECT * FROM Payment
WHERE PaymentID IN (603, 607);

SELECT * FROM Payment
WHERE PaymentStatus = 'SUCCESSFUL';

SELECT * FROM Payment
WHERE PaymentStatus = 'FAILED';

SELECT * FROM Payment
WHERE PaymentMode = 'UPI';

SELECT * FROM Payment
WHERE PaymentMode = 'CARD';

SELECT * FROM Payment
WHERE PaymentMode = 'CASH';

SELECT PaymentMode,
       COUNT(*) AS NumberOfTransactions
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode,SUM(PaymentAmount) AS TotalAmountReceived
FROM Payment
WHERE PaymentStatus = 'SUCCESSFUL'
GROUP BY PaymentMode;