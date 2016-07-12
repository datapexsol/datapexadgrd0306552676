using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_client_transfer_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            pid.Visible = true;
            pnlAdd.Visible = false;
        }
        
    }

    protected void lbtnSubmit_Click(object sender, EventArgs e)
    {
        string path = HttpContext.Current.Server.MapPath("/Captures/Buyer.jpg");
        byte[] clientImage = File.ReadAllBytes(path);
        clientTransferForm.InsertBuyerData(tbregno.Text,tbname.Text, tbrelation.Text, tbcnic.Text, tboccupation.Text, tbpaddress.Text, tbtel.Text, tbmobile.Text, tbemail.Text, tbpaddress.Text, tbnomineename.Text, tbnomineeaddress.Text, tbnomineecnic.Text,tbnomineeno.Text, clientImage);
        if (File.Exists(path))
        {
            File.Delete(path);

        }
        Response.Redirect("/admin_client_Transfer");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         if (clientTransferForm.CheckPlotAvailbiltyAndTransfer(tbregno.Text) == true)
          {
              pid.Visible = false;
              pnlAdd.Visible = true;
              tbpregno.Text = tbregno.Text;
          }
    }
}