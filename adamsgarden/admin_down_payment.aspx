<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="admin_down_payment.aspx.cs" Inherits="property_payment" %>

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
            margin-right:20px;
            float:right;
           
             width:200px;
             height:200px;
             margin-bottom:5px;
             
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
        .validationimage{float:right;color:red;margin-top:-85px;}
        .validationradio{float:left;color:red;margin-right:10px;}
         .messagealert {
            width: 100%;
            position: fixed;
             top:0px;
            z-index: 100000;
            padding: 0;
            font-size: 15px;
        }
    </style>
<script language="javascript" type="text/javascript">
    function ShowMessage(message, messagetype) {
        var cssclass;
        switch (messagetype) {
            case 'Success':
                cssclass = 'alert-success'
                break;
            case 'Error':
                cssclass = 'alert-danger'
                break;
            case 'Warning':
                cssclass = 'alert-warning'
                break;
            default:
                cssclass = 'alert-info'
        }
        $('#alert_container').append('<div id="alert_div" style="margin-top:40px;margin-left:100px;width:50%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
    }
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

function imageIsLoaded(e) {
    $('#clientimage').attr('src', e.target.result);
   
};

function plotsize(source,args)
{
  
    if(document.getElementById("<%= r1.ClientID%>").checked || document.getElementById("<%= r2.ClientID %>").checked|| document.getElementById("<%= r3.ClientID %>").checked|| document.getElementById("<%= r4.ClientID %>").checked|| document.getElementById("<%= r5.ClientID %>").checked)
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }
    
}
function paymentmadethrough(source,args)
{   
    if(document.getElementById("<%= pcash.ClientID%>").checked || document.getElementById("<%= pcheque.ClientID %>").checked|| document.getElementById("<%= pdraft.ClientID %>").checked|| document.getElementById("<%= porder.ClientID %>").checked|| document.getElementById("<%= r5.ClientID %>").checked)
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }
    
}
    function plottype(source,args)
{   
    if(document.getElementById("<%= residential.ClientID%>").checked || document.getElementById("<%= residential.ClientID %>").checked)
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }
    
}
    
 

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="container">
            <div class="row">
       
     
        
        <asp:Panel runat="server" ID="downpayment">
		
         <!--   <div class="logo_image">
                  <img src="Images/logo.jpg"/>
                  
            </div>-->
            
            <div class="clear"></div>
           
                
                    <div class="messagealert" id="alert_container">  </div>	
                <h2 class="dawnpayment">Down Payment Form</h2>
                    <div class="client_image">
               
               <div class="logo_image">
                <img src="" id="clientimage"  alt="Select Photograph" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator18"  class="validationimage" ControlToValidate="imageupload" runat="server" ErrorMessage="Please Select Image"></asp:RequiredFieldValidator>
                <asp:FileUpload ID="imageupload" runat="server" />
                </div>
            </div>
                <div class="form-group longgrouptb">
                <asp:Label ID="lbname" runat="server" Text="Name" for="tbname"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbname" runat="server" ErrorMessage="*Please enter you name"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tbname" runat="server" ReadOnly="true" class="form-control input-sm shorttb"></asp:TextBox>
                      
                    </div>
               
                <div class="form-group shortgroupdiv">
                     <asp:Label ID="lbsof" runat="server" Text="S/O,D/O,W/O" for="tbsof"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbsof" runat="server" ErrorMessage="*Please enter S/O,D/O,W/O"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbsof" runat="server" ReadOnly ="true" class="form-control input-sm shorttb"></asp:TextBox>
                 </div>
             
                <div class="form-group shortgroupdiv">
                <asp:Label ID="lbcnic" runat="server" Text="C.N.I.C" for="tbcnic"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbcnic" runat="server" ErrorMessage="*Please enter C.N.I.C"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator runat="server"  ControlToValidate="tbcnic"
ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"
EnableClientScript="true"
ErrorMessage="Enter correct format of CNIC xxxxx-xxxxxx-x" SetFocusOnError="True" class="validationtxt" ></asp:RegularExpressionValidator>

                <asp:TextBox ID="tbcnic" runat="server" ReadOnly ="true" class="form-control input-sm shorttb"></asp:TextBox>
                
                          </div>


                <div class="form-group longgrouptb">
                <asp:Label ID="lboccupation" runat="server" Text="Occupation" for="tboccupatiom"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tboccupatiom" runat="server" ErrorMessage="*Please enter your Occupation"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tboccupatiom" runat="server" ReadOnly ="true" class="form-control input-sm shorttb"></asp:TextBox>
                    </div>
                <div class="form-group longgrouptb">
                <asp:Label ID="lbpresentaddress" runat="server" Text="Present Address" for="tbpresentaddress"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="tbpresentaddress" runat="server" ErrorMessage="*Please enter your Present Address"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbpresentaddress" runat="server" ReadOnly ="true" class="form-control input-sm shorttb"> </asp:TextBox>
                    </div>

                 <div class="form-group midgroupdiv">
                <asp:Label ID="lbtel" runat="server" Text="Tel :" for="tbtel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="tbtel" runat="server" ErrorMessage="*Please enter your Telephone number"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbtel" runat="server" ReadOnly ="true" class="form-control input-sm shorttb"> </asp:TextBox>
                    </div>

                 <div class="form-group midgroupdiv">
                <asp:Label ID="lbmobile" runat="server" Text="Mobile :" for="tbmobile"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="tbmobile" runat="server" ErrorMessage="*Please enter your Mobile Number"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbmobile" runat="server" class="form-control input-sm shorttb"> </asp:TextBox>
                    </div>

                 <div class="form-group midgroupdiv">
                <asp:Label ID="lbemai" runat="server" Text="E-mail :" for="tbemail"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="tbemail" runat="server" ErrorMessage="*Please enter your Email Address"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>


                <asp:RegularExpressionValidator ControlToValidate="tbemail" SetFocusOnError="True" class="validationtxt" ValidationExpression="^[-a-zA-Z0-9][-.a-zA-Z0-9]*@[-.a-zA-Z0-9]+(\.[-.a-zA-Z0-9]+)*\.(com|edu|info|gov|int|mil|net|org|biz|name|museum|coop|aero|pro|tv|[a-zA-Z]{2})$" EnableClientScript="true" ErrorMessage="Enter correct format of email !" runat="server" />


                <asp:TextBox ID="tbemail" runat="server" class="form-control input-sm shorttb"> </asp:TextBox>
                    </div>

                 <div class="form-group longgrouptb">
                <asp:Label ID="lbparmaentadd" runat="server" Text="Permanent Address :" for="tbparmaentadd"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="tbparmaentadd" runat="server" ErrorMessage="*Please enter your Parmanent Address"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbparmaentadd" runat="server" class="form-control input-sm shorttb"> </asp:TextBox>
                    </div>
                




                    <div  class="row">
                <div class="col-sm-8" te>
                <asp:Label ID="lbplotsize" runat="server" Text="Plot size :" for="MyGroup" class="radioitem1"/>
               

                
               
                <asp:RadioButton id="r1" runat="server" GroupName="MyGroup" Text="4 Marla" class="radioitem1" />
                <asp:RadioButton id="r2" runat="server" GroupName="MyGroup" Text="5 Marla" class="radioitem1"/>
                <asp:RadioButton id="r3" runat="server" GroupName="MyGroup" Text="7 Marla" class="radioitem1"/>
                <asp:RadioButton id="r4" runat="server" GroupName="MyGroup" Text="10 Marla" class="radioitem1"/>
                <asp:RadioButton id="r5" runat="server" GroupName="MyGroup" Text="1 kanal" class="radioitem1"/>
                    <asp:CustomValidator id="CustomValidator1" runat="server"  ErrorMessage="please Select PlotSize" ClientValidationFunction="plotsize" OnServerValidate="plotsize_ServerValidate" class="validationtxt"></asp:CustomValidator>
                    </div>
                   

                <div class="col-sm-4">
                <asp:Label ID="Label4" runat="server" Text="Property Type:" for="MyGroup1" />
               <asp:RadioButton id="residential" runat="server" GroupName="MyGroup1" Text="Residential"  />
                <asp:RadioButton id="commercial" runat="server" GroupName="MyGroup1" Text="Commercial" />
               
               
                    <asp:CustomValidator id="CustomValidator3" runat="server"  ErrorMessage="*please Select Plot Type" ClientValidationFunction="plottype" OnServerValidate="plottype_server" class="validationtxt"></asp:CustomValidator>
                    </div>
                         </div>
                    <div class="clear"></div>
                <div class="form-group longgrouptb clear">
                <asp:Label ID="lbnominename" runat="server" Text="Nominee Name" for="tbnominename"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="tbnominename" runat="server" ErrorMessage="*Please enter Nominee Name"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbnominename" runat="server" class="form-control input-sm shorttb"></asp:TextBox>
                    </div>
                <div class="form-group shortgroupdiv">
                <asp:Label ID="lbnomineaddress" runat="server" Text="Nominee Address" for="tbnomineaddress"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="tbnomineaddress" runat="server" ErrorMessage="*Please enter Nominee Address"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tbnomineaddress" runat="server" class="form-control input-sm shorttb"></asp:TextBox>
                </div>
                <div class="form-group shortgroupdiv">
                <asp:Label ID="lbcnicnomine" runat="server" Text="Nominee CNIC:" for="tbcnicnominee"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="tbnominename" runat="server" ErrorMessage="*Please enter Nominee CNIC"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator runat="server"  ControlToValidate="tbcnicnominee"
ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"
EnableClientScript="true"
ErrorMessage="Enter correct format of CNIC xxxxx-xxxxxx-x" SetFocusOnError="True" class="validationtxt" ></asp:RegularExpressionValidator>

                    <asp:TextBox ID="tbcnicnominee" runat="server" class="form-control input-sm shorttb"></asp:TextBox>

                </div>
                     <div class="form-group midgroupdiv">
                 <asp:Label ID="Label2" runat="server" Text="Registeration No:" for="tbregistrationo"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="tbregistrationo" runat="server" ErrorMessage="*Please enter Registeration no."  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="tbregistrationo" runat="server" ReadOnly ="true" class="form-control input-sm shorttb"></asp:TextBox>
                    </div>
               
                    <div class="form-group midgroupdiv">
                <asp:Label ID="Label3" runat="server" Text="Plot No :" for="tbplotnumber"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="tbplotnumber" runat="server" ErrorMessage="*Please enter plot no."  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbplotnumber" runat="server" class="form-control input-sm shorttb" OnTextChanged="tbplotnumber_TextChanged" AutoPostBack="True"> </asp:TextBox>
                    </div>
                     <div class="form-group midgroupdiv">
                <asp:Label ID="Label5" runat="server" Text="Plot Street No :" for="tbemail"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="tbstreet" runat="server" ErrorMessage="*Please enter street no."  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbstreet" runat="server" class="form-control input-sm shorttb"> </asp:TextBox>
                    </div>
                <div class="form-group longgrouptb">
                    <div class="radioninternalclass">
                 <asp:Label ID="Label1" runat="server" Text="Payment Made Through:" for="payment_made" class="paymentradiolabel" />
                     <asp:CustomValidator id="CustomValidator2" runat="server"  ErrorMessage="please select payment method" ClientValidationFunction="paymentmadethrough" OnServerValidate="paymentmadethrough_server" class="validationtxt"></asp:CustomValidator>
                <asp:RadioButton id="pcash" runat="server" GroupName="payment_made" Text="Cash" class="radioitem1" />
                <asp:RadioButton id="pcheque" runat="server" GroupName="payment_made" Text="Cheque" class="radioitem1"/>
                <asp:RadioButton id="pdraft" runat="server" GroupName="payment_made" Text="Draft" class="radioitem1"/>
                <asp:RadioButton id="porder" runat="server" GroupName="payment_made" Text="Pay Order" class="radioitem1"/>
                     </div>
                    <div class="nointernaldiv">
                       
                          <asp:Label ID="lbno" runat="server" Text="No"></asp:Label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="tbno" runat="server" ErrorMessage="*Please enter NO"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
                          <asp:TextBox ID="tbno" runat="server" class="noinradio"></asp:TextBox><br />
                   </div>
                </div>
              
                    
                   

                     <div class="form-group shortgroupdiv clear">
                 <asp:Label ID="lbamount" runat="server" Text="Amount Rs:" for="tbamoutn"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="tbamoutn" runat="server" ErrorMessage="*Please enter Amount"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="tbamoutn" runat="server" class="form-control input-sm shorttb"></asp:TextBox>
                    </div>
                <div class="form-group shortgroupdiv">
                 <asp:Label ID="lbamountinwords" runat="server" Text="Amount in WOrds" for="tbamountinwords"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="tbamountinwords" runat="server" ErrorMessage="*Please enter Amount in Words"  SetFocusOnError="True" class="validationtxt"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="tbamountinwords" runat="server" class="form-control input-sm shorttb"></asp:TextBox><br />

                    </div>
                    <div class="form-group shortgroupdiv clear">
                    <asp:Button ID="btnsave" runat="server" Text="Save" class="btn btn-primary btn" OnClick="btnsave_Click" />
               </div>
                   
                
        
            </asp:Panel>
        </div>
 </div></div>
       
</asp:Content>

