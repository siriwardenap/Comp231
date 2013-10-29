CREATE TABLE [dbo].[Cuisine] (
    [CategoryId]   INT            NOT NULL,
    [CuisineID]        INT  NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    [Description] NVARCHAR(MAX) NULL, 
    PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);

