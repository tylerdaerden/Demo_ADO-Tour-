// ConnectionString

using Microsoft.Data.SqlClient;

string connectionString = "Server=TOURPCDANY\\DATAVIZ;Database=Demo_Ado;User Id=Zaza;Password=Test1234=;TrustServerCertificate=true;";

// nugget package à installer -> Microsoft.Data.SqlClient


#region Connexion vers la DB

// - Instance d'une connexion + ConnectionString
SqlConnection demoConnection = new SqlConnection();
demoConnection.ConnectionString = connectionString;

// - Ouvrir la connexion
demoConnection.Open();

// - Réaliser du traitement ...
Console.WriteLine($"Etat de la connexion {demoConnection.State}");


// - Exemple de requete
SqlCommand demoCommand = demoConnection.CreateCommand();
demoCommand.CommandText = "SELECT COUNT(*) FROM [V_Game];";
demoCommand.CommandType = System.Data.CommandType.Text;

int nbGame = (int)demoCommand.ExecuteScalar();
Console.WriteLine($"Le nombre de jeu dans la DB : {nbGame}");


// - Fermer  la connexion
demoConnection.Close();
Console.WriteLine($"Etat de la connexion {demoConnection.State}");


#endregion


