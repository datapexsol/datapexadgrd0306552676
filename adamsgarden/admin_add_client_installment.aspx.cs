using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_view_installment : System.Web.UI.Page
{
    private static string id;
    private static string name;
    private static string cnic;
    private static string phone;
    private static string telephone;
    private static string address;
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    public admin_view_installment()
    {
        id = "";
        name = "";
        cnic = "";
        phone = "";
        telephone = "";
        address = "";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
      //  lbviewpanel.Visible = false;

        if (!IsPostBack)
        {
       

            DataTable dt = installment.getAllclients();//get clientdata
            DataTable newdt = new DataTable();//for filtering data
            newdt.Columns.Add("id", typeof(string));
            newdt.Columns.Add("name", typeof(string));

            newdt.Columns.Add("Father/Husband", typeof(string));
            newdt.Columns.Add("cnic", typeof(string));
            newdt.Columns.Add("phone", typeof(string));
            newdt.Columns.Add("Telephone", typeof(string));
            newdt.Columns.Add("Present_Address", typeof(string));
            newdt.Columns.Add("Occupation", typeof(string));
            newdt.Columns.Add("Plot no", typeof(string));
            newdt.Columns.Add("RegNO", typeof(string));
            foreach (DataRow row in dt.Rows)
            {
                DataRow nrow = newdt.NewRow();  //creating newRow
                nrow["id"] = row["id"];
                nrow["name"] = row["name"];
                nrow["Father/Husband"] = row["relation_of"];
                nrow["cnic"] = row["applicant_cnic"];
                nrow["phone"] = row["mobile"];
                nrow["telephone"] = row["telephone"];
                nrow["Present_Address"] = row["present_Address"];
                nrow["Occupation"] = row["occupation"];
                nrow["plot no"] = row["plot_no"];
                nrow["RegNo"] = row["registrationo"];

                newdt.Rows.Add(nrow);

            }
         //   viewData.Visible = false;
         
            GridView1.DataSource = newdt;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        //  GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
        //  checking.Text = "dnt doo this";
        //  e.Cancel = true;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
        GridViewRow row = GridView1.SelectedRow;
      
        if (IsPostBack)
        {

            tbid.Value = row.Cells[1].Text.ToString();
            tbname.Text = row.Cells[2].Text.ToString();
            tbsof.Text = row.Cells[3].Text.ToString();
            tbcnic.Text = row.Cells[4].Text.ToString();
            tbPhone.Text = row.Cells[5].Text.ToString();
            telephone = row.Cells[6].Text.ToString();
            tbcurrentAddress.Text = row.Cells[7].Text.ToString();
            tbdate.Text = System.DateTime.Today.ToShortDateString().ToString();
            tbfavourof.Text = "Adam`s Garden(pvt.)Ltd.";
            tbjsbankaccout.Text = "0000760785";
            tbplotno.Text= row.Cells[9].Text.ToString();
            tbprofession.Text = row.Cells[8].Text.ToString();
            tbregno.Text= row.Cells[10].Text.ToString();
            /*   if (viewData.Visible == true)
               {
                 //  View_Click(this, e);//forupdating datagridview2 
                   lbviewpanel.Visible = false;
               }
               else
               {


               }*/
        }


        addpanel.Visible = true;
    }

   

    protected void cancelbtn_Click(object sender, EventArgs e)
    {
        addpanel.Visible = false;
       // Add.Visible = true;

    }

    protected void add_db_btn_Click(object sender, EventArgs e)
    {
       
        int property_id = 0;
        string result = installment.addpayment(int.Parse(tbid.Value), tranfer_form.getPropertyID(tbregno.Text), tbdate.Text, tbamount.Text, tbamountinwords.Text, tb_cash_paordernumber.Text, "installment", tbjsbankaccout.Text, tbfavourof.Text, "Cash", tbregno.Text);
        if (result== "")
        {
            id = "";
            tbname.Text = "";
            tbsof.Text = "";
            tbcnic.Text = "";
            tbPhone.Text = "";
            telephone = "";
            tbcurrentAddress.Text = "";
            tbdate.Text = "";
            tbfavourof.Text = "";
            tbjsbankaccout.Text = "";
            tbprofession.Text = "";
            tbamountinwords.Text = "";
            tbamount.Text = "";
            tb_cash_paordernumber.Text = "";
            addpanel.Visible = false;
        }
        else
        {
            ShowMessage(result, MessageType.Error);

        }
    }

  

    protected void GridView2_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }



    protected void installmentPlan(object sender, EventArgs e)
    {
        Response.Redirect("admin_installment_plan.aspx");
    }

    protected void installmentClick(object sender, EventArgs e)
    {
        Response.Redirect("admin_installment.aspx");
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        DataTable dt = installment.getAllclients();//get clientdata
        DataTable newdt = new DataTable();//for filtering data
        newdt.Columns.Add("id", typeof(string));
        newdt.Columns.Add("name", typeof(string));

        newdt.Columns.Add("Father/Husband", typeof(string));
        newdt.Columns.Add("cnic", typeof(string));
        newdt.Columns.Add("phone", typeof(string));
        newdt.Columns.Add("Telephone", typeof(string));
        newdt.Columns.Add("Present_Address", typeof(string));
        newdt.Columns.Add("Occupation", typeof(string));
        newdt.Columns.Add("Plot no", typeof(string));
        foreach (DataRow row in dt.Rows)
        {
            DataRow nrow = newdt.NewRow();  //creating newRow
            nrow["id"] = row["id"];
            nrow["name"] = row["name"];
            nrow["Father/Husband"] = row["relation_of"];
            nrow["cnic"] = row["applicant_cnic"];
            nrow["phone"] = row["mobile"];
            nrow["telephone"] = row["telephone"];
            nrow["Present_Address"] = row["present_Address"];
            nrow["Occupation"] = row["occupation"];
            nrow["plot no"] = row["plot_no"];

            newdt.Rows.Add(nrow);

        }
       // viewData.Visible = false;
       // lbviewpanel.Visible = false;
        GridView1.DataSource = newdt;
        GridView1.DataBind();
    }

/*    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        lbviewpanel.Visible = false;
        addpanel.Visible = false;
        viewData.Visible = false;
        DataTable dt = installment.getclientpayments(int.Parse(tbid.Value.ToString())); //get clientdata
        DataTable newdt = new DataTable();//for filtering data
        newdt.Columns.Add("Payment_id", typeof(string));
        newdt.Columns.Add("Date", typeof(string));
        newdt.Columns.Add("Amount", typeof(string));
        newdt.Columns.Add("Amount in words", typeof(string));
        newdt.Columns.Add("Property id", typeof(string));
        newdt.Columns.Add("In favour of", typeof(string));
        newdt.Columns.Add("Jsbank", typeof(string));
        newdt.Columns.Add("Cashpay order", typeof(string));
        newdt.Columns.Add("Payment type", typeof(string));
        newdt.Columns.Add("Payment made through", typeof(string));
        foreach (DataRow row in dt.Rows)
        {
            DataRow nrow = newdt.NewRow();  //creating newRow
            nrow["Payment_id"] = row["id"];
            nrow["Date"] = row["date"];
            nrow["Amount"] = row["payment_amount_in_RS"];
            nrow["Amount in words"] = row["payment_amount_in_wors"];
            nrow["Property id"] = row["property_id"];
            nrow["In favour of"] = row["infavour_of"];
            nrow["Jsbank"] = row["jsbankaccount"];
            nrow["Cashpay order"] = row["Cash_payorder_no"];
            nrow["Payment type"] = row["payment_type"];
            nrow["Payment made through"] = row["payment_made_through"];

            newdt.Rows.Add(nrow);

        }

        GridView2.DataSource = newdt;
        // ((BoundField)GridView2.Columns[1]).ReadOnly = true;
        GridView2.DataBind();
    }*/
}