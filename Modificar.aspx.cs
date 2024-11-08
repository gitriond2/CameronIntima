using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameronIntima
{
    public partial class Modificar : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["localHost"].ConnectionString;
        string Nnamex;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Nnamex = Request.QueryString["ID"];

                TraerAlumno(Nnamex);
            }
        }

        public void TraerAlumno(string Nnamex)
        {
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                try
                {

                    string script = "SELECT * FROM PRODUCTO WHERE nombre= '" + Nnamex + "';";

                    connection.Open();

                    SqlCommand command = new SqlCommand(script, connection);

                    SqlDataReader reader = command.ExecuteReader();


                    while (reader.Read())
                    {
                        lblID.Text = reader.GetValue(0).ToString();
                        txtNombre.Text = reader.GetString(1);
                        txtCategoria.Text = reader.GetString(2);
                        txtDescripcion.Text = reader.GetString(3);
                        txtTalle.Text = reader.GetString(4);
                        txtColor.Text = reader.GetString(5);
                        txtPrecio.Text = reader["Precio"] != DBNull.Value
                            ? reader["Precio"].ToString() // Convierte el valor a string
                            : "0.00"; // Valor por defecto si es NULL

                    }
                    reader.Close();
                    connection.Close();

                }
                catch (Exception)
                {


                }
            }

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            string lvl = txtNombre.Text;
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                connection.Open();
                string query = "UPDATE Producto SET Nombre = @nombre, Categoria = @categoria, Descripcion = @descripcion, " +
                               "Talle = @talle, Color = @color, Precio = @precio WHERE nombre = '" + lvl +"';";
                using (SqlCommand comando = new SqlCommand(query, connection))
                {
                    //comando.Parameters.AddWithValue("@idProducto", lblId);
                    comando.Parameters.AddWithValue("@nombre", txtNombre.Text);
                    comando.Parameters.AddWithValue("@categoria", txtCategoria.Text);
                    comando.Parameters.AddWithValue("@descripcion", txtDescripcion.Text);
                    comando.Parameters.AddWithValue("@talle", txtTalle.Text);
                    comando.Parameters.AddWithValue("@color", txtColor.Text);
                    comando.Parameters.AddWithValue("@precio", decimal.Parse(txtPrecio.Text));


                    int filasAfectadas = comando.ExecuteNonQuery();
                    lblTexto.Text = filasAfectadas > 0 ? "Registro modificado correctamente." : "No se encontró el registro.";
                    if (filasAfectadas > 0)
                        lblTexto.ForeColor = System.Drawing.Color.DarkGreen;
                    else
                        lblTexto.ForeColor = System.Drawing.Color.DarkRed;
                
                }
            }
        }







        //notocarnadadespues
    }
}