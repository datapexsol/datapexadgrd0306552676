using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_downpayment : System.Web.UI.Page
{
    public enum MessageType { Success, Error, Info, Warning };
    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void searchbuttom_Click(object sender, EventArgs e)

    {
       
        bool check = applicant_info.checkClientByRegno(TextBox1.Text); 
            if (check == true)
        {
            Session["search"] = TextBox1.Text;
            Response.Redirect("admin_down_payment.aspx");

          

        }else
        {
            ShowMessage("No Member having regno  "+TextBox1.Text+"  Or unpayed Downpayment", MessageType.Error);
        }
        
    }
}