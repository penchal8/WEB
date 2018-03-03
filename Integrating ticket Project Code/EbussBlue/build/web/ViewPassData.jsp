<%@page session="true" %>
<%@page import="java.sql.*" %>
<%@page import="com.ebuss.db.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>Integrating Ticketing System For Bus & Train</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	<body>
		<div id="outer">
			<div id="header">
				<div id="logo">
					<h1><a href="#">Integrating Ticketing System For Bus & Train</a></h1>
				</div>

				<div id="nav">
					<ul>
						<li class="first active">
							<a href="AdminHome.jsp">Home</a>
						</li>
						<li>
							<a href="AddBussRoots.jsp">Add Bus Roots</a>
						</li>
						<li>
							<a href="ViewBusTicketBookingHistory.jsp">View Buss Tickets</a>
						</li>
						<li>
							<a href="AddTrainRoots.jsp">Add Train Roots</a>
						</li>
						<li>
							<a href="ViewTrainTicketsBookingHistory.jsp"> Train Tickets</a>
						</li>
						
						<li class="last">
							<a href="AdminLogin.jsp">Log Out</a>
						</li>
					</ul>
					<br class="clear" />
				</div>
			</div>
			<div id="main">
				<div id="content">
					<div id="box1">
						<!-- Primary Wide Blog Post 3 -->
						<div class="blogpost primary_wide3">
							<img class="left" src="images/pic02.jpg" width="1116" height="316" alt="" />
							<h2>INTEGRATING TICKETING SYSTEM FOR BUS & TRAIN</h2>

							<p>

							</p>
							<p class="meta">
								<span class="comments"><a href="#"></a></span> &nbsp; <span class="readmore"><a href="#"></a></span>
							</p>
						</div>
					</div>

<div id="box3">
 <div class="blogpost secondary_wide4">
  <h2>View Buss Tickets</h2>
 
   
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
    
    PreparedStatement ps = null;
    
    ResultSet rs = null;
    String getTrainInfoQuery ="select passid,user,startpoint,destination,startdate,typeofpass,totalcost from routepassdata";
    try{
    // InsertTrainRoots itr = new InsertTrainRoots();
    ps = DBConnection.getDBConnection(getTrainInfoQuery);
    rs = ps.executeQuery();
    int count=0;
    
    while(rs.next()){
        count++;
     %>
    <tr>
       <td><%=count%> </td>
        <td><%=rs.getString(1)%> </td>
        <td><%=rs.getString(2)%> </td>
        <td><%=rs.getString(3)%> </td>
        <td><%=rs.getString(4)%> </td>
        <td><%=rs.getString(5)%> </td>
        <td><%=rs.getString(6)%> </td>
        <td><%=rs.getString(7)%> </td>
        
        
    </tr>
        <%
    
    }
      
        
    
    }catch(Exception e){
        System.out.println("Adding Trains Seats:"+e.getMessage());
    }
   
   
       
       %>

</table>
    </p>
							<p class="meta">
								<span class="comments"><a href="#"></a></span> &nbsp; <span class="readmore"><a href="#"></a></span>
							</p>
						</div>
					</div>
					<br class="clear" />
				</div>
			</div>
		</div>
		<div id="copyright">
			Integrating Ticketing System For Bus & Train by <a href="http://www.google.com">Student</a>.
		</div>
	</body>
</html>