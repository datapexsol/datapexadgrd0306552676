using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_view_client_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            viewData.Visible = true;

            DataTable dt = client.viewClients();

            /*************************************/
            DataTable newdt = new DataTable();//for filtering data
            newdt.Columns.Add("Id", typeof(string));
            newdt.Columns.Add("Name", typeof(string));

            newdt.Columns.Add("Relation", typeof(string));
            newdt.Columns.Add("Cnic", typeof(string));
            newdt.Columns.Add("Occupation", typeof(string));
            newdt.Columns.Add("Present Address", typeof(string));
            newdt.Columns.Add("Telephone", typeof(string));
            newdt.Columns.Add("Mobile No", typeof(string));
            newdt.Columns.Add("Email", typeof(string));
            newdt.Columns.Add("Permanent Address", typeof(string));
            newdt.Columns.Add("Nominee Name", typeof(string));
            newdt.Columns.Add("Nominee Address", typeof(string));
            newdt.Columns.Add("Nominee Cnic", typeof(string));
            newdt.Columns.Add("No", typeof(string));

            foreach (DataRow row in dt.Rows)
            {
                DataRow nrow = newdt.NewRow();  //creating newRow
                nrow["Id"] = row["Id"];
                nrow["Name"] = row["name"];
                nrow["Relation"] = row["relation_of"];
                nrow["Cnic"] = row["applicant_cnic"];
                nrow["Occupation"] = row["occupation"];
                nrow["Present Address"] = row["present_address"];
                nrow["Telephone"] = row["telephone"];
                nrow["Mobile No"] = row["mobile"];
                nrow["Email"] = row["email"];
                nrow["Permanent Address"] = row["permanent_address"];
                nrow["Nominee Name"] = row["nominee_name"];
                nrow["Nominee Address"] = row["nominee_address"];
                nrow["Nominee Cnic"] = row["nominee_cnic"];
                nrow["No"] = row["nominee_no"];


             newdt.Rows.Add(nrow);
            }



            /*******************************/



            GridView2.DataSource = newdt;
            GridView2.DataBind();
        }
        else
        {
            if (searchtb.Text == "")
            {

                DataTable dt = client.viewClients();
                /*************************************/
                DataTable newdt = new DataTable();//for filtering data
                newdt.Columns.Add("Id", typeof(string));
                newdt.Columns.Add("Name", typeof(string));

                newdt.Columns.Add("Relation", typeof(string));
                newdt.Columns.Add("Cnic", typeof(string));
                newdt.Columns.Add("Occupation", typeof(string));
                newdt.Columns.Add("Present Address", typeof(string));
                newdt.Columns.Add("Telephone", typeof(string));
                newdt.Columns.Add("Mobile No", typeof(string));
                newdt.Columns.Add("Email", typeof(string));
                newdt.Columns.Add("Permanent Address", typeof(string));
                newdt.Columns.Add("Nominee Name", typeof(string));
                newdt.Columns.Add("Nominee Address", typeof(string));
                newdt.Columns.Add("Nominee Cnic", typeof(string));
                newdt.Columns.Add("No", typeof(string));

                foreach (DataRow row in dt.Rows)
                {
                    DataRow nrow = newdt.NewRow();  //creating newRow
                    nrow["Id"] = row["Id"];
                    nrow["Name"] = row["name"];
                    nrow["Relation"] = row["relation_of"];
                    nrow["Cnic"] = row["applicant_cnic"];
                    nrow["Occupation"] = row["occupation"];
                    nrow["Present Address"] = row["present_address"];
                    nrow["Telephone"] = row["telephone"];
                    nrow["Mobile No"] = row["mobile"];
                    nrow["Email"] = row["email"];
                    nrow["Permanent Address"] = row["permanent_address"];
                    nrow["Nominee Name"] = row["nominee_name"];
                    nrow["Nominee Address"] = row["nominee_address"];
                    nrow["Nominee Cnic"] = row["nominee_cnic"];
                    nrow["No"] = row["nominee_no"];


                    newdt.Rows.Add(nrow);
                }



                /*******************************/
                GridView2.DataSource = newdt;
                GridView2.DataBind();
            }
            else
            {
                GridView2.DataSource = client.viewClients(searchtb.Text);
                GridView2.DataBind();
            }
        }
    }
    protected void GridView2_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        //Button1_Click(this, e);
        Page_Load(this, e);
    }

    protected void GridView2_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView2.Rows[e.RowIndex];
        
        int cId = Convert.ToInt32(GridView2.Rows[e.RowIndex].Cells[1].Text); //Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Values[0]);
        // string id = ((TextBox)GridView2.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string name = ((TextBox)GridView2.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string sof = ((TextBox)GridView2.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string cnic = ((TextBox)GridView2.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string occupation = ((TextBox)GridView2.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string paddress = ((TextBox)GridView2.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string telephon = ((TextBox)GridView2.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string mobile = ((TextBox)GridView2.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        string email = ((TextBox)GridView2.Rows[e.RowIndex].Cells[10].Controls[0]).Text;
        string peraddress = ((TextBox)GridView2.Rows[e.RowIndex].Cells[11].Controls[0]).Text;
        string nname = ((TextBox)GridView2.Rows[e.RowIndex].Cells[12].Controls[0]).Text;
        string naddress = ((TextBox)GridView2.Rows[e.RowIndex].Cells[13].Controls[0]).Text;
        string ncnic = ((TextBox)GridView2.Rows[e.RowIndex].Cells[14].Controls[0]).Text;
        string nno = ((TextBox)GridView2.Rows[e.RowIndex].Cells[15].Controls[0]).Text;
        string rno = ((TextBox)GridView2.Rows[e.RowIndex].Cells[16].Controls[0]).Text;
        FileUpload fu = (FileUpload)row.FindControl("FileUpload2");
        if (!fu.HasFile)
        {
            byte[] imagebinary = client.getimage(cId);
            //  fu.PostedFile.InputStream.Read(imagebinary, 0, length);


            client.updatclient(cId, name, sof, cnic, occupation, paddress, telephon, mobile, email, peraddress, nname, naddress, cnic, nno, imagebinary, rno);
        }
        else
        {
            int length = fu.PostedFile.ContentLength;
            byte[] imagebinary = new byte[length];
            fu.PostedFile.InputStream.Read(imagebinary, 0, length);


            client.updatclient(cId, name, sof, cnic, occupation, paddress, telephon, mobile, email, peraddress, nname, naddress, cnic, nno, imagebinary, rno);
        }
        GridView2.EditIndex = -1;
        Button1_Click(this, e);
    }

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            viewData.Visible = true;
            
            DataTable dt = client.viewClients();
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int cid = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Values[0]);
        client.deleteInstallments(cid);
        //Button1_Click(this, e);
        Page_Load(this, e);
    }

    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        DataTable dt = client.viewClients();
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }

    protected void searchbtn_Click(object sender, EventArgs e)
    {
        Page_Load(this, e);
    }
}