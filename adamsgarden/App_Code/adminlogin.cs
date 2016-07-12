using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adminlogin
/// </summary>
/// 
namespace adamsgarden
{
    public class adminlogin
{
        public adminlogin()
        {

        }
    
        // TODO: Add constructor logic here

            //
        
        public static bool login1(String username, string pass)
        {
            bool checkbool = false; 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            String query = "select * from admin_registeration.dbo.admin_reg_db where username='" + username + "' AND password='"+pass+"'";
            try
            {
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataSet ds = new DataSet();
                da.Fill(ds, "login");
                DataTable dt = ds.Tables["login"];
                int count = dt.Rows.Count;
                if (count >= 1)
                {
                    if (dt.Rows[0]["username"].ToString() == username && dt.Rows[0]["password"].ToString() == pass)
                    {
                        checkbool = true;
                    }
                }
                
            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e);
            }
            finally
            {
                conn.Close();
            }
           
            //  cmd.BeginExecuteNonQuery();

            conn.Close();
            return checkbool;
           
        }

}
}