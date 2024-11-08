using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameronIntima
{
    public partial class Compras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }


        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //string comandName = e.CommandName;

            //int rowIndex = Convert.ToInt32(e.CommandArgument);

            //GridViewRow row = GridView2.Rows(rowIndex);
            


            //if (e.CommandName == "Editar")
            //{
            //    try
            //    {
            //        // Convertir el argumento a índice de fila.
            //        int index = int.Parse(e.CommandArgument.ToString());

            //        // Obtener el ID de la fila seleccionada.
            //        string id = GridView2.DataKeys[index].Value.ToString();

            //        // Redirigir a la página de modificación con el ID en la URL.               este tenes que revisar para darle los parametros para modificar en otra page
            //        Response.Redirect("Modificar.aspx?ID=" + id);
            //    }
            //    catch (Exception ex)
            //    {
            //        // Manejar errores, como índice fuera de rango o problemas de conversión.
            //        // Puedes usar una etiqueta en la página para mostrar el error o simplemente registrar el error.
            //        Response.Write("Error: " + ex.Message);
            //    }
            //}else if (e.CommandName == "Eliminar")
            //{

            //}
        }


        //protected void Editar_Click(object sender, EventArgs e)
        //{

        //}





        //no tocar
    }
}