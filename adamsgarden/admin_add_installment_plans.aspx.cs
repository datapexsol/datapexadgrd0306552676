using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_add_installment_plans : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlAdd.Visible = true;
    }
    protected void lbtnSubmit_Click(object sender, EventArgs e)
    {

        bool check = installmentplan.insertInstallments(tbinstallmentcost.Text, tbFirstName.Text, tbplotsize.Text, tbdownpayment.Text, tblumsum.Text, tbsize.Text, tbtotalcost.Text, tbmembershipfee.Text);


        // Empty the TextBox controls.
        tbinstallmentcost.Text = "";
        tbFirstName.Text = "";
        tbtotalcost.Text = "";
        tbdownpayment.Text = "";
        tblumsum.Text = "";
        tbplotsize.Text = "";
        tbsize.Text = "";

       // lbtnAdd.Visible = true;
       // pnlAdd.Visible = false;
    }

   

}