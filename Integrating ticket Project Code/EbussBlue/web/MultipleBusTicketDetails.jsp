<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
        
       
          
    </script>   
    <SCRIPT type="Text/JavaScript"> 
    function checkCard() { 
       var credit=document.payment.creditcard.value;
       var re16digit = /^\d{16}$/;
       if (!re16digit.test(credit)) {
        alert("Please enter a valid credit card numbers");
        document.payment.creditcard.focus();
        return false;
        }
        else{
         return false;   
        }
    alert("Hello");
       
    }
       </script>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BussPass</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="js/moment.js" type="text/javascript"/>
<!--   Free Website Template by t o o p l a t e . c o m   -->
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
<%

String userName = (String)session.getAttribute("username");
if(userName!=null){
%>
<div id="tooplate_wrapper">

	<div id="tooplate_header">
    	
        <div id="tooplate_menu">
        	<ul>
                <li><a href="CustomerHome.jsp" class="current">Home</a></li>
                
                <!--<li><a href="#">Login</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="blog.html">Blog</a></li>-->
                <li><a href="contact.html">Contact</a></li>
                <li><a href="logout.jsp">LogOut</a></li>
              </ul>
            <ul style="font-family: cursive;color: #F60;font-size: 24px"align="left">
                Login As : <%=session.getAttribute("username")%>
            </ul>
            <div class="cleaner"></div>
        </div> <!-- end of menu -->
        
		<div id="site_title"><h1><a href="#">Parachutes</a><span>We wish you a happy Journey </span></h1></div>
    
    </div> <!-- end of header -->
    
    <div id="tooplate_middle">
   		<!--<div id="search_box">
            <form action="#" method="get" onsubmit="return(regvalidate())>
                <input type="text" value="Search for Roots" name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                <input type="submit" name="Search" value="" id="searchbutton" title="Search" />
            </form>
        </div> <!-- end of search box -->
    </div> <!-- end of middle -->
    
    <div id="tooplate_main">
                
        <div id="tooplate_content">



      <div class="col_w880">
          <div style="border-style: solid;border-width: 5px">
              <br/>           
           
<%
        String tcktno        = request.getParameter("ticketnumber");
        String serviceNumber = request.getParameter("servicenumber");
        String busname       = request.getParameter("busname");
        String dateofjourney = request.getParameter("dateofjourney");
        String from          = request.getParameter("from");
        String to            = request.getParameter("to");
        String noofseats     = request.getParameter("noofseats");
        String departon      = request.getParameter("departon");
        String bookingDate   = request.getParameter("bookingdate");
        String mobile        = request.getParameter("mobile");
        String email         = request.getParameter("email");
        //Passenger Details
        String total_adults         = request.getParameter("total_adults");
        String total_adultAges           = request.getParameter("total_adultAges"); 
        String total_adultGender        = request.getParameter("total_adultGender");
        String total_adultsPassport    = request.getParameter("total_adultsPassport");
        
        
        String total_seniours = request.getParameter("total_seniours");
        String total_seniourages = request.getParameter("total_seniourages");
        String total_seniourGenders = request.getParameter("total_seniourGenders");
        String total_seniourpassport = request.getParameter("total_seniourpassport");
        String total_childs = request.getParameter("total_childs");
        
        String remainseat  = request.getParameter("remainseat");
        
        String ticketfare    = request.getParameter("ticketfare");
        
        
%>  
            
<form method="post" name="payment" action="ConfirmBusSeatMultiplePerson.jsp">
        	
    
    <div class="col_w880 home_intro">
                  
            	<p> 
                    <em>

                                                     Online Payment Details
<div style="font-size: 20px;color: red;font-weight: bolder" color="Red" id="errors"></div>
                         <font color="2514e3">
                           </font><br/>
                    </em> <br/>
                    Credit Card Number:<input type="text" required name="creditcard" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" onblur="return checkCard()"/>
                    
                    CVV:<input type="number" maxlength="3" name="cvv" required style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>
                    <br/><br/>
                    Expiry Date: &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="mm" name="month" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 70px;height: 30px;font-weight: bolder;font-size: 17px"/>
                  &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" required placeholder="yyyy" name="year" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 70px;height: 30px;font-weight: bolder;font-size: 17px"/>
                    <br/><br/>
                    Email ID:&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<input type="email" name="email" required style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>
                  <br/><br/>
                  
                  <input type="hidden" name="tcktno" value="<%=tcktno%>">
    <input type="hidden" name="serviceNumber" value="<%=serviceNumber%>">
    <input type="hidden" name="busname" value="<%=busname%>">
    <input type="hidden" name="dateofjourney" value="<%=dateofjourney%>">
    <input type="hidden" name="from" value="<%=from%>">
    <input type="hidden" name="to" value="<%=to%>">
    <input type="hidden" name="noofseats" value="<%=noofseats%>">
    <input type="hidden" name="departon" value="<%=departon%>">
    <input type="hidden" name="bookingDate" value="<%=bookingDate%>">
    <input type="hidden" name="mobile" value="<%=mobile%>">
    <input type="hidden" name="email" value="<%=email%>">
    <input type="hidden" name="total_adults" value="<%=total_adults%>">
    <input type="hidden" name="total_adultAges" value="<%=total_adultAges%>">
    <input type="hidden" name="total_adultGender" value="<%=total_adultGender%>">
    <input type="hidden" name="total_adultsPassport" value="<%=total_adultsPassport%>">
        
    <input type="hidden" name="total_seniours" value="<%=total_seniours%>">
    <input type="hidden" name="total_seniourages" value="<%=total_seniourages%>">>
    <input type="hidden" name="total_seniourGenders" value="<%=total_seniourGenders%>">
    <input type="hidden" name="total_seniourpassport" value="<%=total_seniourpassport%>">
    <input type="hidden" name="total_childs" value="<%=total_childs%>">
    <input type="hidden" name="remainseat" value="<%=remainseat%>">
                
    <input type="hidden" name="ticketfare" value="<%=ticketfare%>">
    <input type="submit" value="Make Payment" name="submit" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px;position: absolute"/>
    </p>
                    
                
                <div class="cleaner"></div>
            </div>
        </form>
              
              

          </div>      
            	<div class="col_w260 fp_box">
                	<h2>Classic Itineraries</h2>
                	<p>Private guided tours elaborately designed by the largest online Blue Wave travel agency and our expert operators to cater to your budget and specific preference.</p>
                    <!--<a class="more" href="#">Learn more</a>-->
                </div>
                
                <div class="col_w260 fp_box">
                	<h2>City Packages</h2>
                    <p>If you are on a tight travel plan and obsessed with what to see,you can follow these carefully designed single city packages to make the best use of your time to visit the major highlights.
</p>
                    <!--<a class="more" href="#">Learn more</a>-->
                </div>
                
                <div class="col_w260 fp_box col_last">
                	<h2>Destinations</h2>
                    <p>Comprehensive Blue Wave travel information on destinations, attractions, transportation, weather, maps to help you achieve an unforgettable trip.</p>
                   <!-- <a class="more" href="#">Learn more</a>-->
                </div>
                
                <div class="cleaner"></div>
            </div>
            
            <div class="col_w880 portfolio">
			
            	<h2>Portfolio</h2>
            	<div class="col_w260">
                	<h6>Non Stop Services</h6>
                        <img src="images/leftside.jpg" width="250" height="140" alt="Image 01" />
                	<p>Superfast trains are express rail services of the Blue Wave railways. They make few stops, unlike other Mail/Express trains, achieving somewhat shorter journey times. Tickets cost more than Mail Express rates. </p>
                   <!-- <a class="more" href="#">Learn more</a>-->
                </div>
                
                <div class="col_w260">
                	<h6>Regular Service</h6>
                        <img src="images/center.gif" width="250" height="140" alt="Image 02" />
                    <p>365 days a year, usually from 6 a.m. until past midnight although all routes do not operate seven days a week.Weekday rush hours from 7 a.m. ? 9 a.m. and 3:30 p.m. ? 5:30 p.m., providing the most service available.</p>
                    <!--<a class="more" href="#">Learn more</a>-->
                </div>
                
                <div class="col_w260 col_last">
                	<h6>Weekly Service</h6>
                        <img src="images/rightside.jpg" width="250" height="140" alt="Image 03" />
                    <p>Arriva is here to help you get around the Medway Towns and the surrounding area.

Our buses run across the region, with frequent services linking estates and residential areas to the town centres and to Hempstead Valley Shopping Centre.

</p>
                   <!-- <a class="more" href="#">Learn more</a>-->
                </div>
                
                <div class="cleaner"></div>
            </div>
        
        </div> <!-- end of content -->
        
    </div>	<!-- end of main -->
    
    <div id="tooplate_footer">
     
        Copyright © 2015 <a href="#">My Company</a>
    
    </div> <!-- end of tooplate_footer -->

</div> <!-- end of wrapper -->
<!--   Free Website Template by t o o p l a t e . c o m   -->
<%
}else{
response.sendRedirect("index.html");
}
%>
</body>
</html>