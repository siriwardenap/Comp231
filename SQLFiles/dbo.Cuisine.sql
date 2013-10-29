CREATE TABLE [dbo].[Category] (
    [CategoryId]   INT            NOT NULL,
    [CuisineID]        INT  NOT NULL IDENTITY,
    [Name] NVARCHAR (50) NOT NULL,
    [Description] NVARCHAR(MAX) NULL, 
    PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);

