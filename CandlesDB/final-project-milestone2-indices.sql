USE Candles;
GO
CREATE INDEX idx_Zip ON Customers(Zip);
GO
CREATE INDEX idx_LocationID ON Sales(LocationID) ;
GO
CREATE INDEX idx_CustomerID ON Sales(CustomerID) ;
GO
CREATE INDEX idx_SalesID ON OrderDetails(SalesID);
GO
CREATE INDEX idx_InventoryID ON OrderDetails(InventoryID);