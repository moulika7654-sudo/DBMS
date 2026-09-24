USE FOOD_SALES_SHOP;


CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);


INSERT INTO Seller VALUES
(201,"FRESH FOOD SELLERS","9876500001","freshfood@gmail.com","Chennai"),
(202,"FOOD MART","9876500002","foodmart@gmail.com","Madurai"),
(203,"QUALITY FOODS","9876500003","qualityfoods@gmail.com","Coimbatore"),
(204,"CITY FOOD SELLERS","9876500004","cityfood@gmail.com","Salem"),
(205,"FRESH MART","9876500005","freshmart@gmail.com","Trichy"),
(206,"FOOD WORLD","9876500006","foodworld@gmail.com","Chennai"),
(207,"DAILY FOODS","9876500007","dailyfoods@gmail.com","Madurai"),
(208,"FOOD ZONE","9876500008","foodzone@gmail.com","Coimbatore"),
(209,"FRESH WORLD","9876500009","freshworld@gmail.com","Salem"),
(210,"FOOD STORE","9876500010","foodstore@gmail.com","Trichy"),
(211,"TASTY FOODS","9876500011","tastyfoods@gmail.com","Chennai"),
(212,"FOOD HOUSE","9876500012","foodhouse@gmail.com","Madurai"),
(213,"FRESH MART","9876500013","freshmart2@gmail.com","Coimbatore"),
(214,"FOOD CARE","9876500014","foodcare@gmail.com","Salem"),
(215,"FOOD SUPPLIERS","9876500015","foodsuppliers@gmail.com","Trichy"),
(216,"DAILY MART","9876500016","dailymart@gmail.com","Chennai"),
(217,"FRESH SELLERS","9876500017","freshsuppliers@gmail.com","Madurai"),
(218,"FOOD EXPRESS","9876500018","foodexpress@gmail.com","Coimbatore"),
(219,"FOOD STORE","9876500019","foodstore2@gmail.com","Salem"),
(220,"CITY FOOD","9876500020","cityfood@gmail.com","Trichy"),
(221,"PREMIUM FOODS","9876500021","premiumfoods@gmail.com","Chennai"),
(222,"QUALITY MART","9876500022","qualitymart@gmail.com","Madurai"),
(223,"FOOD EXPRESS","9876500023","foodexpress2@gmail.com","Coimbatore"),
(224,"FOOD CARE","9876500024","foodcare2@gmail.com","Salem"),
(225,"BEST FOODS","9876500025","bestfoods@gmail.com","Trichy");

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);


INSERT INTO Inventory VALUES
(301,101,201,"AVAILABLE",25),
(302,102,202,"AVAILABLE",15),
(303,103,203,"AVAILABLE",10),
(304,104,204,"AVAILABLE",12),
(305,105,205,"AVAILABLE",30),
(306,106,206,"AVAILABLE",20),
(307,107,207,"UNAVAILABLE",0),
(308,109,208,"AVAILABLE",18),
(309,110,209,"AVAILABLE",15),
(310,111,210,"AVAILABLE",30),
(311,112,211,"UNAVAILABLE",0),
(312,113,212,"AVAILABLE",15),
(313,114,213,"AVAILABLE",20),
(314,115,214,"UNAVAILABLE",0),
(315,116,215,"AVAILABLE",15),
(316,117,216,"AVAILABLE",12),
(317,118,217,"UNAVAILABLE",0),
(318,119,218,"AVAILABLE",10),
(319,120,219,"AVAILABLE",20),
(320,126,220,"UNAVAILABLE",0),
(321,127,221,"AVAILABLE",10),
(322,128,222,"AVAILABLE",5),
(323,129,223,"UNAVAILABLE",0),
(324,130,224,"AVAILABLE",15),
(325,101,225,"AVAILABLE",50);

SELECT * FROM Inventory;


UPDATE Inventory
SET Stock=20,
    AvailabilityStatus="AVAILABLE"
WHERE InventoryID=307;

SELECT * FROM Inventory
WHERE InventoryID=307;


UPDATE Inventory
SET Stock=0,
    AvailabilityStatus="UNAVAILABLE"
WHERE InventoryID=302;

SELECT * FROM Inventory
WHERE InventoryID=302;


UPDATE Inventory
SET Stock=15,
    AvailabilityStatus="AVAILABLE"
WHERE InventoryID=311;

SELECT * FROM Inventory
WHERE InventoryID=311;


UPDATE Seller
SET ContactNo="9876599999",
    Address="Madurai"
WHERE SellerID=201;

SELECT * FROM Seller
WHERE SellerID=201;


DELETE FROM Inventory
WHERE InventoryID=325;

SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus="AVAILABLE";


SELECT * FROM Inventory
WHERE AvailabilityStatus="UNAVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus="AVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus="UNAVAILABLE";


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;

SELECT * FROM Seller;