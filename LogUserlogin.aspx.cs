using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace CameronIntima
{
    
    public partial class LogUserlogin : System.Web.UI.Page
    {
        
        //private static string Cadena = ConfigurationManager.ConnectionStrings["Cadena"].ConnectionString;

        private static string Cadena = ConfigurationManager.ConnectionStrings["localHost"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {


            using (SqlConnection connection = new SqlConnection(Cadena))
            {

                try
                {
                    //SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                    //builder.DataSource = "BANGHO";
                    //builder.InitialCatalog = "ABM_BIB";
                    //builder.UserID = "sa";
                    //builder.Password = "13213";

                    string script = "SELECT name_User, pass_User FROM roles_Usuarios WHERE name_User = '" + textUser.Text + "' AND" +
                        " pass_User = '" + passWords.Text + "'";

                    connection.Open();

                    SqlCommand command = new SqlCommand(script, connection);

                    SqlDataReader reader = command.ExecuteReader();

                    string user = String.Empty;

                    while (reader.Read())
                    {
                          user = reader.GetString(0);
                    }

                    reader.Close();

                    connection.Close();

                    if (user != string.Empty)
                    {
                        
                        Session["Usuario"] = textUser.Text;
                        Page.Response.Redirect("Inicio.aspx");
                        //Response.Redirect("Inicio.aspx?id2=" + textUser.Text );
                        //Response.Redirect("Inicio.aspx", true);
                    }
                    //else
                    //lblError.Text = "Usuario o Password incorrectos.";

                    //reader.Close();


                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.Message);
                }
            }
        }


    }
}