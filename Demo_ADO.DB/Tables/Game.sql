CREATE TABLE [dbo].[Game]
(
	[Id_Game] INT NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[Resume] NVARCHAR(4000) NULL,
	[Release_Date] DATE NULL,
	[Is_Active] BIT DEFAULT 1,
	[Price] DECIMAL(15,2) NULL,
	[Id_Publisher] INT NOT NULL, 

    CONSTRAINT PK_Game PRIMARY KEY([Id_Game]),
	CONSTRAINT FK_Game__Publisher FOREIGN KEY ([Id_Publisher]) REFERENCES [Publisher]([Id_Publisher]) 
)
