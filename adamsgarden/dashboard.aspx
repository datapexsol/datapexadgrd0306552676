<%@ Page Title="" Language="C#" MasterPageFile="~/sitedashboardmaster.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>
<%@ Import Namespace="System.Data"%>
<%@ Import Namespace="System.Web.Script.Serialization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       .welcome
{
           -webkit-text-stroke-width: 1px;
   -webkit-text-stroke-color: darkgoldenrod;
	text-shadow: 0px 5px 14px rgba(52, 82, 40, 0.75);
	color: #D9D050;
	font-size: 50px;
    margin-left:35%;
}
    </style>
    <script src="Scripts/chart.min.js"></script>
    <script src="Scripts/canvasjs.js"></script>
    <script>
        <%
      DataTable dt = installment.getPropertiesSoldpermonty();
            double[] monthlyvalue = new double[12];
            foreach (DataRow dr in dt.Rows)
            {
                DateTime date = (DateTime)dr["date"];
                string month = date.ToString("MMMM");
                if (month == "May")
                {
                    monthlyvalue[4] += double.Parse(dr["payment_amount_in_Rs"].ToString());
                }else if (month =="June")
                {
                    monthlyvalue[5] += double.Parse(dr["payment_amount_in_Rs"].ToString());
                }
                
            }
          %>
	
//**********************************************
 	window.onload=function myfucntion(){
	 var jan= <%=monthlyvalue[0]%>;
	var feb= <%=monthlyvalue[1] %>;
    var march= <%=monthlyvalue[2]%>;
	var april=<%=monthlyvalue[3]%>;
	var may=<%=monthlyvalue[4]%>;
	var june= <%=monthlyvalue[5]%>;
	var july=  <%=monthlyvalue[6]%>;
	var augest= <%=monthlyvalue[7]%>;
	var september= <%=monthlyvalue[8]%>;
	var october= <%=monthlyvalue[9]%>;
	var november= <%=monthlyvalue[10]%>;
 	    var december=<%=monthlyvalue[11]%>;

    var chart = new CanvasJS.Chart("chartContainer");
    chart.options.animationEnabled= true;
    chart.options.theme= "theme4";
    chart.options.axisX = { title: "Months",titleFontSize: 30,interval:1};
    chart.options.axisY = { title: "Amount", includeZero: false,interval: 50000,titleFontSize: 20};
    /* chart.options.axisY2 = { prefix: "$", suffix: "K",title: "Price"}; */
    chart.options.title = { text: "Amount Received Per Month" };
    var series=[];
  
    series[0]={ //dataSeries - first quarter
            type: "spline",
            name: "Jan"+"   Price:"+jan+"RS",
            showInLegend: true,
           
    };
    series[1]={ //dataSeries - first quarter
        type: "spline",
        name: "Feb"+"   Price:"+feb+"RS",
        showInLegend: true,
           
    };
    series[2]={ //dataSeries - first quarter
        type: "spline",
        name: "March"+"   Price:"+march+"RS",
        showInLegend: true,
           
    };
    series[3]={ //dataSeries - first quarter
        type: "spline",
        name: "April"+"   Price:"+april+"RS",
        showInLegend: true,
           
    };
    series[4]={ //dataSeries - first quarter
        type: "spline",
        name: "May"+"   Price:"+may+"RS",
        showInLegend: true,
           
    };
    series[5]={ //dataSeries - first quarter
        type: "spline",
        name: "June"+"   Price:"+june+"RS",
        showInLegend: true,
           
    };
    series[6]={ //dataSeries - first quarter
        type: "spline",
        name: "July"+"   Price:"+july+"RS",
        showInLegend: true,
           
    };
    series[7]={ //dataSeries - first quarter
        type: "spline",
        name: "Augest"+"   Price:"+augest+"RS",
        showInLegend: true,
           
    };
    series[8]={ //dataSeries - first quarter
        type: "spline",
        name: "September" +" Price:"+september+"RS",
        showInLegend: true,
           
    };
    series[9]={ //dataSeries - first quarter
        type: "spline",
        name: "October"+"   Price:"+october+"RS",
        showInLegend: true,
           
    };
    series[10]={ //dataSeries - first quarter
        type: "spline",
        name: "November"+"   Price:"+november+"RS",
        showInLegend: true,
           
    };
    series[11]={ //dataSeries - first quarter
        type: "spline",
        name: "December"+"   Price:"+december+"RS",
        showInLegend: true,
           
    };
    chart.options.data = [];
    for(var z=0;z<"<%=11%>";z++){ 
        chart.options.data.push(series[z]);
      /*   chart.options.data.push(series2[z]); */
      }
        series[0].dataPoints = [
                { label:"Jan", y: jan },
                { label:"Feberary", y: feb },
                { label:"March", y: march },
                { label:"April", y: april },
                { label:"May", y: may },
                { label:"June", y: june },
                { label:"July", y: july },
                { label:"Augest", y: augest },
                 { label:"September", y: september },
                  { label:"October", y: october },
                   { label:"November", y: november },
                   { label:"December", y: december },

        ];
        chart.render();
        }

      
       
        
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
            <h1 class="welcome">Welcome <%=Session["uname"]%>
                
                 </h1>
            <div class="row">
			<div class="col-lg-12">
				<div id="chartContainer" style="height: 400px; width: 100%;"></div>
            
             </div> 	    
			</div>
		</div><!--/.row-->
             
   </div>
        </div>
</asp:Content>

