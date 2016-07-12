<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="admin_view_client_detail.aspx.cs" Inherits="admin_view_client_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
      .header{
        margin-left:35%;
        margin-right:10%;
        
    }
       .gridviewmargin{
        margin-left:20%;
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
       <h2 class="downpayment">Client Detail</h2>
            
            
              
                   <asp:TextBox ID="searchtb" runat="server" Font-Bold="True" placeholder="Search client by CNIC"></asp:TextBox>
              
      <asp:Button ID="searchbtn" runat="server" Text="Search"  class="btn btn" OnClick="searchbtn_Click" />
                       
                <br /><br />
                
                    <asp:Panel ID="viewData" runat="server" Visible="true">
                                           <div style="width: 102%; height:30%; overflow: scroll">

                    
             <asp:GridView ID="GridView2"  runat="server" AllowPaging="true" PageSize="5" AutoGenerateEditButton="True" 
                 OnRowEditing="GridView2_RowEditing1" OnRowUpdating="GridView2_RowUpdating1" 
                 OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" 
                 OnPageIndexChanging="GridView2_PageIndexChanging"  AutoGenerateColumns="true" >
           
                 


                <FooterStyle BackColor="#99CCCC" ForeColor="#000000" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#000000" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#DED77C" ForeColor="Black" />
            <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#CCCCFF" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
             
             
        <asp:TemplateField HeaderText="Image">
            <EditItemTemplate >
                   <asp:FileUpload ID="FileUpload2"  runat="server" EnableViewState="true"/>
                </EditItemTemplate>
        <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" 
                   ImageUrl='<%# "readimage.ashx?ID=" + Convert.ToString(Eval("id"))%>'/>
        </ItemTemplate>
        </asp:TemplateField>
     
        </Columns>        
  
<FooterStyle BackColor="#99CCCC" ForeColor="#000000" />
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#000000" HorizontalAlign="Left" />
                                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#CCCCFF" />
                        <AlternatingRowStyle BackColor="#CCCCCC" />     
                </asp:GridView>
                
                
                
                
                </div>
        </asp:Panel>
          </div>
</asp:Content>

