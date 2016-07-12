<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="Admin_installment.aspx.cs" Inherits="Admin_installment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

          .button{
        margin-left:30%;
        margin-right:10%;
        
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
         .downpayment{
            margin-left:0%;
            background-color:#C19F45;
            color:white;
            width:100%;
            text-align:center;
            padding-top:1%;
            padding-bottom:1%;
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
        .button{
        margin-left:30%;
        margin-right:10%;
        
    }
    .gridviewmargin{
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
.gridviewmargin1{
        margin-left:29%;
        margin-right:10%;
        
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
 <script>
     function changeprogreesbar() {
         var elms = document.getElementsByClassName('pbwidth')
         for (var i = 0; i < elms.length; i++) {
             
                 elms[i].setAttribute("width", "50%");
            
         }
     }
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="clear"></div>
    <div class="gridviewmargin1">
    <div class="container">
        
                   <h2 class="downpayment">Client Installment Status</h2>
            <asp:TextBox ID="Search" runat="server" placeholder="Enter CNIC no. of client" ></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Search"  class="btn btn" OnClick="Button3_Click" />
         <asp:HiddenField ID="tbregno" runat="server" />
     <asp:HiddenField ID="tbid" runat="server" />
    <asp:HiddenField ID="pid" runat="server" />
    <asp:HiddenField ID="cinstallment" runat="server" Value="0" />
    <asp:HiddenField ID="tinstallment" runat="server" Value="0"/>
    <asp:HiddenField ID="percentage" runat="server" Value="0"/>
           <asp:Label ID="Label1" runat="server" Text="Installments Graph" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <div class="progress">
  <div class="progress-bar progress-bar-success" role="progressbar"

                    aria-valuenow=<%=int.Parse(percentage.Value)%> aria-valuemin="0" aria-valuemax="100" style="width:<%=int.Parse(percentage.Value)%>%;">
                           <%=int.Parse(percentage.Value.ToString())%>% &nbsp <%=cinstallment.Value +" paid"%>
             </div>
                        <div class="progress-bar progress-bar-danger" role="progressbar" style="width:<%=100-int.Parse(percentage.Value.ToString())%>%;">
                    <%=(100-int.Parse(percentage.Value))%>% &nbsp <%=(int.Parse(tinstallment.Value)-int.Parse(cinstallment.Value)) +" unpaid"%>
  </div>
</div>
      
        
   
    
         <asp:Panel ID="viewData" runat="server" Visible="false" >

             <br />
             <asp:Label ID="lbviewpanel" runat="server" Text="Installments Of Clients" Font-Bold="True" Font-Size="Large"></asp:Label>
             


             <br />
                                        <div style=" height:30%; overflow: scroll">

             <asp:GridView ID="GridView2" runat="server" DataKeyNames="Payment_id"   AutoGenerateEditButton="True" 
                 OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating"  OnItemDataBound="makeuneditable" 
                 OnRowDataBound="GridView2_RowDataBound" AllowCustomPaging="True" AllowPaging="True" AutoGenerateDeleteButton="True" 
                 OnRowCancelingEdit="GridView2_RowCancelingEdit" Width="100%" OnRowDeleting="GridView2_RowDeleting"
                  OnRowUpdated="GridView2_RowUpdated" OnPageIndexChanging="GridView2_PageIndexChanging" >
           
                 <FooterStyle BackColor="#C19E45" ForeColor="#000000" />
            <PagerStyle BackColor="#C19E45" ForeColor="#000000" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#DED77C" ForeColor="Black" />
            <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#CCCCFF" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
           
                </asp:GridView>
                </div>
                
                 
                
                
        </asp:Panel>
        <asp:Panel ID="Employepanel" runat="server" >
            <div style=" height:30%; overflow: scroll">

            <asp:Label ID="Label12" runat="server" Text="Client Information" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
        AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
         Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true">
         <FooterStyle BackColor="#C19E45" ForeColor="#000000" />
            <PagerStyle BackColor="#C19E45" ForeColor="#000000" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#DED77C" ForeColor="Black" />
            <HeaderStyle BackColor="#C19E45" Font-Bold="True" ForeColor="#FFFFFF" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
            </div>
        </asp:Panel>
    </div>
      </div>  
        </asp:Content>

