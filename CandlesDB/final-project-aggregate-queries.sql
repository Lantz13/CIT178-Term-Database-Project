/* Katelynn Lantz 

USE Candles;
SELECT Zipcode.Sate, COUNT (DISTINCT Customers.CustomerID) AS [Customers per State]
FROM Customers JOIN Zipcode ON Customers.Zip = Zipcode.ZipID
GROUP BY Zipcode.Sate
ORDER BY Zipcode.Sate ASC;


SELECT COUNT (Inventory.CandleScent) AS 'Candle Scents',
AVG (Inventory.Cost) AS 'Average per Item'
FROM Inventory JOIN OrderDetails ON Inventory.InventoryID = OrderDetails.InventoryID;


USE Candles;
SELECT MIN(Inventory.Cost) AS [Minimum Price],
FROM Inventory;

USE Candles;
SELECT MAX(Inventory.Cost) AS [Maximum Price]
FROM Inventory;

*/