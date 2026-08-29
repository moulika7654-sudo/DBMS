CREATE DATABASE FOOD_SHOP;
USE FOOD_SHOP;

CREATE TABLE Category(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE Product(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    CategoryID INT,
    FOREIGN KEY(CategoryID) REFERENCES Category(CategoryID)
);

INSERT INTO Category VALUES
(1,'Pizza'),
(2,'Burger'),
(3,'Drinks');

INSERT INTO Product VALUES
(101,'Chicken Pizza',300,10,1),
(102,'Veg Pizza',250,15,1),
(103,'Chicken Burger',180,20,2),
(104,'Coke',60,30,3);

SELECT * FROM Category;
SELECT * FROM Product;

UPDATE Product
SET Price=200, Stock=25
WHERE ProductID=103;

DELETE FROM Product
WHERE ProductID=104;

SELECT * FROM Product
ORDER BY CategoryID;