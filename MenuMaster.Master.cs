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
            //{
            //    if (!Page.IsPostBack)
            //    {
            //        if (Session["Usuario"] == null)
            //        {
            //            Response.Redirect("LogUserLogin.aspx");
            //        }
            //        else
            //        {
            //            if (Session["Usuario"].ToString() != String.Empty)
            //                Response.Redirect("LogUserLogin.aspx");
            //        }
            //    }
            //}
        }
    }
}    