-- Cleanup
DELETE FROM [Game_Genre];
DELETE FROM [Game];
DELETE FROM [Publisher];
DELETE FROM [Genre];

-- Genre
SET IDENTITY_INSERT [Genre] ON;
GO

INSERT INTO [Genre]([Id_Genre], [Name])
 VALUES (1, 'FPS'),
		(2, 'Aventure'),
		(3, 'Action'),
		(4, 'RPG'),
		(5, 'Course');
GO

SET IDENTITY_INSERT [Genre] OFF;
GO

-- Publisher
SET IDENTITY_INSERT [Publisher] ON;
GO

INSERT INTO [Publisher]([Id_Publisher], [Name], [Country], [Creation_date])
 VALUES (1, 'Nintendo', 'Japon', '1889-11-23'),
		(2, 'Nadeo', 'France', '2000-01-01');


SET IDENTITY_INSERT [Publisher] OFF;
GO

-- Game
SET IDENTITY_INSERT [Game] ON;
GO
	
INSERT INTO [Game]([Id_Game], [Name], [Id_Publisher],  [Release_Date], [Price])
 VALUES (1, 'Zeldo TOTK', 1, '2023-05-12', 64.95),
		(2, 'Trackmania', 2, '2020-07-01', NULL),
		(3, 'Pokemon Violet', 1, '2022-11-18', 59.59),
		(4, 'Pokemon Écarlate', 1, '2022-11-18', 59.59);


SET IDENTITY_INSERT [Game] OFF;
GO

-- MM - Game_Genre
INSERT INTO [Game_Genre]([Id_Game], [Id_Genre])
 VALUES (1, 2), -- Zeldo
		(1, 3),
		(1, 4),
		(2, 5), -- Trackmania
		(3, 2), -- Pokemon V
		(4, 2); -- Pokemon E