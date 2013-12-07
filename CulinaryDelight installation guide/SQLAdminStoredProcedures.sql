USE [OnlineOrderSystem]
GO

/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 12/04/2013 12:01:34 ******/

CREATE PROCEDURE [dbo].[GetAllProducts] 
AS
SELECT * FROM dbo.Product
GO

/* update product */
CREATE PROCEDURE [dbo].[UpdateProduct]
(@Id int,
 @ItemId int,
 @Name VARCHAR(100),
 @Price MONEY,
 @Cat VARCHAR(50))
AS
UPDATE Product
SET 
    itemid = @ItemId,
    itemname = @Name,
    price = @Price,
    productcat = @Cat
WHERE id = @Id

GO

CREATE PROCEDURE [dbo].[DeleteProduct]
(@Id int)
AS
DELETE Product Where id = @Id
GO

CREATE PROCEDURE [dbo].[CreateProduct]
(
 @ItemId int,
 @Name VARCHAR(100),
 @Price MONEY,
 @Cat VARCHAR(50))
AS
INSERT INTO Product (itemid, itemname, price, productcat)
VALUES (@ItemId, @Name, @Price, @Cat)
GO

CREATE PROCEDURE OrdersGetByRecent 
(@Count smallINT)
AS
-- Set the number of rows to be returned
SET ROWCOUNT @Count
-- Get list of orders
SELECT Orders.OrderID, Orders.DateCreated, Orders.DateShipped, 
       aspnet_Users.UserName, Orders.OrderStatus
FROM Orders, aspnet_Users
Where Orders.CustomerID = aspnet_Users.UserId
ORDER BY DateCreated DESC
-- Reset rowcount value
SET ROWCOUNT 0

GO

CREATE PROCEDURE OrdersGetByDate 
(@StartDate SMALLDATETIME,
 @EndDate SMALLDATETIME)
AS
SELECT Orders.OrderID, Orders.DateCreated, Orders.DateShipped, 
       aspnet_Users.UserName, Orders.OrderStatus
FROM Orders,aspnet_Users
WHERE Orders.CustomerID = aspnet_Users.UserId AND DateCreated BETWEEN @StartDate AND @EndDate
ORDER BY DateCreated DESC

GO

CREATE PROCEDURE OrderGetInfo
(@OrderID INT)
AS
SELECT Orders.OrderID, 
      (SELECT ISNULL(SUM(Subtotal), 0) FROM OrderDetail WHERE OrderID = @OrderID)        
       AS TotalAmount, 
       Orders.DateCreated, 
       Orders.DateShipped, 
       Orders.OrderStatus, 
       Orders.Comments, 
       aspnet_Users.UserName        
FROM Orders,aspnet_Users
WHERE Orders.CustomerID = aspnet_Users.UserId AND OrderID = @OrderID

GO

CREATE PROCEDURE OrderGetDetails
(@OrderID INT)
AS
SELECT Orders.OrderID, 
       ProductID, 
       ProductName, 
       Quantity, 
       UnitCost, 
       Subtotal
FROM OrderDetail JOIN Orders
ON Orders.OrderID = OrderDetail.OrderID
WHERE Orders.OrderID = @OrderID

GO

CREATE PROCEDURE OrderUpdate
(@OrderID INT,
 @DateCreated SMALLDATETIME,
 @DateShipped SMALLDATETIME = NULL,
 @OrderStatus VARCHAR(50), 
 @Comments VARCHAR(200) 
 )
AS
UPDATE Orders
SET DateCreated=@DateCreated,
    DateShipped=@DateShipped,
    OrderStatus=@OrderStatus,    
    Comments=@Comments    
WHERE OrderID = @OrderID

GO