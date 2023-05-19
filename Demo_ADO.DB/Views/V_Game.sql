CREATE VIEW [dbo].[V_Game]
AS 
SELECT [Id_Game], [Name], [Id_Publisher], [Release_Date], [Price], [Resume]
FROM [Game]
WHERE [Is_Active] = 1