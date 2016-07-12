using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;

public partial class contect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mailMessage = new MailMessage();
            mailMessage.To.Add("waqaskhan132@gmail.com");
            mailMessage.From = new MailAddress("perveez@admasgarden.com");
            mailMessage.Subject = "ASP.NET e-mail test";
            mailMessage.Body = "Hello world,\n\nThis is an ASP.NET test e-mail!";
            // SmtpClient smtpClient = new SmtpClient("smtp.your-isp.com");
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.UseDefaultCredentials = true;
            smtpClient.Send(mailMessage);
            Response.Write("E-mail sent!");

     
            System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
           


        }
       
    
        catch (Exception ex)
        {
            Response.Write("Could not send the e-mail - error: " + ex.Message);
        }
    }
}