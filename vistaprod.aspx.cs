using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameronIntima
{
    public partial class vistaprod : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["localHost"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            string mensajeVista = null;
            string buscado = txtID.Text;

            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                connection.Open();
                string query = "DELETE FROM [dbo].[producto] WHERE idProducto = " + buscado + ";";

                using (SqlCommand comando = new SqlCommand(query, connection))
                {

                    //comando.Parameters.AddWithValue("@id", int.Parse(Busqueda.Text));

                    int filasAfectadas = comando.ExecuteNonQuery();
                    mensajeVista = filasAfectadas > 0 ? "Registro eliminado correctamente. " : "No se encontró el registro.";

                    //lblTexto.ForeColor = System.Drawing.Color.Red;
                }

                connection.Close();

                CargarDatosGridView();

                string script = $"alert('{mensajeVista}');";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script, true);

            }
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            //this.Response.Redirect("modificarProd.aspx", false);
            this.Response.Redirect("Modificar.aspx?ID=" + txtID.Text);
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Response.Redirect("cargaprod.aspx", true);
        }


        [WebMethod]
        public static void ActualizarGridView()
        {
            // Llama al método que recarga el GridView
            CargarDatosGridView();
        }

        private static string CargarDatosGridView()
        {

            // Aquí deberías tener la lógica para recargar el GridView
            // Nota: El método CargarDatosGridView debe ser estático para que pueda ser llamado por el método estático ActualizarGridView
            // Por simplicidad se asume que la lógica para recargar el GridView está disponible aquí
            return "GridView actualizado correctamente.";
        }















        //no tocar
    }
}