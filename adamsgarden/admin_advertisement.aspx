<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="admin_advertisement.aspx.cs" Inherits="viewAdvertisement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      .gridviewmargin{
        margin-left:30%;
        margin-right:10%;
        
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
    .mybtns{
        width:25%;
        height:30%;
        background-color:#C19E45;
        border-color:#C19E45;
        margin-bottom:20px;
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
.panel{
    margin-left:30%;
        margin-right:10%;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="gridviewmargin">
       <div class="container">
           
                      <h2 class="downpayment">Advertisements</h2>
 <div style=" width:60%;height:30%; overflow: scroll">

        <asp:GridView ID="ad_id" runat="server" AutoGenerateColumns="False"  AllowPaging="true" PageSize="7" onrowediting="gv_RowEditing"  onrowupdating="gv_RowUpdating" onrowdeleting="gv_RowDeleting"
        onrowcancelingedit="gv_RowCancelingEdit" OnPageIndexChanging="ad_id_PageIndexChanging"  >
           
               
            <Columns>
            <asp:CommandField ShowEditButton="True"/>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" />
          
                <asp:TemplateField HeaderText="Images" >
                  <EditItemTemplate >
                   <asp:FileUpload ID="FileUpload2" FileName='<%# Eval("image")%>' runat="server" EnableViewState="true"/>
                </EditItemTemplate>
                
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server"  Height="100px" Width="100px" 
                            ImageUrl='<%#"data:Image/jpg;base64," + Convert.ToBase64String((byte[])Eval("image")) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="status" >
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("slider_status") %>' ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("slider_status") %>' Width="300px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 
                  

            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#CCCCFF" />
        </asp:GridView>
    </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </div> </div>
</asp:Content>

