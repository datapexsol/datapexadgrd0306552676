﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logoutbtn_Click(object sender, EventArgs e)
    {
        Session["uname"] = null;
        Response.Redirect("login.aspx");
    }
    protected void extraButton_Click(object sender, EventArgs e)
    {
        for(int i =0 ; i<=10; i++)
        {
            extraClass.addFunction();
        }
        
        
    }
}