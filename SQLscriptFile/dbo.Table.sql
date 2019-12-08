CREATE TABLE [dbo].[ProductInfo]
(
	[ProductID] VARCHAR(25) NOT NULL PRIMARY KEY,
	[NameOfProduct] VARCHAR(25) NOT NULL, 
    [Summary] VARCHAR(50) NULL, 
    [Price] MONEY NULL, 
    [Image] IMAGE NULL, 
    FOREIGN KEY (NameOfProduct) REFERENCES ProductName (NameOfProduct) 
)
