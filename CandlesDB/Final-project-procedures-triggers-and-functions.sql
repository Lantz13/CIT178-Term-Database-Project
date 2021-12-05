/* Final Project Procedures 

-- Retrieves and displays data
USE Candles;
GO
CREATE PROC spCustomers
AS
SELECT * FROM Customers
ORDER BY LastName;
GO

EXEC spCustomers; 

CREATE PROC spGetCustomer
	@CustomerID int
AS
BEGIN
	SELECT * FROM Customers
	WHERE CustomerID = @CustomerID;
END
GO
EXEC spGETCustomer 3



CREATE PROC spCustomerContact
	@CustomerID int,
	@FirstName nvarchar(30) OUTPUT,
	@LastName nvarchar(50) OUTPUT
AS
SELECT @FirstName = FirstName, @LastName = LastName
FROM Customers 
WHERE CustomerID = @CustomerID;
GO
-- Run the procedure
DECLARE @FirstName nvarchar(30);
DECLARE @LastName nvarchar(50);
EXEC spCustomerContact 3, @FirstName OUTPUT, @LastName OUTPUT;
SELECT @FirstName AS 'First Name', @LastName AS 'Last Name';


CREATE PROC spCustomerCount
AS
DECLARE @CustomerCount int;
SELECT @CustomerCount = COUNT(*)
FROM Customers 
RETURN @CustomerCount;
GO

DECLARE @CustomerCount int;
EXEC @CustomerCount = spCustomerCount;
PRINT 'There are ' + CONVERT(varchar, @CustomerCount) + ' customers in your database';
GO */

/* Final Project User Defined Functions

CREATE FUNCTION fnGetItem
    (@CandleScent nvarchar(50) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT InventoryID FROM Inventory WHERE CandleScent Like @CandleScent);
END; 

GO
SELECT InventoryID, CandleScent, Cost FROM Inventory 
WHERE InventoryID = dbo.fnGetItem('Banana%');

GO
CREATE FUNCTION fnInventory
	(@CandleScent nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Inventory WHERE CandleScent LIKE @CandleScent);
GO
SELECT * FROM dbo.fnInventory('%B%');

*/


 /* Final Project Triggers 

 SELECT * INTO CustomerTransaction
 FROM Customers
 WHERE 1=0;

 ALTER TABLE CustomerTransaction
 ADD Activity varchar(50);
 GO 

 CREATE TRIGGER CustomerTransaction_INSERT ON Customers
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName nvarchar(30)
	DECLARE @LastName nvarchar(50)
	DECLARE @Address nvarchar(100)
	DECLARE @Zip nvarchar(20)

    SELECT @CustomerID =INSERTED.CustomerID, @FirstName = INSERTED.FirstName, @LastName = INSERTED.LastName,
	@Address = INSERTED.Address, @Zip = INSERTED.Zip 
	FROM INSERTED

    INSERT INTO CustomerTransaction VALUES(@CustomerID,@FirstName, @LastName,@Address, @Zip, 'Inserted' )
END
GO
-- Test
INSERT INTO Customers VALUES(6,'King','Louie','106 banana ave','49696','(231)-123-4567');
GO 

SELECT * FROM CustomerTransaction;
GO 

-- create delete trigger
 CREATE TRIGGER CustomerTransaction_Delete ON Customers
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName nvarchar(30)
	DECLARE @LastName nvarchar(50)
	DECLARE @Address nvarchar(100)
	DECLARE @Zip nvarchar(20)

    SELECT @CustomerID =DELETED.CustomerID, @FirstName = DELETED.FirstName, @LastName = DELETED.LastName,
	@Address = DELETED.Address, @Zip = DELETED.Zip
	FROM DELETED

    INSERT INTO CustomerTransaction VALUES(@CustomerID,@FirstName, @LastName,@Address, @Zip, 'Deleted' )
END
GO 

DELETE FROM Customers WHERE CustomerID = 5;
GO

SELECT * FROM CustomerTransaction;

GO 

 CREATE TRIGGER CustomerTransaction_Update ON Customers
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName nvarchar(30)
	DECLARE @LastName nvarchar(50)
	DECLARE @Address nvarchar(100)
	DECLARE @Zip nvarchar(20)

    SELECT @CustomerID =INSERTED.CustomerID, @FirstName = INSERTED.FirstName, @LastName = INSERTED.LastName,
	@Address = INSERTED.Address, @Zip = INSERTED.Zip
	FROM INSERTED
    INSERT INTO CustomerTransaction VALUES(@CustomerID,@FirstName, @LastName,@Address, @Zip, 'Updated' )
END
GO 

INSERT INTO Customers VALUES(4,'Snow','White','4726 - 11th Ave. N.E.','98105','NULL');
GO
UPDATE Customers 
SET LastName = 'Black'
WHERE CustomerID = 4;
GO 

SELECT * FROM CustomerTransaction;

*/