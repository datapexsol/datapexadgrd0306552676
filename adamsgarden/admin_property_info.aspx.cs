using System;
using System.Collections.Generic;
using System.Data;
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
            // Bind the GridView control.
            bindGridView();

        }
        if(searchtb.Text != "")
        {
            DataTable dt = property.searchPropertyDetailByCnic(searchtb.Text);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        /*        else
                {
                    if (searchtb.Text == "")
                    {
                        bindGridView();
                    }
                    else
                    {
                        DataTable dt = property.searchPropertyDetailByCnic(searchtb.Text);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                    }
                }*/
        }
        protected void searchbtn_Click(object sender, EventArgs e)
        {
            Page_Load(this, e);
        }
        protected void bindGridView()
        {
            // Bind the GridView control.
            DataTable dt = property.view();

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
            string plot_no = GridView1.Rows[e.RowIndex].Cells[4].Text;
            string plot_size = GridView1.Rows[e.RowIndex].Cells[6].Text;
            //  string plot_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            // string plot_size = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            string street_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            string plot_address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            string owner_property_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            string owner_property_address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            string property_type = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text;
            string owner_property_cnic = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9")).Text;

            bool check = property.updateProperty(id, plot_no, plot_size, street_no, plot_address, owner_property_name, owner_property_address, property_type, owner_property_cnic);

            GridView1.EditIndex = -1;
            bindGridView();
    //       Page_Load(this, e);


        }


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            //bindGridView();
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

            /*   if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState == DataControlRowState.Edit)
               {
                   // Comments
                   TextBox comments = ((TextBox)e.Row.Cells[0].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;
                   comments = (TextBox)e.Row.Cells[4].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;
                   comments = (TextBox)e.Row.Cells[5].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;
                   comments = (TextBox)e.Row.Cells[6].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;
                   comments = (TextBox)e.Row.Cells[7].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;
                   comments = (TextBox)e.Row.Cells[8].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;
                   comments = (TextBox)e.Row.Cells[9].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;
                   comments = (TextBox)e.Row.Cells[10].Controls[0];
                   comments.TextMode = TextBoxMode.MultiLine;
                   comments.Height = 40;
                   comments.Width = 120;*/
        // Make sure the current GridViewRow is either 
        // in the normal state or an alternate row.
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

/*


    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowState == DataControlRowState.Edit)
        {
            // Comments
            TextBox comments = (TextBox)e.Row.Cells[3].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;
            comments = (TextBox)e.Row.Cells[4].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;
            comments = (TextBox)e.Row.Cells[5].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;
            comments = (TextBox)e.Row.Cells[6].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;
            comments = (TextBox)e.Row.Cells[7].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;
            comments = (TextBox)e.Row.Cells[8].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;
            comments = (TextBox)e.Row.Cells[9].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;
            comments = (TextBox)e.Row.Cells[10].Controls[0];
            comments.TextMode = TextBoxMode.MultiLine;
            comments.Height = 40;
            comments.Width = 120;

        }

    }
    Chat Conversation End

}*/
