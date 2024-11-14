using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameronIntima
{
    public partial class MenuMaster : System.Web.UI.MasterPage
    {

        private static string Cadena = ConfigurationManager.ConnectionStrings["localHost"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) { if (Session["Usuario"] == null) { linkLabel.Visible = false; linkLabel.Enabled = false; } else { linkLabel.Visible = true; linkLabel.Enabled = true; } }

            //if (!Page.IsPostBack)
            //{
            //    if (Session["Usuario"] == null)
            //    {
            //        linkLabel.Visible = true;
            //        linkLabel.Enabled = true;
            //        //Response.Redirect("LogUserLogin.aspx");
            //    }
            //    else
            //    {
            //        linkLabel.Visible = false;
            //        linkLabel.Enabled = false;
            //        //if (Session["Usuario"].ToString() != String.Empty)
            //        //    Response.Redirect("LogUserLogin.aspx");
            //    }
            //}
            
        }

        protected void IdBuscar_Click1(object sender, EventArgs e)
        {
            //if(txtNombre.txt == "")
            //if(txtNombre.txt == String.Empty
            //if(string.isNullOrEmpty(txtNombre.txt))
            //Label2.Text = txtNombre.text + "" + txtApellido.text
            //Response.Redirect("Inicio.aspx?id=" + TxbBuscar.Text);
            //Response.Redirect("Inicio.aspx?id=" + TxbBuscar.Text + "&id2" + ID2.txt + "&id3" + ID3.txt);
            //using (SqlConnection conn = new SqlConnection(Cadena))
            //{
            //    string script = "SELECT * FROM LIBROS WHERE ID= 2";

            //    conn.Open();

            //    SqlCommand command = new SqlCommand(script, conn);
            //    SqlDataReader reader = command.ExecuteReader();

            //    if (reader.HasRows)
            //    {
            //        while (reader.Read())
            //        {
            //            string id = reader.GetInt32(0).ToString();
            //        }
            //    }
            //    reader.Close();
            //    conn.Close();
            //}

        }



        //no tocar
    }
}    