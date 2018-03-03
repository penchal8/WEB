<%@page import="java.sql.*" %>
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

<SCRIPT type="Text/JavaScript"> 
    function regvalidate() { 
        var days = GetDays();
      //  alert("Days:"+days);
        var adult=document.findtrains.selectAdult.value;
    
       if(days<0){
          document.getElementById('errors').innerHTML = "You Can not select past date";   
          findtrains.departDate.focus();   
           return(false);    
       }
       if(days>60){
          document.getElementById('errors').innerHTML = "Tickets are not available for the selected date";   
          findtrains.departDate.focus();   
           return(false);    
       }
        if((document.findtrains.fromName.value=="From")||(document.findtrains.fromName.value==""))  
        {  
            document.getElementById('errors').innerHTML = "From Station Name must not be empty";   
            findtrains.fromName.focus();   
            return(false);  
        } 
        if((document.findtrains.toName.value=="TO")||(document.findtrains.toName.value==""))   
        {   
            document.getElementById('errors').innerHTML = "To Station Name Must not be empty";   
            findtrains.toName.focus();   
            return(false);  
        } 
        if((document.findtrains.departDate.value=="mm/dd/yyyy")||(document.findtrains.departDate.value==""))   
        {   
            document.getElementById('errors').innerHTML = "Please Select The Date";   
            findtrains.departDate.focus();   
            return(false);  
        } 
        if((adult=="0")||(document.findtrains.selectAdult.value==""))   
        {   
            document.getElementById('errors').innerHTML = "Please Select The number of Adults ";   
            findtrains.selectAdult.focus();   
            return(false);  
        } 
         if((document.findtrains.passenger.value=="ptype")||(document.findtrains.passenger.value==""))   
        {   
            document.getElementById('errors').innerHTML = "Please Select Passenger Type";   
            findtrains.passenger.focus();   
            return(false);  
        }
         else    
          {    
             return(true);    
            }
         }
         
               function GetDays(){
                   var selectedDate = document.findtrains.departDate.value;
                var dropdt = new Date(selectedDate);
                var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1;
        var yyyy = today.getFullYear();
         if(dd<10){
           dd='0'+dd
         } 
         if(mm<10){
          mm='0'+mm
        } 
       var cdate =  yyyy+'-'+mm+'-'+dd;
                var pickdt = new Date(cdate);
                return parseInt((dropdt - pickdt) / (24 * 3600 * 1000));
                
              }
         
         
         </SCRIPT> 
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
           
    <p>
        <table border="2" width="900px" cellpadding="2px" cellspacing="3px" rules="rows" style="font-size: 17px">
            <tr>
                <th>S.No</th>
                <th>Pass ID</th>
                <th>User</th>
                <th>Starting point</th>
                <th>Destination</th>
                <th>Start Date</th>
                <th>Type Of Pass</th>                
                <th>Cost</th>
            </tr>
        
<%
      int no=0;    
    String passId = request.getParameter("passID");
    String loginUser =(String)session.getAttribute("username");
    PreparedStatement ps = null;
    PreparedStatement ps1 = null;
    PreparedStatement ps2 =null;
    ResultSet rs = null;
    ResultSet rs1 = null;
    ResultSet rs2 = null;
    String getTrainInfoQuery ="select passid,user,startpoint,destination,startdate,typeofpass,totalcost from routepassdata where passid=? and user=?";
    try{
    // InsertTrainRoots itr = new InsertTrainRoots();
    ps = DBConnection.getDBConnection(getTrainInfoQuery);
    ps.setString(1, passId);
    ps.setString(2, loginUser);
    rs = ps.executeQuery();
    int count=0;
    String passtype=null;
    java.sql.Date pDate =null;
    float cost = 0.0f;
    String passID = null;
    while(rs.next()){
        count++;
        passID  = rs.getString(1);
        pDate   = rs.getDate(5);
        passtype= rs.getString(6);
        cost    = rs.getFloat(7); 
     %>
    <tr>
       <td><%=count%> </td>
        <td><%=passID%> </td>
        <td><%=rs.getString(2)%> </td>
        <td><%=rs.getString(3)%> </td>
        <td><%=rs.getString(4)%> </td>
        <td><%=pDate%> </td>
        <td><%=passtype%> </td>
        <td>$<%=cost%>  </td>
        
        
    </tr>
        <%
    
    }
      
      %>
</table>
            <%  
            java.sql.Date cDate = new java.sql.Date(new java.util.Date().getTime());
            if(passtype.equalsIgnoreCase("Monthly")){
            //pDate.
                String query="SELECT DATE_ADD(?, INTERVAL 28 DAY)";
                ps1 = DBConnection.getDBConnection(query);
                ps1.setDate(1, pDate);
                rs1 = ps1.executeQuery();
                rs1.next();
                java.sql.Date fDate = rs1.getDate(1);
                out.println("Current Date is:"+cDate);
                String getNofDays = "select datediff(?, ?)";
                ps2 = DBConnection.getDBConnection(getNofDays);
                ps2.setDate(1, fDate);
                ps2.setDate(2, cDate);
                rs2= ps2.executeQuery();
                rs2.next();
                int pendingDays =rs2.getInt(1);
                if(pendingDays>0){
                out.println("&nbsp No Of Days pass will be Over: "+pendingDays);
                }else{
                %>
                <a href="RenualPass.jsp?passid=<%=passID%>&rdate=<%=cDate%>">Renual The Pass</a>
                 <%
                }
                //out.println("Days Pending is:"+pendingDays);
            }else{
            out.println("No Renual For Booking Pass type");
            }
    }catch(Exception e){
        System.out.println("Adding Trains Seats:"+e.getMessage());
    }
   
   
       
       %>


   

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