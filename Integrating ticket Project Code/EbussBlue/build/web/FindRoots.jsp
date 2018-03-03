<%@page import="javax.xml.transform.Source"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.ebuss.db.DBConnection" %>
<%@page import="java.sql.*" %>
<%@page session="true"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BussPass</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<!--   Free Website Template by t o o p l a t e . c o m   -->
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>

<div id="tooplate_wrapper">

	<div id="tooplate_header">
    	
        <div id="tooplate_menu">
        	<ul>
                <li><a href="index.html" class="current">Back</a></li>
                <li><a href="CustomerHome.jsp">Redefine</a></li>
                <!--<li><a href="UserRegister.jsp">Register</a></li>
                <li><a href="blog.html">Blog</a></li>-->
                <li><a href="contact.html">Contact</a></li>
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
          
<%

int sno=0;
String fromName      = request.getParameter("fromName").trim();
String toName        = request.getParameter("toName").trim();
String departDate    = request.getParameter("departDate").trim();
String selectAdult   = request.getParameter("selectAdult").trim();
String senourCitizen = request.getParameter("senourCitizen").trim();
String childrens     = request.getParameter("childrens").trim();
String passenger     = request.getParameter("passenger").trim();

int noOfPassendgers=Integer.parseInt(selectAdult)+Integer.parseInt(senourCitizen)+Integer.parseInt(childrens);
 java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yy-MM-dd");
 java.sql.Date bookingDate =new java.sql.Date(dateFormat.parse(departDate).getTime());
String userName = (String)session.getAttribute("username");
Connection con = null;
PreparedStatement ps = null;
ResultSet rs=null;
String trnno=null,trainname=null,source=null,destination=null;
float distance=0.0f,cost=0.0f;
int seatAvailable=0;
String trainQuery ="select distinct trainno,trainname, source,destination,distance, cost,available from trainseats where  source=? and destination=? and dates=?";
try{
ps = DBConnection.getDBConnection(trainQuery);
ps.setString(1,fromName);
ps.setString(2, toName);
ps.setDate(3, bookingDate);
rs = ps.executeQuery();
%>
<table rules="all" bgcolor="#F8F8FF" width="900px" border="2" cellpadding="1px" cellspacing="1px">
   <em>   
       <tr style="font-weight: 35px;font-size: 15px">Trains Roots</tr>
       <tr style="font-weight: 35px;font-size: 12px">
        <th>S.No</th>
        <th>Train No</th>
        <th>Train Name</th>
        <th>From</th>
        <th>Departure</th>
        <th>Distance</th>
        <th>Cost</th>
        <th>Availability</th>
        <th>Book Now</th>
    </tr>
   </em>
<%
while(rs.next()){
sno++;
trnno         = rs.getString(1);
trainname     = rs.getString(2);
source        = rs.getString(3);
destination   = rs.getString(4);
distance      = rs.getFloat(5);
cost          = rs.getFloat(6);
seatAvailable = rs.getInt(7);
%>
   <tr style="font-family: monospace;font-size: 15px;font-weight: 15px;color: #2b66ff">
        <td><%=sno%></td>
        <td><%=trnno%></td>
        <td><%=trainname%></td>
        <td><%=source%></td>
        <td><%=destination%></td>
        <td><%=distance%></td>
        <td><%=cost%></td>
        <td><%=seatAvailable%></td>
        <%

if(userName!=null){
%>
<td><a href="TrainSeatBook.jsp?buseServiceNo=<%=trnno%>&busname=<%=trainname%>&busSource=<%=source%>&busDestination=<%=destination%>&busDistance=<%=distance%>&busCost=<%=cost%>&passenger=<%=passenger%>&selectAdult=<%=selectAdult%>&senourCitizen=<%=senourCitizen%>&childrens=<%=childrens%>&dateOFJourney=<%=bookingDate%>&bookingUserType=<%=passenger%>">Book Now</a></td>
<%
}
else{
      %>
 <td><a href="TrainBookRegister.jsp">Book Now</a></td>
<%  
      }       
%>
        
       
    </tr>
<%
}
if(trnno!=null){}else{
    %>
    <tr>
        <br/>
            No Train Roots Available for the Given Root
    </tr>
    <%

}
}catch(Exception e){
System.out.println("Errors at Geting seats:"+e.getMessage());
}
finally{
try{
rs.close();
ps.close();
}catch(Exception e){

}
}

%>
</table>
<table rules="all" bgcolor="#F8F8FF" width="900px" border="1" cellpadding="2px" cellspacing="3px">
   <em>   
       <tr style="font-weight: 35px;font-size: 15px">Buss Roots</tr>
       <tr style="font-weight: 35px;font-size: 12px">
        <th>S.No</th>
        <th>Bus No</th>
        <th>Bus Name</th>
        <th>From</th>
        <th>Departure</th>
        <th>Distance</th>
        <th>Cost</th>
        <th>Available</th>
        <th>Book Now</th>
    </tr>
   </em>

<%
int busSno=0;
String buseServiceNo=null, busname=null,busSource = null,busDestination=null;
float busDistance=0.0f,busCost=0.0f;
int bustAvailableSeat=0;
String busQuery = "select distinct serviceno,busname, source,destination,distance, cost,available from busseats where  source=? and destination=? and dates=?";
PreparedStatement ps1 = null;
ResultSet rs1 = null;
try{
ps1 = DBConnection.getDBConnection(busQuery);
ps1.setString(1,fromName);
ps1.setString(2,toName);
ps1.setDate(3,bookingDate);
rs1 = ps1.executeQuery();
while(rs1.next()){
    busSno++;
buseServiceNo     = rs1.getString(1);
busname           = rs1.getString(2);
busSource         = rs1.getString(3);
busDestination    = rs1.getString(4);
busDistance       = rs1.getFloat(5);
busCost           = rs1.getFloat(6);
bustAvailableSeat = rs1.getInt(7);
System.out.println("Bus Service Number:"+buseServiceNo);
%>
<tr style="font-family: monospace;font-size: 15px;font-weight: 15px;color: #2b66ff">
        <td><%=busSno%></td>
        <td><%=buseServiceNo%></td>
        <td><%=busname%></td>
        <td><%=busSource%></td>
        <td><%=busDestination%></td>
        <td><%=busDistance%></td>
        <td><%=busCost%></td>
 <%
   if(bustAvailableSeat>0){
   %>
  <td><%=bustAvailableSeat%></td>
  
  <%

if(userName!=null){
%>
<td><a href="BusSeatBook.jsp?buseServiceNo=<%=buseServiceNo%>&busname=<%=busname%>&busSource=<%=busSource%>&busDestination=<%=busDestination%>&busDistance=<%=busDistance%>&busCost=<%=busCost%>&passenger=<%=passenger%>&selectAdult=<%=selectAdult%>&senourCitizen=<%=senourCitizen%>&childrens=<%=childrens%>&dateOFJourney=<%=bookingDate%>&bookingUserType=<%=passenger%>">Book Now</a></td>
<%
}
else{
      %>
 <td><a href="BusBookRegister.jsp">Book Now</a></td>
<%  
      }       
%>

  
        <%
   }else{
  %>
        <td>Seats Not Available</td>
  <%
  }        
%>
       
       
    </tr>

<%
}
if(buseServiceNo!=null){}else{
    %>
    <tr>
        <br/>
            No Busses Available for the Given Root
    </tr>
    <%

}
}catch(Exception e){
System.out.println("Error Getting Bus Seats:"+e.getMessage());
e.printStackTrace();
}finally{
try{

}catch(Exception ee){

}
}

%>


    
</table>
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
</body>
</html>