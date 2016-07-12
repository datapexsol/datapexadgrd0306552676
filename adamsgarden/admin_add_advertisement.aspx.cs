using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_add_advertiement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        pnlAdd.Visible = true;

    }
    protected void Add_Click(object sender, EventArgs e)
    {
       // lbtnAdd.Visible = false;
        pnlAdd.Visible = true;
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string status1 = tbstatus.Text;

        int img = FileUpload1.PostedFile.ContentLength;

        byte[] msdata = new byte[img];

        FileUpload1.PostedFile.InputStream.Read(msdata, 0, img);
        bool check = advertisement.insertAdvertisement(msdata, status1);

       // lbtnAdd.Visible = true;
        pnlAdd.Visible = true;

     
    }
   
}