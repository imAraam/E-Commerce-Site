CREATE TABLE [dbo].[Table]
(
	[ProductID] INT IDENTITY (1,1) NOT NULL PRIMARY KEY, 
    [CategoryID] INT NOT NULL,
	FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
)
