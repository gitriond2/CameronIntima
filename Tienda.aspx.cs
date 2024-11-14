using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using Image = System.Web.UI.WebControls.Image;
using System.Web.UI;
using System.Web.Configuration;
//using Image = System.Drawing.Image;


namespace CameronIntima
{
    public class Producto
    {
        public int IdProducto { get; set; }
        public string Nombre { get; set; }
        public string Talle { get; set; }
        public decimal Precio { get; set; }
        public string DirImagen { get; set; }
    }

    public partial class Tienda : System.Web.UI.Page
    {
        private static readonly string Cadena = ConfigurationManager.ConnectionStrings["localHost"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarProductos();
            CargarImagenes();
            //btnPrevious = (Button)FindControl("btnPrevious"); 
            //btnNext = (Button)FindControl("btnNext");
        }
        private void CargarProductos()
        {
            List<Producto> productos = CargaDeDatos();
            if (productos != null)
            {
                repeaterProductos.DataSource = productos;
                repeaterProductos.DataBind();
            }
        }

        private void CargarImagenes()
        {
            int pageIndex = 0;
            int pageSize = 9;

            if (Request.QueryString["page"] != null)
            {
                pageIndex = Convert.ToInt32(Request.QueryString["page"]);
            }

            List<Producto> productos = CargaDeDatos();
            if (productos == null) return;

            int startIndex = pageIndex * pageSize;

            for (int i = 1; i <= pageSize; i++)
            {
                if (startIndex + i - 1 >= productos.Count) break;

                Producto producto = productos[startIndex + i - 1];
                Image imgControl = (Image)FindControlRecursive(this, "imgProd" + i);
                HyperLink hlNombre = (HyperLink)FindControlRecursive(this, "hlNombre" + i);
                Label lblPrecio = (Label)FindControlRecursive(this, "lblPrecio" + i);
                Label lblTalle = (Label)FindControlRecursive(this, "lblTalles" + i);

                if (imgControl != null)
                {
                    imgControl.ImageUrl = producto.DirImagen;
                }
                else
                {
                    Console.WriteLine($"Control con ID imgProd{i} no encontrado o no es del tipo Image.");
                }

                if (hlNombre != null)
                {
                    hlNombre.Text =  producto.Nombre;
                    hlNombre.NavigateUrl = $"FotoLink.aspx?idProducto={producto.IdProducto}&dirImagen={producto.DirImagen}";
                }

                if (lblPrecio != null)
                {
                    lblPrecio.Text = producto.Precio.ToString("C");
                }

                if (lblTalle != null)
                {
                    lblTalle.Text = "Talles: " + producto.Talle;
                }
            }



            //btnPrevious.Visible = pageIndex > 0;
            //btnNext.Visible = startIndex + pageSize < imagenes.Count;
        }


        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            //int pageIndex = Convert.ToInt32(Request.QueryString["page"] ?? "0") - 1;
            //Response.Redirect("TuPagina.aspx?page=" + pageIndex);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            //int pageIndex = Convert.ToInt32(Request.QueryString["page"] ?? "0") + 1;
            //Response.Redirect("TuPagina.aspx?page=" + pageIndex);
        }





        private static List<Producto> CargaDeDatos()
        {
            using (SqlConnection connection = new SqlConnection(Cadena))
            {
                try
                {
                    List<Producto> productos = new List<Producto>();

                    string script = "SELECT idProducto, nombre, talle, precio, dirImagen FROM [dbo].[producto] ORDER BY idProducto";
                    SqlCommand command = new SqlCommand(script, connection);

                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Producto producto = new Producto
                        {
                            IdProducto = reader.GetInt32(0),
                            Nombre = reader.GetString(1),
                            Talle = reader.GetString(2),
                            Precio = reader.GetDecimal(3),
                            DirImagen = reader.GetString(4)
                        };
                        productos.Add(producto);
                    }

                    reader.Close();
                    connection.Close();

                    return productos;
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.Message);
                    return null;
                }
            }
        }




        private Control FindControlRecursive(Control root, string id)
        {
            if (root.ID == id)
            {
                return root;
            }

            foreach (Control child in root.Controls)
            {
                Control foundControl = FindControlRecursive(child, id);
                if (foundControl != null)
                {
                    return foundControl;
                }
            }

            return null;
        }

    }
}