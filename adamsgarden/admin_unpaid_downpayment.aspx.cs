using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class property_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindGridView();
        }
        else
        {
           
            if (searchtb.Text != "")
            {
                DataTable dt = property.searchUnpaidDownpaymentCLient(searchtb.Text);
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }
        }
    protected void searchbtn_Click(object sender, EventArgs e)
    {
        Page_Load(this, e);
    }
    protected void bindGridView()
    {
        // Bind the GridView control.
        DataTable dt = property.unpaidDownpaymentClient();
       
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        // bindGridView();
        Page_Load(this, e);
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string id = GridView1.Rows[e.RowIndex].Cells[1].Text;
        string name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        string cnic = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
      
        string relation = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
        string address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
        string profession = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
        string phone = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;

        bool check = property.updateMembership(id,name,cnic,relation,address,profession,phone);
    //   bool check = cnic);

        GridView1.EditIndex = -1;
        bindGridView();
      //  Page_Load(this, e);
    }
   
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bindGridView();
        Page_Load(this, e);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.Rows[e.RowIndex].Cells[2].Text;
        bool check = property.deleteProperty(id);

        bindGridView();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                // Add client-side confirmation when deleting.
               // ((LinkButton)e.Row.Cells[1].Controls[0]).Attributes["onclick"] = "if(!confirm('Are you sure you want to delete?')) return false;";
            }
        }
    }

    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        // bindGridView();
        Page_Load(this, e);
    }

   
}


