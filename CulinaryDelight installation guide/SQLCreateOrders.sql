USE OnlineOrderSystem
GO


CREATE TABLE Orders(
	OrderID INT IDENTITY(1,1) NOT NULL,
	DateCreated SMALLDATETIME NOT NULL CONSTRAINT DF_Orders_DateCreated  DEFAULT (getdate()),
	DateShipped SMALLDATETIME NULL,	
	Comments NVARCHAR(1000) NULL,
	CustomerID UNIQUEIDENTIFIER,
	OrderStatus VARCHAR(50) DEFAULT 'Verified',
	AuthCode VARCHAR(50),
	Reference VARCHAR(50),
 CONSTRAINT PK_Orders PRIMARY KEY CLUSTERED(OrderID ASC)
)

GO

CREATE TABLE OrderDetail(
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	ProductName NVARCHAR(50) NOT NULL,
	Quantity INT NOT NULL,
	UnitCost MONEY NOT NULL,
	Subtotal  AS (Quantity*UnitCost),
 CONSTRAINT PK_OrderDetail PRIMARY KEY CLUSTERED(OrderID ASC, ProductID ASC)
)
  
GO

ALTER TABLE OrderDetail WITH CHECK ADD CONSTRAINT FK_OrderDetail_Orders FOREIGN KEY(OrderID)
REFERENCES Orders (OrderID)


/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 12/03/2013 20:59:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[CreateOrder] 
(@CustomerID uniqueidentifier)
 
AS
/* Insert a new record into Orders */
DECLARE @OrderID int
INSERT INTO Orders (CustomerID) VALUES (@CustomerID)
/* Save the new Order ID */
SET @OrderID = @@IDENTITY
/* Return the Order ID */
SELECT @OrderID
GO

/****** Object:  StoredProcedure [dbo].[CreateOrderDetails]    Script Date: 12/03/2013 21:10:17 ******/

CREATE PROCEDURE [dbo].[CreateOrderDetails] 
(@OrderID int,
 @ProductID int,
 @OrderQuantity int)
 
AS
/* Add the order details to OrderDetail */
INSERT INTO OrderDetail 
     (OrderID, ProductID, ProductName, Quantity, UnitCost)
SELECT 
     @OrderID, Product.itemid, Product.itemname, 
     @OrderQuantity, Product.price
FROM Product 
WHERE Product.id = @ProductID

GO
