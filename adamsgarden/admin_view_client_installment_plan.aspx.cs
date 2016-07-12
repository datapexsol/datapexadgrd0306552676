using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_client_installmentplan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //viewData.Visible = false;
        clientpaymentplan.Visible = true;
        if (!IsPostBack)
        {
            if (Search.Text == "")//when search box will b null it will get allrecords 
            {
               // paymentplan_client.DataSource = installment.getClientInstallmentPlan();
                DataTable dt = installment.getClientInstallmentPlan(); 
                //adjusting column name
                DataTable newdt = new DataTable();//for filtering data
                
                newdt.Columns.Add("Name", typeof(string));

                newdt.Columns.Add("Cnic", typeof(string));
                newdt.Columns.Add("Total Cost", typeof(string));
                newdt.Columns.Add("Duration", typeof(string));
                newdt.Columns.Add("Plot Size", typeof(string));
                newdt.Columns.Add("Down Payment Cost", typeof(string));
                newdt.Columns.Add("Lum Sum Discount", typeof(string));
                newdt.Columns.Add("Dimensions of Plot", typeof(string));
                newdt.Columns.Add("Membership Fee", typeof(string));
                newdt.Columns.Add("Regno", typeof(string));
                foreach (DataRow row in dt.Rows)
                {
                    DataRow nrow = newdt.NewRow();  //creating newRow
                   
                    nrow["Name"] = row["name"];
                    nrow["Cnic"] = row["applicant_cnic"];
                    nrow["Total Cost"] = row["Amount"];
                    nrow["Duration"] = row["Duration"];
                    nrow["Plot Size"] = row["PlotSize"];
                    nrow["Down Payment Cost"] = row["DownPayment"];
                    nrow["Lum Sum Discount"] = row["Lumsum_Discount"];
                    nrow["Dimensions of Plot"] = row["Marla"];
                    nrow["Membership Fee"] = row["Membershipfee"];
                    nrow["Regno"] = row["Regno"];

                    newdt.Rows.Add(nrow);

                }
                paymentplan_client.DataSource = newdt;
                paymentplan_client.DataBind();
            }
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        paymentplan_client.DataSource = installment.getClientInstallmentPlanByCnic(Search.Text);
        paymentplan_client.DataBind();
    }

    protected void paymentplan_client_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        paymentplan_client.PageIndex = e.NewPageIndex;
        paymentplan_client.DataSource = installment.getClientInstallmentPlan();
        paymentplan_client.DataBind();
    }
}