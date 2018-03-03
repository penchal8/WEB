<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
            document.getElementById('errors').innerHTML = "Please Select Pass Type ";   
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
            
        	<div class="col_w880 home_intro">
                    <a href="#" class="learnmore"><img src="images/homelearn.jpg" width="230" height="140"/></a>
            	<p>
                    
<%
String user =(String)session.getAttribute("username");
String role     =(String)session.getAttribute("role");
String fromName = request.getParameter("fromName");
String toName   = request.getParameter("toName");
String departDate = request.getParameter("departDate");
String passtype   =  request.getParameter("passtype");
float passTy      = Float.parseFloat(passtype);
String userType   = request.getParameter("userType");
String typeOfPass=null; 
 if(Integer.parseInt(passtype)==1){
 typeOfPass ="Day Pass";
 }
 else if(Integer.parseInt(passtype)==7){
 typeOfPass = "Weekly Pass";
 }
 else{
 typeOfPass = "Monthly";
 }

com.ebuss.commons.GenerateStudentID gsi =new com.ebuss.commons.GenerateStudentID();
int id = gsi.generateId();
String rpassid ="EBUSSR00"+id;
java.sql.Date cdate = new java.sql.Date(new java.util.Date().getTime());
String query1 = "select startingstopname,firstRootNumber,firstrootCost,firstgetdownstop,firstwalkdistance,firsttrainstationname,firsttrainname,secondcost,getdowntrainstopname,secondwalkdistance,secondgetInBusnumber,thirdcost,destination,totalcost from rootpass where startingstopname=? and destination=?";
String query2 = "select startingstopname,firstRootNumber,firstrootCost,firstgetdownstop,firstwalkdistance,firsttrainstationname,firsttrainname,secondcost,getdowntrainstopname,secondwalkdistance,secondgetInBusnumber,totalcost from rootpass where startingstopname=? and getdowntrainstopname=?";           
String query3 = "select startingstopname,firstRootNumber,firstrootCost,firstgetdownstop,totalcost from rootpass where startingstopname=? and firstgetdownstop=?";
PreparedStatement ps = null,ps2=null;
String destination = null;
String destination1=null;
String destination2 =null;
ResultSet rs = null,rs2=null;
try{
ps = DBConnection.getDBConnection(query1);
ps.setString(1, fromName);
ps.setString(2, toName);
rs = ps.executeQuery();
if(rs.next()){
destination = rs.getString("destination");
String start = fromName;
String startDate = departDate;
float cost = rs.getFloat("totalcost");
 float fcost = passTy*cost;

 String firstMid = rs.getString("firstgetdownstop");
 String firstWalkdistance = rs.getString("firstwalkdistance");
 String firstTrainName = rs.getString("firsttrainname");
 String getDowntrainStopname = rs.getString("getdowntrainstopname");
 String secondwalksitance = rs.getString("secondwalkdistance");
 String getinbusno         =rs.getString("secondgetinbusnumber");
%>
<form action="RoutePassGetPayment.jsp" method="post">
     <table style="border-collapse: collapse;tab-size: 800px">
     <tr>Route Pass Details</tr>
     <tr><td>Route Pass ID</td>         <td><input type="test" name="passid" value="<%=rpassid%>"  readonly> </td></tr>
     <tr><td>User Name:</td>            <td><input type="text" name="userName" value="<%=user%>" readonly> </td></tr>
     <tr><td>Starting From:</td>        <td><input type="text" name="startpoint" value="<%=start%>" readonly> </td></tr>
     <tr><td>Destination:</td>          <td><input type="text" name="destination" value="<%=destination%>" readonly> </td></tr>
     <tr><td>Pass Start Date:</td>      <td><input type="text" name="startDate" value="<%=startDate%>" readonly> </td></tr>
     <tr><td>Type Of Route Pass:</td>   <td><input type="text" name="typeofpass" value="<%=typeOfPass%>" readonly> </td></tr>
     <tr><td>Total Cost:</td>           <td>$:<input type="text" name="totalcost" size="5" value="<%=fcost%>" readonly> </td></tr>
     <tr><td>Date Of Booking:</td>      <td><input type="text" name="dateofbooking" value="<%=cdate%>" readonly> </td></tr>
     <tr><td>Get Down AT:</td>          <td><input type="text" name="getdownat" value="<%=firstMid%>" readonly> </td></tr>
     <tr><td>Walk Distance:</td>        <td><input type="text" name="firstwalkdistance" value="<%=firstWalkdistance%>" readonly> </td></tr>
     <tr><td>Catch The Train:</td>      <td><input type="text" name="catchtrainname" value="<%=firstTrainName%>" readonly> </td></tr>
     <tr><td>Get Down AT:</td>          <td><input type="text" name="secondgetdownat" value="<%=getDowntrainStopname%>" readonly> </td></tr>
    
     <tr><td>Walk Distance:</td>        <td><input type="text" name="secondwalkdistance" value="<%=secondwalksitance%>" readonly> </td></tr>
     <tr><td>Bus Number:</td>           <td><input type="text" name="busnumber" value="<%=getinbusno%>" readonly> </td></tr>
     
     
     
     <tr><td></td></td><td>&nbsp;&nbsp;&nbsp;<input type="Submit"></td> </tr>
      </table>                    
 </form>   
                    
                    <%
}

if(destination == null){
    
ps = DBConnection.getDBConnection(query2);
ps.setString(1, fromName);
ps.setString(2, toName);
rs = ps.executeQuery();
if(rs.next()){
destination = rs.getString("getdowntrainstopname");
String start = fromName;
String startDate = departDate;
float cost = rs.getFloat("totalcost");
 float fcost = passTy*cost;


 String getDowntrainStopname = rs.getString("getdowntrainstopname");
 String secondwalksitance    = rs.getString("secondwalkdistance");
 String getinbusno           = rs.getString("secondgetInBusnumber");
                    
                    %>
     <form action="RoutePassGetPayment.jsp" method="post">
     <table style="border-collapse: collapse;tab-size: 800px">
     <tr>Route Pass Details</tr>
     <tr><td>Route Pass ID</td>       <td><input type="test" name="passid" value="<%=rpassid%>" readonly> </td></tr>
     <tr><td>User Name:</td>          <td><input type="text" name="userName" value="<%=user%>" readonly> </td></tr>
     <tr><td>Starting From:</td>      <td><input type="text" name="startpoint" value="<%=start%>" readonly> </td></tr>
     <tr><td>Destination:</td>        <td><input type="text" name="destination" value="<%=destination%>" readonly> </td></tr>
     <tr><td>Pass Start Date:</td>    <td><input type="text" name="startDate" value="<%=startDate%>" readonly> </td></tr>
     <tr><td>Type Of Route Pass:</td> <td><input type="text" name="typeofpass" value="<%=typeOfPass%>" readonly> </td></tr>
     <tr><td>Total Cost:</td>         <td>$:<input type="text" name="totalcost" size="5" value="<%=fcost%>" readonly> </td></tr>
     <tr><td>Date Of Booking:</td>    <td><input type="text" name="dateofbooking" value="<%=cdate%>" readonly> </td></tr>
     <tr><td>Get Down The Train:</td> <td><input type="text" name="secondgetdownat" value="<%=getDowntrainStopname%>" readonly> </td></tr>
     <tr><td>Walk Distance:</td>      <td><input type="text" name="secondwalkdistance" value="<%=secondwalksitance%>" readonly> </td></tr>
     <tr><td>Bus Number:</td>         <td><input type="text" name="busnumber" value="<%=getinbusno%>" readonly> </td></tr>
     <tr><td></td>                    <td><input type="hidden" name="firstwalkdistance" value="nodata" readonly> </td></tr>
     <tr><td></td>                    <td><input type="hidden" name="catchtrainname" value="nodata" readonly> </td></tr>
     <tr><td></td>                    <td><input type="hidden" name="getdownat" value="nodata" readonly> </td></tr>
     
     
     
     <tr><td></td></td><td>&nbsp;&nbsp;&nbsp;<input type="Submit"></td> </tr>
      </table>                    
 </form>   
                                   
                    <%
}
}
if(destination1==null){
ps = DBConnection.getDBConnection(query3);
ps.setString(1, fromName);
ps.setString(2, toName);
rs = ps.executeQuery();
if(rs.next()){
    
 float cost = rs.getFloat("firstrootcost");
 float fcost = passTy*cost;
 String customerType = role;
 String start = fromName; 
 destination2 = rs.getString("firstgetdownstop");
 String desti = destination2;
 String startDate =departDate;
 
 
 %>
 <form action="RoutePassGetPayment.jsp" method="post">
     <table style="border-collapse: collapse;tab-size: 800px">
     <tr>Route Pass Details</tr>
     <tr><td>Route Pass ID</td>      <td><input type="test" value="<%=rpassid%>" name="passid" readonly> </td></tr>
     <tr><td>User Name:</td>         <td><input type="text" name="userName" value="<%=user%>" readonly> </td></tr>
     <tr><td>Starting From:</td>     <td><input type="text" name="startpoint" value="<%=start%>" readonly> </td></tr>
     <tr><td>Destination:</td>       <td><input type="text" name="destination" value="<%=desti%>" readonly> </td></tr>
     <tr><td>Pass Start Date:</td>   <td><input type="text" name="startDate" value="<%=startDate%>" readonly> </td></tr>
     <tr><td>Type Of Route Pass:</td><td><input type="text" name="typeofpass" value="<%=typeOfPass%>" readonly> </td></tr>
     <tr><td>Total Cost:</td>        <td>$:<input type="text" name="totalcost" size="5" value="<%=fcost%>" readonly> </td></tr>
     <tr><td>Date Of Booking:</td>   <td><input type="text" name="dateofbooking" value="<%=cdate%>" readonly> </td></tr>
     <tr><td></td>                   <td><input type="hidden" name="getdownat" value="no data" readonly> </td></tr>
     <tr><td></td>                   <td><input type="hidden" name="firstwalkdistance" value="no data" readonly> </td></tr>
     <tr><td></td>                   <td><input type="hidden" name="catchtrainname" value="no data" readonly> </td></tr>
     <tr><td></td>                   <td><input type="hidden" name="getdownat" value="no data" readonly> </td></tr>
     <tr><td></td>                   <td><input type="hidden" name="traingetdownat" value="no data" readonly> </td></tr>
     <tr><td></td>                   <td><input type="hidden" name="walkdistance" value="no data" readonly> </td></tr>
     <tr><td></td>                   <td><input type="hidden" name="busnumber" value="no data" readonly> </td></tr>
     
     
     <tr><td></td></td><td>&nbsp;&nbsp;&nbsp;<input type="Submit"></td> </tr>
      </table>                    
 </form>                   
<%
 
}
}


//out.println(destination+":"+destination1+":"+destination2);
}catch(Exception e){
System.out.println("Root Pass Error:"+e.getMessage());
e.printStackTrace();
}

%>
                  
                 </p>
                    
                
                <div class="cleaner"></div>
            </div>
       
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