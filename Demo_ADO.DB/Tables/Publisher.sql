CREATE TABLE [dbo].[Publisher]
(
	[Id_Publisher] INT NOT NULL IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Country] NVARCHAR(50) NOT NULL, 
    [Creation_date] DATE NOT NULL, 
    CONSTRAINT [PK_Publisher] PRIMARY KEY ([Id_Publisher]), 
    CONSTRAINT [UK_Publisher__Name_Country] UNIQUE ([Name], [Country]) 
)