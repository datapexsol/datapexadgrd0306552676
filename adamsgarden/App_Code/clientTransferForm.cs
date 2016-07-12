using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
/// <summary>
/// Summary description for clientTransferForm
/// </summary>
public class clientTransferForm
{
    public static bool CheckPlotAvailbiltyAndTransfer(string regno)
    {
        bool returnbool = false;
        string query = @"Select COUNT(*) as count_transfer
from Transfer_form
where regno = '"+regno+"'";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        int result =int.Parse(dt.Rows[0][0].ToString());
        if (result>=1)
        {
            returnbool = true;
            conn.Close();
        }
        return returnbool;

    }
    public static void InsertBuyerData(string regno,string name,string relation_of,string applicant_cnic,string occupation,string present_address,string telephone,string mobile,string email,string permanent_address,string nominee_name,string nominee_address,string nominee_cnic,string nominee_no,byte[] image)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        con.Open();
            string buyer = "buyer";
            string savequery = @"insert into Transfer_form_information(name,relation_of,applicant_cnic,occupation,present_address,telephone,mobile,email,permanent_address,nominee_name,nominee_address,nominee_cnic,nominee_no,image,type) 
                                                                    values('" + name + "','" + relation_of + "','" + applicant_cnic + "','" + occupation + "','" + present_address + "','" + telephone + "','" + mobile + "','" + email + "','" + permanent_address + "','" + nominee_name + "','" + nominee_address+ "','" + nominee_cnic+ "','" + nominee_no + "',@image,'" + buyer + "')";
           SqlCommand cmd = new SqlCommand(savequery, con);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.ExecuteNonQuery();
            tranfer_form.UpdatapropertOwner(name,applicant_cnic, permanent_address, regno);//update property owener information

    }
    }

