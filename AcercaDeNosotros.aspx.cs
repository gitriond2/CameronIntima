using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameronIntima
{
    public partial class AcercaDeNosotros : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["localHost"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Contacto_Click(object sender, EventArgs e)
        {
            //if (txtNombre.Text == "")
            //if (txtNombre.Text == String.Empty)
            if (!String.IsNullOrEmpty(txtNombre.Text) && !String.IsNullOrEmpty(txtEmail.Text))
            {
                string nombre = txtNombre.Text;
                string email = txtEmail.Text;
                string asunto = txtAsunto.Text;
                string mensaje = txtMensaje.Text;
                string mensajeVista = null;

                using (SqlConnection connection = new SqlConnection(Cadena))
                {
                    string query = "INSERT INTO [dbo].[contactanos_consulta] (nombre, email, asunto, mensaje) VALUES (@nombre,@email,@asunto,@mensaje)";

                    connection.Open();

                    SqlCommand command = new SqlCommand(query, connection);


                    using (SqlCommand comando = new SqlCommand(query, connection))
                    {
                        // Asignación de parámetros
                        comando.Parameters.AddWithValue("@nombre", nombre);
                        comando.Parameters.AddWithValue("@email", email);
                        comando.Parameters.AddWithValue("@asunto", asunto);
                        comando.Parameters.AddWithValue("@mensaje", mensaje);


                        // Ejecutar la consulta
                        try
                        {
                            int filasAfectadas = comando.ExecuteNonQuery();
                            // Verificación
                            if (filasAfectadas > 0)
                            {
                                mensajeVista = $"Mensaje Enviado correctamente De {txtNombre.Text} {txtEmail.Text} a CameronIntima";
                                //lblTexto.Text = "Producto guardado correctamente para " + txtNombre.Text + " " + txtCategoria.Text;
                                //lblTexto.ForeColor = System.Drawing.Color.DarkGreen;
                                LimpiarFormulario();
                            }
                            else
                            {
                                mensajeVista = "Ha ocurrido un error al Enviar el Mensaje.";
                                //lblTexto.Text = "Ha ocurrido un error al guardar el producto.";
                                //lblTexto.ForeColor = System.Drawing.Color.Red;
                            }
                            //connection.Close();
                        }
                        catch (Exception ex) //Exception ex
                        {
                            mensajeVista = "Error al guardar en la base de datos: " + ex.Message;
                            //lblTexto.ForeColor = System.Drawing.Color.Red;
                        }


                    }

                    connection.Close();

                    string script = $"alert('{mensajeVista}');";
                    ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script, true);

                }

            }
        }

        // Método auxiliar para limpiar el formulario después de guardar
        private void LimpiarFormulario()
        {
            txtNombre.Text = "";
            txtEmail.Text = "";
            txtAsunto.Text = "";
            txtMensaje.Text = "";

        }







        //no tocar
    }
}