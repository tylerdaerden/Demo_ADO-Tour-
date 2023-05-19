CREATE TABLE [dbo].[Game_Genre]
(
	[Id_Game] INT NOT NULL,
	[Id_Genre] INT NOT NULL,

	CONSTRAINT PK_Game_Genre PRIMARY KEY ([Id_Game], [Id_Genre]),
	CONSTRAINT FK_Game_Genre__Game FOREIGN KEY([Id_Game]) REFERENCES [Game]([Id_Game]),
	CONSTRAINT FK_Game_Genre__Genre FOREIGN KEY([Id_Genre]) REFERENCES [Genre]([Id_Genre])
)
