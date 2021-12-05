/* USE Candles;
GO
INSERT INTO Zipcode VALUES ('96740', 'Kona', 'HI')
INSERT INTO Zipcode VALUES ('98401', 'Tacoma', 'WA')
INSERT INTO Zipcode VALUES ('33548', 'Lutz', 'FL')
INSERT INTO Zipcode VALUES ('98105', 'Seattle', 'WA')
INSERT INTO Zipcode VALUES ('32836', 'Orlando', 'FL') 

USE Candles;
GO
INSERT INTO Inventory VALUES (1, 'Autumn Leaves', 10,'Soy','Wood', 10.00)
INSERT INTO Inventory VALUES (2, 'Egyptian Amber', 10,'Soy','Cotton', 7.00)
INSERT INTO Inventory VALUES (3, 'Saffron and Tobacco', 20,'Beeswax','Cotton', 17.00)
INSERT INTO Inventory VALUES (4, 'Witches Brew', 20,'Soy','Wood', 20.00)
INSERT INTO Inventory VALUES (5, 'Banana Bread', 10,'Beeswax','Wood', 10.00)
INSERT INTO Inventory VALUES (6, 'Seaside Breeze', 20,'Soy','Wood', 20.00)

USE Candles;
GO
INSERT INTO SalesLocation VALUES (1, 'Etsy')
INSERT INTO SalesLocation VALUES (2, 'Facebook')
INSERT INTO SalesLocation VALUES (3, 'Website')
INSERT INTO SalesLocation VALUES (4, 'Craftshow')
INSERT INTO SalesLocation VALUES (5, 'Ebay')


USE Candles;
GO
INSERT INTO Customers VALUES (1, 'Cobra', 'Bubbles', '688 Hao St.', 96740)
INSERT INTO Customers VALUES (2, 'Cruella', 'De Vil', '908 W. Capital Way', 98401)
INSERT INTO Customers VALUES (3, 'Thomas', 'OMalley', '19119 Holly Ln.', 33548)
INSERT INTO Customers VALUES (4, 'Snow', 'White', '4726 - 11th Ave. N.E.', 98105)
INSERT INTO Customers VALUES (5, 'Peter', 'Pan', '1375 Buena Vista Dr.', 32836)

USE Candles;
GO
INSERT INTO Sales VALUES (1, '4/14/2020', 3, 1)
INSERT INTO Sales VALUES (2, '3/18/2021', 1, 2)
INSERT INTO Sales VALUES (3, '11/27/2020', 2, 3)
INSERT INTO Sales VALUES (4, '2/18/2021', 5, 4)
INSERT INTO Sales VALUES (5, '10/01/2021', 4, 5)

USE Candles;
GO
INSERT INTO OrderDetails VALUES (1, 1, 6, 2)
INSERT INTO OrderDetails VALUES (2, 1, 2, 1)
INSERT INTO OrderDetails VALUES (3, 1, 5, 3)
INSERT INTO OrderDetails VALUES (4, 2, 1, 1)
INSERT INTO OrderDetails VALUES (5, 3, 1, 1)
INSERT INTO OrderDetails VALUES (6, 3, 3, 2)
INSERT INTO OrderDetails VALUES (7, 4, 2, 1)
INSERT INTO OrderDetails VALUES (8, 5, 4, 3)
INSERT INTO OrderDetails VALUES (9, 5, 6, 1)   */
