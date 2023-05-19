CREATE TABLE [dbo].[Genre]
(
	[Id_Genre] INT NOT NULL IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(500),

	CONSTRAINT PK_Genre PRIMARY KEY ([Id_Genre]),
	CONSTRAINT UK_Genre__Name UNIQUE([Name])
)