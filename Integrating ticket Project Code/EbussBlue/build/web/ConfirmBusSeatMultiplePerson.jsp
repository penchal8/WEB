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
        String tcktno                  = request.getParameter("tcktno");
        String serviceNumber           = request.getParameter("serviceNumber");
        String busname                 = request.getParameter("busname");
        String dateofjourney           = request.getParameter("dateofjourney");
        String from                    = request.getParameter("from");
        String to                      = request.getParameter("to");
        String noofseats               = request.getParameter("noofseats");
        String departon                = request.getParameter("departon");
        String bookingDate             = request.getParameter("bookingDate");
        String mobile                  = request.getParameter("mobile");
        String email                   = request.getParameter("email");
        //Passenger Details
        String total_adults            = request.getParameter("total_adults");
        
        String total_adultAges         = request.getParameter("total_adultAges"); 
        String total_adultGender       = request.getParameter("total_adultGender");
        String total_adultsPassport    = request.getParameter("total_adultsPassport");
        
        String total_seniours          = request.getParameter("total_seniours");
        System.out.println("Total Adults:"+total_seniours);
        String total_seniourages       = request.getParameter("total_seniourages");
        String total_seniourGenders    = request.getParameter("total_seniourGenders");
        String total_seniourpassport   = request.getParameter("total_seniourpassport");
        String total_childs            = request.getParameter("total_childs");
        String remainseat              = request.getParameter("remainseat");
        
        String ticketfare              = request.getParameter("ticketfare");
        
        String creditcard              = request.getParameter("creditcard");
        String cvv                     = request.getParameter("cvv");
        String mm                      = request.getParameter("mm");
        String yyyy                    = request.getParameter("yyyy");
        String emaillast               = request.getParameter("email");
        
        
%>  
            

                    
    <div class="col_w880 home_intro">
                  
            	<p> 
                    <em>

                    Blue Wave Journey Ticket Details Onward
