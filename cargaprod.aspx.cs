using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace CameronIntima
{
    public partial class cargaprod : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["localHost"].ConnectionString;
        //private static string Cadena = ConfigurationManager.ConnectionStrings["cameronIntimaConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //CargarDatos();



            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            //if (txtNombre.Text == "")
            //if (txtNombre.Text == String.Empty)
            if (!String.IsNullOrEmpty(txtNombre.Text) && !String.IsNullOrEmpty(txtCategoria.Text))
            {
                string Nombre = txtNombre.Text;
                string Categoria = txtCategoria.Text;
                string Descripcion = descripcion.Text;
                string Talle = txtTalle.Text;
                string Color = txtColor.Text;
                string Precio = txtPrecio.Text;
                // Variable para guardar la ruta de la imagen
                string rutaImagen = null;



                // Inicio de la carga de la imagen
                if (txtImagen.HasFile) // Verifica si se ha seleccionado un archivo
                {
                    try
                    {
                        string carpetaImagenes = Server.MapPath("~/Imagenes/"); // Define la ruta de la carpeta

                        // Crea la carpeta si no existe
                        if (!Directory.Exists(carpetaImagenes))
                        {
                            Directory.CreateDirectory(carpetaImagenes);
                        }

                        // Obtiene el nombre del archivo y define la ruta completa donde se guardará
                        string nombreArchivo = Path.GetFileName(txtImagen.FileName);
                        rutaImagen = "~/Imagenes/" + nombreArchivo;
                        string rutaCompleta = Path.Combine(carpetaImagenes, nombreArchivo);

                        // Guarda la imagen en la carpeta
                        txtImagen.SaveAs(rutaCompleta);
                    }
                    catch (Exception ex)
                    {
                        lblTexto.Text = "Error al cargar la imagen: " + ex.Message;
                        lblTexto.ForeColor = System.Drawing.Color.Red;
                        return; // Termina la ejecución si hay un error en la carga de la imagen
                    }
                }


                using (SqlConnection connection = new SqlConnection(Cadena))
                {
                    string query = "INSERT INTO producto (nombre, categoria, descripcion, talle, color, precio, dirImagen) VALUES (@Nombre,@Categoria,@Descripcion,@Talle,@Color,@Precio,@rutaImagen)";
                    //string script = String.Format("INSERT INTO PRODUCTO(nombre, categoria, descripcion, talle, color, precio) VALUES('{1}', '{2}', '{3}', '{4}','{5}','{6}','{7}')",txtNombre.Text, txtCategoria.Text, descripcion.Text, txtTalle.Text, txtColor.Text, txtPrecio.Text);

                    connection.Open();

                    SqlCommand command = new SqlCommand(query, connection);


                    using (SqlCommand comando = new SqlCommand(query, connection))
                    {
                        // Asignación de parámetros
                        comando.Parameters.AddWithValue("@nombre", Nombre);
                        comando.Parameters.AddWithValue("@categoria", Categoria);
                        comando.Parameters.AddWithValue("@descripcion", Descripcion);
                        comando.Parameters.AddWithValue("@talle", Talle);
                        comando.Parameters.AddWithValue("@color", Color);
                        comando.Parameters.AddWithValue("@precio", Precio);
                        // Agrega el parámetro para la ruta de la imagen (puede ser null si no se cargó una imagen)
                        comando.Parameters.AddWithValue("@rutaImagen", (object)rutaImagen ?? DBNull.Value);

                        // Ejecutar la consulta
                        try
                        {
                            //connection.Open();
                            int filasAfectadas = comando.ExecuteNonQuery();


                            // Verificación
                            if (filasAfectadas > 0)
                            {
                                lblTexto.Text = "Producto guardado correctamente para " + txtNombre.Text + " " + txtCategoria.Text;
                                lblTexto.ForeColor = System.Drawing.Color.DarkGreen;
                                LimpiarFormulario();
                            }
                            else
                            {
                                lblTexto.Text = "Ha ocurrido un error al guardar el producto.";
                                lblTexto.ForeColor = System.Drawing.Color.Red;
                            }
                            //connection.Close();
                        }
                        catch (Exception ex)
                        {
                            lblTexto.Text = "Error al guardar en la base de datos: " + ex.Message;
                            lblTexto.ForeColor = System.Drawing.Color.Red;
                        }

                    }

                    connection.Close();


                   /* try
                    {
                        //connection.Open();
                        int filasAfectadas = comando.ExecuteNonQuery();


                        // Verificación
                        if (filasAfectadas > 0)
                        {
                            mensajeVista = $"Producto Guardado correctamente De {txtNombre.Text}!";
                            //lblTexto.Text = "Producto guardado correctamente para " + txtNombre.Text + " " + txtCategoria.Text;
                            //lblTexto.ForeColor = System.Drawing.Color.DarkGreen;
                            LimpiarFormulario();
                        }
                        else
                        {
                            mensajeVista = "Ha ocurrido un error al Guardar el Producto.";
                            //lblTexto.Text = "Ha ocurrido un error al guardar el producto.";
                            //lblTexto.ForeColor = System.Drawing.Color.Red;
                        }
                        //connection.Close();
                    }
                    catch (Exception ex) //
                    {
                        mensajeVista = "Error al guardar en la base de datos: " + ex.Message;
                        //lblTexto.Text = "Error al guardar en la base de datos: " + ex.Message;
                        //lblTexto.ForeColor = System.Drawing.Color.Red;
                    }


                    }*/
                    //string script = $"alert('{mensajeVista}');";
                    //ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", script, true);

                }   

            }


        }

        // Método auxiliar para limpiar el formulario después de guardar
        private void LimpiarFormulario()
        {
            txtNombre.Text = "";
            txtCategoria.Text = "";
            descripcion.Text = "";
            txtTalle.Text = "";
            txtColor.Text = "";
            txtPrecio.Text = "";
        }



        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrWhiteSpace(txtID.Text))
            //{
            //    Busqueda.Text = "Por favor, ingresa el ID del registro a modificar.");
            //    return;
            //}
            //var appURL = httpPostedfileDataBase(file);
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                connection.Open();
                string query = "UPDATE Productos SET Nombre = @nombre, Categoria = @categoria, Descripcion = @descripcion, " +
                               "Talle = @talle, Color = @color, Precio = @precio WHERE ID = @id";

                using (SqlCommand comando = new SqlCommand(query, connection))
                {
                    comando.Parameters.AddWithValue("@nombre", txtNombre.Text);
                    comando.Parameters.AddWithValue("@categoria", txtCategoria.Text);
                    comando.Parameters.AddWithValue("@descripcion", descripcion.Text);
                    comando.Parameters.AddWithValue("@talle", txtTalle.Text);
                    comando.Parameters.AddWithValue("@color", txtColor.Text);
                    comando.Parameters.AddWithValue("@precio", decimal.Parse(txtPrecio.Text));
                    comando.Parameters.AddWithValue("@id", int.Parse(txtID.Text));
                    //comando.Parameters.AddWithValue("@dirImagen"), apppURL;

                    int filasAfectadas = comando.ExecuteNonQuery();
                    lblTexto.Text = filasAfectadas > 0 ? "Registro modificado correctamente." : "No se encontró el registro.";
                    lblTexto.ForeColor = System.Drawing.Color.DarkGreen;
                }
            }
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {

            string buscado = txtID.Text;

            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                connection.Open();
                string query = "DELETE FROM [dbo].[producto] WHERE idProducto = " + buscado + ";";

                using (SqlCommand comando = new SqlCommand(query, connection))
                {
                    //comando.Parameters.AddWithValue("@id", int.Parse(Busqueda.Text));

                    int filasAfectadas = comando.ExecuteNonQuery();
                    lblTexto.Text = filasAfectadas > 0 ? "Registro eliminado correctamente." : "No se encontró el registro.";
                    lblTexto.ForeColor = System.Drawing.Color.Red;
                }
            }
        }



        //protected void BtnBusqModificar_Click(object sender, EventArgs e)
        //{
        //    using (SqlConnection connection = new SqlConnection(Cadena))
        //    {
        //        connection.Open();
        //        string query = "SELECT * FROM producto WHERE ID = @id";

        //        using (SqlCommand comando = new SqlCommand(query, connection))
        //        {
        //            comando.Parameters.AddWithValue("@id", int.Parse(txtID.Text));
        //            SqlDataAdapter adapter = new SqlDataAdapter(comando);
        //            DataTable tabla = new DataTable();
        //            adapter.Fill(tabla);

        //            if (tabla.Rows.Count > 0)
        //            {
        //                // Mostrar los datos en el DataGridView
        //                dataGridView.DataSource = tabla;

        //                // Cargar los valores en los TextBox para modificar
        //                DataRow fila = tabla.Rows[0];
        //                txtNombre.Text = fila["Nombre"].ToString();
        //                txtCategoria.Text = fila["Categoria"].ToString();
        //                txtDescripcion.Text = fila["Descripcion"].ToString();
        //                txtTalle.Text = fila["Talle"].ToString();
        //                txtColor.Text = fila["Color"].ToString();
        //                txtPrecio.Text = fila["Precio"].ToString();
        //            }
        //            else
        //            {
        //                MessageBox.Show("No se encontró el registro.");
        //            }
        //        }
        //    }
        //}

        //private void CargarDatos()
        //{
        //    // Crear datos de ejemplo
        //    var productos = new List<Producto>
        //{
        //    new Producto { Nombre = "Camisa", Categoria = "Ropa", Descripcion = "Camisa de algodón", Talle = "M", Color = "Azul", Precio = 19.99m },
        //    new Producto { Nombre = "Pantalón", Categoria = "Ropa", Descripcion = "Pantalón de mezclilla", Talle = "L", Color = "Negro", Precio = 29.99m },
        //    new Producto { Nombre = "Zapatos", Categoria = "Calzado", Descripcion = "Zapatos de cuero", Talle = "42", Color = "Marrón", Precio = 59.99m },
        //    new Producto { Nombre = "Gorra", Categoria = "Accesorios", Descripcion = "Gorra de béisbol", Talle = "Único", Color = "Rojo", Precio = 9.99m },
        //    new Producto { Nombre = "Abrigo", Categoria = "Ropa", Descripcion = "Abrigo de invierno", Talle = "XL", Color = "Gris", Precio = 89.99m }
        //};

        //    // Asignar datos al GridView
        //    GridView2.DataSource = productos;
        //    GridView2.DataBind();
        //}

        //// Clase Producto para representar los datos
        //public class Producto
        //{
        //    public string Nombre { get; set; }
        //    public string Categoria { get; set; }
        //    public string Descripcion { get; set; }
        //    public string Talle { get; set; }
        //    public string Color { get; set; }
        //    public decimal Precio { get; set; }
        //}

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string opcion = e.CommandName;
            switch (opcion.ToLower())
            {
                case "editar":

                    try
                    {
                        // Convertir el argumento a índice de fila.

                        int rowIndexx = Convert.ToInt32(e.CommandArgument);
                        //string id = e.CommandArgument.ToString();

                        GridViewRow rowx = GridView2.Rows[rowIndexx];

                        string Nnombrex = rowx.Cells[0].Text;

                        // Obtener el ID de la fila seleccionada.
                        //string id = GridView2.DataKeys[index].Value.ToString();

                        // Redirigir a la página de modificación con el ID en la URL.               este tenes que revisar para darle los parametros para modificar en otra page
                        Response.Redirect("Modificar.aspx?ID=" + Nnombrex);
                    }
                    catch (Exception ex)
                    {
                        // Manejar errores, como índice fuera de rango o problemas de conversión.
                        // Puedes usar una etiqueta en la página para mostrar el error o simplemente registrar el error.
                        Response.Write("Error: " + ex.Message);
                    }
                    break;

                case "eliminar":

                    //try
                    //{
                    // Convertir el argumento a índice de fila.
                    int rowIndex = Convert.ToInt32(e.CommandArgument);
                    //string id = e.CommandArgument.ToString();

                    GridViewRow row = GridView2.Rows[rowIndex];

                    string Nnombre = row.Cells[0].Text;

                    using (SqlConnection connection = new SqlConnection(Cadena))
                    {

                        connection.Open();
                        //preguntar antes de eliminar
                        string query = "DELETE FROM Productos WHERE nombre = '" + Nnombre + "';";


                        using (SqlCommand comando = new SqlCommand(query, connection))
                        {

                            int filasAfectadas = comando.ExecuteNonQuery();
                            lblTexto.Text = filasAfectadas > 0 ? "Registro eliminado correctamente." : "No se encontró el registro.";
                            if (filasAfectadas > 0)
                                lblTexto.ForeColor = System.Drawing.Color.DarkGreen;
                            else
                                lblTexto.ForeColor = System.Drawing.Color.DarkRed;
                        }


                    }
                    break;
                    //--------------------------------------


            }





            //}
            //catch (Exception ex)
            //{
            // Manejar errores, como índice fuera de rango o problemas de conversión.
            // Puedes usar una etiqueta en la página para mostrar el error o simplemente registrar el error.
            //Response.Write("Error: " + ex.Message);                                                           //habilitardespues
            //}




        }

        //[HttpPost]
        //public ActionResult 














        //fin class no tocar
    }
}