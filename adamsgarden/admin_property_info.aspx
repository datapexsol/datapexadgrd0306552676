<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="admin_property_info.aspx.cs" Inherits="property_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
 
        .button{
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
            margin-left:1%;
            background-color:#C19F45;
            color:white;
            width:106%;
            text-align:center;
            padding-top:1%;
            padding-bottom:1%;
        }
        .nointernaldiv{
            width:30%;
            float:left;
            display:block;
        }
        .radioninternalclass{
            width:70%;
            float:left;
            display:block;
        }
        .paymentradiolabel{
             width:20%;
             text-align: left;
             margin-right:2%;
             height:10%;
             float:left;
             display:block;
        }
        .shorttb{
            width:100%;
            margin-right:3%;
        }
        .shortgroupdiv{
            width:50%;
            float:left;
        }
        .midgroupdiv{
            width:33.33%;
            float:left;
        }
        .longgrouptb{
            width:100%;
            clear:both;
        }
        .clear{clear:both;}
        .radioitem{
            width:8%;
             text-align: left;
             margin-right:2%;
             height:10%;
             float:left;
             display:block;

        }
        .radioitem1{
            width:12%;
             text-align: left;
             margin-right:2%;
             height:10%;
             float:left;
             display:block;

        }
        .noinradio{
            width:50%;
             text-align: left;
             height:20%;

        }
        #save{
            width:20%;
        }
        .adamscontent{
            margin-left:5%;
            color:white;
            width:80%;
            text-align:center;
            padding-top:5%;
            padding-bottom:5%;
        }
        .dawnpayment{
            margin-left:0%;
            background-color:#C19F45;
            color:white;
            width:100%;
            text-align:center;
            padding-top:1%;
            padding-bottom:1%;
        }
        .logo_image{
            margin-left:11%;
             float:left;
             display:block;
             width:200px;
             height:200px;
             border:2px solid black;
        }
        .logo_image img{
            width:100%;
            height:100%;
        }
        .client_image{
            margin-left:50%;
            float:left;
           
             width:200px;
             height:200px;
             
        }
        .client_image img{
            margin-top:1%;
             width:100%;
            height:100%;
        }
        .btn{
          background-color:#C19E45;
          color:white;
          border-color:#C19E45;
        }
       .adamcontent{
          
          width:100%;
         padding: 6px 12px;
    line-height: 1.428571429;
    color: #555;
    vertical-align: auto;
    background-color: #F1F4F7;
    
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
    -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
       }
       .adamcontent h1{
           font-size:2.5em;
       }
       .adamcontent h2{
           font-size:1.0em;
       }
       .adamcontent h3{
           font-size:.5em;
       }
       .validationtxt{float:right;color:red;margin-right:10px;}
        .validationradio{float:left;color:red;margin-right:10px;}
           .gridviewmargin{
        margin-left:-5%;
        margin-right:28%;
        
    }
                 .header{
        margin-left:30%;
        margin-right:10%;
        
    }  
    </style>
<script language="javascript" type="text/javascript">
$(function () {
    $(":file").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
            alert(this.files[0]);
        }
    });
});





</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
 <div class="header">
    
      <div class="container">
           <div class="row">
            <h2 class="downpayment">Property Information</h2>
           

      
      <asp:TextBox ID="searchtb" runat="server" Font-Bold="True" placeholder="Search client by CNIC"></asp:TextBox>
          
          
      <asp:Button ID="searchbtn" runat="server" Text="Search"  class="btn btn" OnClick="searchbtn_Click"/>
               <br /><br />
               
                        <asp:Panel runat="server" Width="170%">
                            <div style="width: 64%; height:50%; overflow: scroll">
                            <asp:GridView ID="GridView1" runat="server"  CellSpacing="1" AutoGenerateColumns="False" BackColor="White"  BorderColor="#C19E45" BorderStyle="None"  CellPadding="1"  PageSize="7" style="margin-left: 9px;"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" AllowSorting="True" Height="40px" Width="107%" >
       
                                <RowStyle BackColor="White" ForeColor="#000000" />
                                <Columns>
                                <asp:CommandField ShowEditButton="True" />
               
                                  <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True"/>           

                                         <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True"  />
                                         <asp:BoundField DataField="applicant_cnic" HeaderText="CNIC" ReadOnly="True"  />
                                         <asp:BoundField DataField="plot_no" HeaderText="Plot No" ReadOnly="True"  />
                                         <asp:BoundField DataField="registrationo" HeaderText="RegNo" ReadOnly="True"  />
                                        <asp:BoundField DataField="plot_size" HeaderText="Plot Size" ReadOnly="True"  />

                                        <asp:TemplateField HeaderText="Street No" >
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("street_no") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("street_no") %>' Width="50px"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Plot Address">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("plot_address") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("plot_address") %>' Width="150px"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                
                                        <asp:TemplateField HeaderText="Owner Name">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("owner_property_name") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("owner_property_name") %>' Width="50px"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Owner address">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("owner_property_address") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("owner_property_address") %>' Width="150px"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Property Type">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("property_type") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("property_type") %>' ></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Owner CNIC">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("owner_property_cnic") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("owner_property_cnic") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

               



                                    </Columns>
                                    <FooterStyle BackColor="#99CCCC" ForeColor="#000000" />
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#000000" HorizontalAlign="Left" />
                                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#CCCCFF" />
                        <AlternatingRowStyle BackColor="#CCCCCC" />        </asp:GridView>
                                </div>

                        </asp:Panel>
                </div>
                   </div>
            
       </div>			
	
         <!--   <div class="logo_image">
                  <img src="Images/logo.jpg"/>
                  
            </div>-->
            
            <div class="clear"></div>    

    
</asp:Content>

