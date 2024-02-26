using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public class UserDataAccess
{
    private string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

    public bool RegisterUser(User user)
    {
        using (var connection = new MySqlConnection(connectionString))
        {
            const string query = "INSERT INTO TPK (name, email, password) VALUES (@Name, @Email, @Password)";
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@Name", user.Name);
            cmd.Parameters.AddWithValue("@Email", user.Email);
            cmd.Parameters.AddWithValue("@Password", user.Password); // Note: Store hashed passwords, not plain text

            connection.Open();
            int result = cmd.ExecuteNonQuery();
            return result > 0;
        }
    }
}