using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Collections.Generic;
using System.Linq;
//using System.Web;

namespace CameronIntima.CLASES
{

    
        public class ClaseSQL
        {
            private static string Cadena = ConfigurationManager.ConnectionStrings["LocalHost"].ConnectionString;

            public static bool EjecutarScript(string Dato)
            {
                using (SqlConnection conn = new SqlConnection(Cadena))
                {

                    conn.Open();

                    SqlCommand command = new SqlCommand(Dato, conn);
                    //SqlDataReader reader = command.ExecuteReader();
                    int filas = command.ExecuteNonQuery();

                    if (filas > 0)
                    {
                        conn.Close();
                        return true;
                    }
                    else
                    {
                        conn.Close();
                        return false;
                    }
                    //if (reader.HasRows)
                    //{
                    //    while (reader.Read())
                    //    {
                    //        string id = reader.GetInt32(0).ToString();
                    //    }
                    //}
                    //reader.Close();

                }

            }
        }
   
}

