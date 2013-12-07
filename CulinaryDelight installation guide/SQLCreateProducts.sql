USE [OnlineOrderSystem]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/27/2013 23:53:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemid] [int] NOT NULL,
	[itemname] [varchar](100) NOT NULL,
	[price] [money] NOT NULL,
	[productcat] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


insert into dbo.Product (
    itemid,itemname,price,productcat)
    values (
    '104','rice', '1', 'Srilankan');
    
    insert into dbo.Product (
    itemid,itemname,price,productcat)
    values (
    '105','noodle', '1.50', 'Srilankan');
    
    insert into dbo.Product (
    itemid,itemname,price,productcat)
    values (
    '106','dal', '1.50', 'Tandoori');
    
    insert into dbo.Product (
    itemid,itemname,price,productcat)
    values (
    '107','vegi-samucha', '2', 'Tandoori');
    
    insert into dbo.Product (
    itemid,itemname,price,productcat)
    values (
    '108','fulka', '1', 'Gujarati');
    
    insert into dbo.Product (
    itemid,itemname,price,productcat)
    values (
    '109','mutton', '2.50', 'Gujarati');
    
  
