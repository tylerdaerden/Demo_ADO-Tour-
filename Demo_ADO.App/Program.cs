using Microsoft.Data.SqlClient;

// ConnectionString 
string connectionString = @"Server=Forma500\TFTIC;Database=Demo_ADO;User Id=Della;Password=Test1234=;TrustServerCertificate=true;";

// Nuget package à installer → Microsoft.Data.SqlClient

#region Connnexion vers la DB
// - Instance d'une connexion + ConnectionString
SqlConnection demoConnection = new SqlConnection();
demoConnection.ConnectionString = connectionString;

// - Ouvrir la connexion
demoConnection.Open();

// - Réaliser du traitement...
Console.WriteLine($"Etat de la connexion {demoConnection.State}");

// - Exemple de requete
SqlCommand demoCommand = demoConnection.CreateCommand();
demoCommand.CommandText = "SELECT COUNT(*) FROM [V_Game];";
demoCommand.CommandType = System.Data.CommandType.Text;

int nbGame = (int)demoCommand.ExecuteScalar();
Console.WriteLine($"Le nombre de jeu dans la DB : {nbGame}");


// - Fermer la connexion
demoConnection.Close();
Console.WriteLine($"Etat de la connexion {demoConnection.State}");
#endregion
