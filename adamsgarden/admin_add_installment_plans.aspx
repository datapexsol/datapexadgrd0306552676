<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="admin_add_installment_plans.aspx.cs" Inherits="admin_add_installment_plans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gridviewmargin{
        margin-left:30%;
        margin-right:10%;
        
    }  
            .button{
        margin-left:30%;
        margin-right:10%;
        
    }
       .Employepanel{
    margin-top:100px;
}
        
        .inserttable {
            margin-left: 0px;
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
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="gridviewmargin">
    <div class="content-wrapper new-class">
      <div class="container">

           <div class="row">
               <h2 class="downpayment">Add Installment Plan</h2>

    <asp:Panel ID="pnlAdd" runat="server" Visible="False" cssClass="inserttable" Width="1070px">
            <div class="form-group midgroupdiv">
            Enter Installment cost per month :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbinstallmentcost" ErrorMessage="Enter monthly installment cost ! " Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="tbinstallmentcost" runat="server" class="form-control input-sm midtb"></asp:TextBox>
            </div>
            
            <div class="form-group midgroupdiv">
            Enter duration:
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbFirstName" ErrorMessage="Enter duration !" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="tbFirstName" runat="server" class="form-control input-sm midtb"></asp:TextBox>
                </div>
            <br />
            <div class="form-group midgroupdiv">
            Enter plot size:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbplotsize" ErrorMessage="Enter plot size (Marla/Kanal) !" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:TextBox ID="tbplotsize" runat="server" class="form-control input-sm midtb"></asp:TextBox>
                </div>
            <br />
             <div class="form-group midgroupdiv">
            Enter downpayment cost:
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbdownpayment" ErrorMessage="Enter down payment amount!" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:TextBox ID="tbdownpayment" runat="server" class="form-control input-sm midtb"></asp:TextBox>
            </div>

            <br />
            <div class="form-group midgroupdiv">

            Enter lum sum discount :
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tblumsum" ErrorMessage="Enter lum sum discount !" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:TextBox ID="tblumsum" runat="server" class="form-control input-sm midtb"></asp:TextBox>
            </div>
            <br />
            <div class="form-group midgroupdiv">

            Enter size(width x height):
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbsize" ErrorMessage="Enter width x height !" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:TextBox ID="tbsize" runat="server" class="form-control input-sm midtb"></asp:TextBox>
            </div>
            <br />
            <div class="form-group midgroupdiv">

            Enter total cost:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbtotalcost" ErrorMessage="Enter total cost !" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:TextBox ID="tbtotalcost" runat="server" class="form-control input-sm midtb"></asp:TextBox>
            </div>
            <br />
            <div class="form-group midgroupdiv">

            Enter mebership fee:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbmembershipfee" ErrorMessage="Enter membership fee !" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:TextBox ID="tbmembershipfee" runat="server" class="form-control input-sm midtb"></asp:TextBox>
            </div>
            <br />
             <asp:Button ID="lbtnSubmit" runat="server" Text="Add" OnClick="lbtnSubmit_Click" class="btn btn-default" Width="75px" />

            &nbsp;&nbsp;&nbsp;

            
        </asp:Panel>
               </div></div></div></div>
</asp:Content>

