using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Xml.Linq;





public partial class signup : System.Web.UI.Page
{
    protected void SignUpButton_Click(object sender, EventArgs e)
    {
        var user = new User
        {
            Name = txtName.Text,
            Email = txtEmail.Text,
            Password = txtPassword.Text // Again, hash the password before storing
        };

        var userDataAccess = new UserDataAccess();
        bool isRegistered = userDataAccess.RegisterUser(user);

        if (isRegistered)
        {
            // Redirect or show a success message
            Console.WriteLine("success");
        }
        else
        {
            // Show an error message
            Console.WriteLine("fail");
        }
    }
}