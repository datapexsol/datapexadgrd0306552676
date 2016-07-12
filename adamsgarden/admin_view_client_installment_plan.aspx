<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="admin_view_client_installment_plan.aspx.cs" Inherits="View_client_installmentplan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
           .gridviewmargin{
        margin-left:28%;
        margin-right:1%;
        
    }
                 .header{
        margin-left:30%;
        margin-right:10%;
        
    }  
    .mybtns{
        width:25%;
        height:30%;
        background-color:#C19E45;
        border-color:#C19E45;
        margin-bottom:20px;
    }
     .downpayment{
            margin-left:0%;
            background-color:#C19F45;
            color:white;
            width:100%;
            text-align:center;
            padding-top:1%;
            padding-bottom:1%;
        }
    .mybtnsm{
        background-color:#C19E45;
        border-color:#C19E45;
        margin-top:4px;
        margin-bottom:10px;
    }
    .mybtnsm:hover{
        background-color:#DED77C;
        border-color:#C19E45;
    }
    .mybtns:hover{
        background-color:#DED77C;
        border-color:#C19E45;
    }
.Employepanel{
    margin-top:100px;
}
.alertcolor{
   background-color:#C19E45;
   filter: alpha(opacity=60);
   opacity: 0.7;
  /* CSS3 */
}
.alertlabel{
    color:red;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="header">                 
        <h2 class="downpayment">Client Installment Detail</h2>
         <asp:TextBox ID="Search" runat="server" placeholder="Enter CNIC no. of client" ></asp:TextBox>
              <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" class="btn btn" />
        <br /><br />    
   <!-- <div class="alert alert-success gridviewmargin alertcolor">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
      <asp:Label ID="alert" class="alertlabel" runat="server" Text="this label is not hiden" Visible="false" onchange="javascript: checkalert();"></asp:Label>
  </div>-->
    
               <asp:Panel ID="clientpaymentplan" runat="server" Visible="false" >
             
                  
               
              <div style=" height:30%; overflow: scroll">

               <asp:GridView ID="paymentplan_client" runat="server" Width="100%" AllowPaging="true" PageSize="7" OnPageIndexChanging="paymentplan_client_PageIndexChanging">
                   <FooterStyle BackColor="#99CCCC" ForeColor="#000000" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#000000" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#DED77C" ForeColor="Black" />
            <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#CCCCFF" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
               </asp:GridView>
               <asp:GridView ID="client_detail" runat="server" Width="100%"><FooterStyle BackColor="#99CCCC" ForeColor="#000000" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#000000" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#DED77C" ForeColor="Black" />
            <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#CCCCFF" />
        <AlternatingRowStyle BackColor="#CCCCCC" /></asp:GridView>
                   </div>
          </asp:Panel>
    </div>
</asp:Content>

