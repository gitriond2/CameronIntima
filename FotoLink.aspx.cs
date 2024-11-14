using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameronIntima
{
    public partial class FotoLink : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dirImagen = Request.QueryString["dirImagen"];
            if (!string.IsNullOrEmpty(dirImagen)) { ImagenProducto.ImageUrl = ResolveUrl(dirImagen); }
            else
            {
                // Manejo de error si no se proporciona un dirImagen
                ImagenProducto.AlternateText = "Imagen no disponible.";
            }
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("vistaprod.aspx", false);
        }
    }
}