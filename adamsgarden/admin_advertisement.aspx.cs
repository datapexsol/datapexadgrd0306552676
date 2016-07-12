using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewAdvertisement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }
    }
    protected void BindGridView()
    {
        /* SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
         SqlCommand cmd = new SqlCommand("select id,image,slider_status from admin_registeration.dbo.advertisement", conn);
         // SqlCommand cmd = new SqlCommand("select* from admin_registeration.dbo.advertisement where slider_status='advertisement'", conn);
         conn.Open();
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         DataTable dt = new DataTable();
         da.Fill(dt);
         conn.Close();*/
        DataTable dt = advertisement.bindAdvertisement();
        ad_id.DataSource = dt;
        ad_id.DataBind();
    }
   
   
   
    protected void gv_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        ad_id.EditIndex = -1;
        BindGridView();
    //    lbtnAdd.Visible = true;
    }
   
    protected void gv_RowEditing(object sender, GridViewEditEventArgs e)
    {
        ad_id.EditIndex = e.NewEditIndex;
        BindGridView();
       // lbtnAdd.Visible = false;
    }
    protected void gv_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)ad_id.Rows[index];

        Label eid = (Label)row.FindControl("id");


        FileUpload fu = (FileUpload)row.FindControl("FileUpload2");


        string id = ad_id.Rows[e.RowIndex].Cells[2].Text;
        string status = ((TextBox)ad_id.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        int img = fu.PostedFile.ContentLength;

        byte[] pic = new byte[img];
        fu.PostedFile.InputStream.Read(pic, 0, img);
        bool check = advertisement.updateAdvertisement(id, pic, status);

        /************************************************************/

        /**************************************************/
        ad_id.EditIndex = -1;
        //lbtnAdd.Visible = true;
        Response.Write("upload pic.");

        BindGridView();

    }
  

    protected void gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = ad_id.Rows[e.RowIndex].Cells[2].Text;
        bool check = advertisement.deleteAdvertisement(id);

        BindGridView();
    }
    /* public static DataTable returnAvertisementImage()
     {
         SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
         SqlCommand cmd = new SqlCommand("select image from admin_registeration.dbo.advertisement where slider_status='advertisement'", conn);
         conn.Open();
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         DataTable dt = new DataTable();
         da.Fill(dt);
         conn.Close();
         return dt;
     }
     public static DataTable returnSliderImage()
     {
         SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
         SqlCommand cmd = new SqlCommand("select image from admin_registeration.dbo.advertisement where slider_status='slider'", conn);
         conn.Open();
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         DataTable dt = new DataTable();
         da.Fill(dt);
         conn.Close();
         return dt;
     }*/

    protected void ad_id_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        ad_id.PageIndex = e.NewPageIndex;
        BindGridView();
    }
}