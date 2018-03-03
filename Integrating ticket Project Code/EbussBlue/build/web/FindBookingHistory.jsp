<%@page import="java.sql.*"%>
<%@page import="com.ebuss.db.DBConnection" %>
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
                <li><a href="#">Register</a></li>-->
                <li><a href="RootPass.jsp">Root Pass</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="BookingHistory.jsp">Booking History</a></li>
                <li><a href="RoutePassHistory.jsp">Route Pass History</a></li>
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
           

  <h2>View Buss Tickets</h2>
 
   
    <p>
        <table border="2" width="900px" cellpadding="2px" cellspacing="3px" rules="rows" style="font-size: 17px">
            <tr>
                <th>S.No</th>
                <th>Ticket Number</th>
                <th>No OF Passenger</th>
                <th>Booking User</th>
                <th>Service Name</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Date Of Journey</th>
                <th>Cost</th>
            </tr>
        
<%
      int no=0;    
    String ticketNumber = request.getParameter("ticketNumber");
    String loginuser = (String)session.getAttribute("username");
    PreparedStatement ps = null,ps2=null;
    
    ResultSet rs = null,rs2=null;
    String getTrainInfoQuery ="select ticketnumber,no_of_passenger,user_id,service_name,boardingpoint,destination,dateof_journey,TotalTicketFare from busticketmultipleusers where ticketnumber=? and booking_user=?";
    
    try{
    // InsertTrainRoots itr = new InsertTrainRoots();
    ps = DBConnection.getDBConnection(getTrainInfoQuery);
    ps.setInt(1,Integer.parseInt(ticketNumber));
    ps.setString(2, loginuser);
    rs = ps.executeQuery();
    int count=0;
    String dateOfJourney = null;
    while(rs.next()){
        count++;
        dateOfJourney = rs.getString(7);
     %>
    <tr>
        <td><%=count%> </td>
        <td><%=rs.getInt(1)%></td>
        <td><%=rs.getInt(2)%> </td>
        <td><%=rs.getString(3)%> </td>
        <td><%=rs.getString(4)%> </td>
        <td><%=rs.getString(5)%> </td>
        <td><%=rs.getString(6)%> </td>
        <td><%=dateOfJourney%> </td>
        <td><%=rs.getFloat(8)%> </td>
        
    </tr>
        <%
    
    }
      %>
</table>
<% 
    java.sql.Date cDate = new java.sql.Date(new java.util.Date().getTime());
    java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yy-MM-dd");
 java.sql.Date jDate =new java.sql.Date(dateFormat.parse(dateOfJourney).getTime());

    String getNofDays = "select datediff(?, ?)";
                ps2 = DBConnection.getDBConnection(getNofDays);
                ps2.setDate(1, jDate);
                ps2.setDate(2, cDate);
                rs2= ps2.executeQuery();
                rs2.next();
                int pendingDays =rs2.getInt(1);
                if(pendingDays>0){
                out.println("&nbsp No Of Days for Journey: "+pendingDays);
                %>
                <a href="LuggageBook.jsp?ticketId=<%=ticketNumber%>&user=<%=loginuser%>">Add Luggage</a>&nbsp;
                <a href="Foodbook.jsp?ticketId=<%=ticketNumber%>&user=<%=loginuser%>">Book Food</a>
                 <%
                }else{
                out.println("you cant Book Luggage or Food");
                }
        
    
    }catch(Exception e){
        System.out.println("Adding Trains Seats:"+e.getMessage());
    }
   
   
       
       %>


    </p>
		
       <h2>View Train Tickets</h2>
 
   
    <p>
        <table border="2" width="900px" cellpadding="2px" cellspacing="3px" rules="rows" style="font-size: 17px">
            <tr>
                <th>S.No</th>
                <th>Ticket Number</th>
                <th>No OF Passenger</th>
                <th>Booking User</th>
                <th>Service Name</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Date Of Journey</th>
                <th>Cost</th>
            </tr>
            <%
            int no1=0;    
    
    PreparedStatement ps1 = null;
    
    ResultSet rs1 = null;
    String getTrainInfoQuery1 ="select ticketnumber,no_of_passenger,user_id,service_name,boardingpoint,destination,dateof_journey,TotalTicketFare from trainticketmultipleusers where ticketnumber=? and booking_user=?";
    try{
    // InsertTrainRoots itr = new InsertTrainRoots();
    ps1 = DBConnection.getDBConnection(getTrainInfoQuery1);
    ps1.setInt(1,Integer.parseInt(ticketNumber));
    ps1.setString(2, loginuser);
    rs1 = ps1.executeQuery();
    int count1=0;
    String trainJourney=null;
    while(rs1.next()){
        count1++;
        trainJourney = rs1.getString(7);
     %>
    <tr>
        <td><%=count1%> </td>
        <td><%=rs1.getInt(1)%></td>
        <td><%=rs1.getInt(2)%> </td>
        <td><%=rs1.getString(3)%> </td>
        <td><%=rs1.getString(4)%> </td>
        <td><%=rs1.getString(5)%> </td>
        <td><%=rs1.getString(6)%> </td>
        <td><%=trainJourney%> </td>
        <td><%=rs1.getFloat(8)%> </td>
        
    </tr>
        <%
    
    }
      
     %>
            </table>
<%
       java.sql.Date cDate = new java.sql.Date(new java.util.Date().getTime());
    java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yy-MM-dd");
 java.sql.Date jDate =new java.sql.Date(dateFormat.parse(trainJourney).getTime());

    String getNofDays = "select datediff(?, ?)";
                ps2 = DBConnection.getDBConnection(getNofDays);
                ps2.setDate(1, jDate);
                ps2.setDate(2, cDate);
                rs2= ps2.executeQuery();
                rs2.next();
                int pendingDays =rs2.getInt(1);
                if(pendingDays>0){
                out.println("&nbsp No Of Days for Journey: "+pendingDays);
                %>
               <a href="LuggageBook.jsp?ticketId=<%=ticketNumber%>&user=<%=loginuser%>">Add Luggage</a>&nbsp;
               <a href="Foodbook.jsp?ticketId=<%=ticketNumber%>&user=<%=loginuser%>">Book Food</a>
                 <%
                }else{
                out.println("you cant Book Luggage or Food");
                }
        
        
    
    }catch(Exception e){
        System.out.println("Adding Trains Seats:"+e.getMessage());
    }
   
   
       
       %>


        
       <p class="meta">
								<span class="comments"><a href="#"></a></span> &nbsp; <span class="readmore"><a href="#"></a></span>
							</p>
						</div>                     
<br/><br/><br/>
 
            
        	<div class="col_w880">
            
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