<div style="font-size: 20px;color: red;font-weight: bolder" color="Red" id="errors"></div>
                         <font color="2514e3">
                           </font><br/>
                    </em> <br/>
                    <table border="1px">
                        <tr>
                            <td>Ticket Number</td><td style="color: #F60"><%=tcktno%></td>
                            <td>Service Code</td><td style="color: #F60"><%=serviceNumber%></td>
                        </tr>
                        <tr>
                            <td>Service</td><td style="color: #F60"><%=busname%></td>
                            <td>Date Of Journey</td><td style="color: #F60"><%=dateofjourney%></td>
                        </tr>
                        <tr>
                            <td>From</td><td style="color: #F60"><%=from%></td>
                            <td>TO</td><td style="color: #F60"><%=to%></td>
                        </tr>
                        <tr>
                            <td>No Of Seats</td><td style="color: #F60"><%=noofseats%></td>
                            <td>Depart On</td><td style="color: #F60"><%=departon%></td>
                        </tr>
                        <tr>
                            <td>Booking Date</td><td style="color: #F60"><%=bookingDate%></td>
                            <td>Total Seats</td><td style="color: #F60"><%=noofseats%></td>
                        </tr>
                        <tr>
                            <td>Email</td><td style="color: #F60"><%=email%></td>
                            <td>Mobile</td><td style="color: #F60"><%=mobile%></td>
                        </tr>
                    </table>
                        
                        <table border="2px" bgcolor="cyan">
                        <tr>Passenger Names</tr>
                            <tr>
                                <TD>Names</TD>
                                <%
                                 String []pnames = total_adults.split("/");
                                 for(String pn:pnames){
                                    
                                 %>
                                <td style="color: #F60"><%=pn%> </td>
                                    
                                <%
                                 }
                                   %>
                            </tr>                          
                           
                            <tr>
                                <td>Ages</td>
                            <%
                             String []adges = total_adultAges.split("/");
                             for(String aaage:adges){
                             %>
                            <td style="color: #F60"><%=aaage%></td>
                            <%
                             }
                             %>
                            
                        </tr>
                        <tr>
                            <td>Genders</td>
                            <%
                             String []agender = total_adultGender.split("/");
                             for(String adgen:agender){
                             %>
                            <td style="color: #F60"><%=adgen%></td>
                            <%
                             }
                             %>
                             
                        </tr>
                             <tr>
                                 <td>Seat Numbers</td>
                         <%
                            int remSeats = Integer.parseInt(remainseat);
                            int seatNo = 0;
                            int rseats=0;
                             for(int i=0;i<pnames.length;i++){
                             seatNo=remSeats+i;
                             %>
                         <td style="color: #F60"><%=seatNo%></td>
                                 <%
                             } 
                          rseats = seatNo;                                
                         %>
                             </tr>
                             
                    </table>
                       
                        </table>
                        <%
                        if(total_seniours.equals("0")||total_seniours=="0"){
                        out.println("No Seniours");
                        }else{
                          %>
                        <table border="2px" bgcolor="cyan">
                        <tr>Seniour Person Names</tr>
                            <tr>
                                <TD>Names</TD>
                                <%
                                 String []snames = total_seniours.split("/");
                                 for(String sn:snames){
                                    
                                 %>
                                <td style="color: #F60"><%=sn%> </td>
                                    
                                <%
                                 }
                                   %>
                            </tr>                          
                           
                            <tr>
                                <td>Ages</td>
                            <%
                             String []sages = total_seniourages.split("/");
                             for(String sages1:sages){
                             %>
                            <td style="color: #F60"><%=sages1%></td>
                            <%
                             }
                             %>
                            
                        </tr>
                        <tr>
                            <td>Genders</td>
                            <%
                             String []sgender = total_seniourGenders.split("/");
                             for(String sdgen:sgender){
                             %>
                            <td style="color: #F60"><%=sdgen%></td>
                            <%
                             }
                             %>
                             
                        </tr>
                             <tr>
                                 <td>Seat Numbers</td>
                         <%
                            
                            
                            int adseat2=0;
                            //System.out.println("RSeat value is:"+rseats);
                             for(int j=1;j<=snames.length;j++){
                             adseat2=rseats+j;
                             %>
                         <td style="color: #F60"><%=adseat2%></td>
                                 <%
                             } 
                          rseats = adseat2;                                
                         %>
                             </tr>
                          
                             
                    </table>
                         <%}   if(total_childs.equals("0")||total_childs=="0"){
                             out.println("No Childerens Data");
                         } else{  %>
                             <table border="2px" bgcolor="cyan">
                        <tr>Child Names</tr>
                            <tr>
                                <TD>Names</TD>
                                <%
                                 String []childs = total_childs.split("/");
                                 for(String ch:childs){
                                    
                                 %>
                                <td style="color: #F60"><%=ch%> </td>
                                    
                                <%
                                 }
                                   %>
                            </tr>  
                       <tr>
                                 <td>Seat Numbers</td>
                         <%
                            
                            
                            int childSeat=0;
                            //System.out.println("RSeat value is:"+rseats);
                             for(int k=1;k<=childs.length;k++){
                             childSeat=rseats+k;
                             %>
                         <td style="color: #F60"><%=childSeat%></td>
                                 <%
                             } 
                                                  
                         %>
                             </tr>
                                
                            
                   </table>          
                             
                      <%}%>
                        <table>
                            <tr>
                                 <td>Total Fare:</td><td style="color: #F60"><%=ticketfare%></td>
                            </tr>
                        </table>
                        
                        <b>ID Proof Note :</b> 
          During bus journey, one of the passenger on an e-ticket appears should carry the original identity card such as: Driving License, Election Card, Ration Card, Photo ID card issued by Central/State Govt./Private Organisations, AdharCard, Pan Card, Passport, Credit Card with Photo identification, Student ID issued by any Institute, Pass Book with Photo issued by any Nationalised Bank ,CAT CARD issued by Bluewave.
               <hr/>
               Booked By Online &nbsp;&nbsp;&nbsp;&nbsp;Booking Date:<%=bookingDate%>
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