USE Candles
CREATE TABLE Inventory(
InventoryID int NOT NULL,
CandleScent varchar (30) NOT NULL,
SizeOZ int NOT NULL,
WaxType varchar (50) ,
WickType varchar (50) , 
Cost money NOT NULL,
PRIMARY KEY (InventoryID)
);
GO
CREATE TABLE Customers(
CustomerID int NOT NULL,
FirstName varchar (30) NOT NULL,
LastName varchar (30) NOT NULL,
Address varchar (60) ,
Zip int NOT NULL, 
PRIMARY KEY (CustomerID)
);
GO
CREATE TABLE Zipcode(
ZipID int NOT NULL,
City varchar (30) NOT NULL,
Sate varchar (5) NOT NULL,
PRIMARY KEY (ZipID)
);
GO
CREATE TABLE SalesLocation(
LocationID int NOT NULL,
Name varchar (20) NOT NULL, 
PRIMARY KEY (LocationID)
);
GO
CREATE TABLE Sales(
SalesID int NOT NULL,
Date datetime NOT NULL,
LocationID int NOT NULL,
CustomerID int NOT NULL , 
PRIMARY KEY (SalesID)
);
GO
CREATE TABLE OrderDetails(
OrderID int NOT NULL,
SalesID int NOT NULL,
InventoryID int NOT NULL,
Qty int NOT NULL, 
PRIMARY KEY (OrderID)
);