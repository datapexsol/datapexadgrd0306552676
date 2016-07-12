<%@ Page Title="" Language="C#" MasterPageFile="~/sitemaster.Master" AutoEventWireup="true" CodeFile="policy.aspx.cs" Inherits="Policy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="project"> 
        
	<div class="container">
		 <div style="float:left;width:50%;">
             
				<p style="font-size:2em;font:bolder;">Project Details</p><br />
				<ul style="list-style-type:square;font-size:large">
                    <li>Roads are 40ft, 50ft, 70ft, & 150ft wide.</li>
           <li>2% surcharge per month in case of late payment.</li>
           <li>Copy of CNIC & 3 photographs passport size would be required with application form.</li>
					
				</ul>
             <br />
             <p style="font-size:2em;font:bolder;">Discount Policy</p>	<br />
             <ul style="list-style-type:square;font-size:large">
                 <li>10% discount on lum sum payment with application.</li>
             </ul>

			</div>
        <div style="float:right;text-align:left;width:45%">
            <p style="font-size:2em;font:bolder;">Policy for Corner Plots</p><br />
            <ul style="list-style-type:square;font-size:large;text-align:justify;">
           <li>10% of proper corner Plot.</li>
           <li>10% of main double Road Plot.</li>
           <li>20% of main double Road Corner.</li>

       </ul>
        </div>
	</div></div>
</asp:Content>

