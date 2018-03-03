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
							<a href="AddTrainRoots.jsp">Add Train Roots</a>
						</li>
						
						<li>
							<a href="AddSeat.jsp">Add Train Seat</a>
						</li>
                                                <li>
							<a href="AddBusSeats.jsp">Add Bus Seats</a>
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
  <h2>Adding Bus Seats</h2>
 
   
    <p>
        <table border="2" width="900px" cellpadding="2px" cellspacing="3px" rules="rows" style="font-size: 17px">
            <tr>
                <th>S.No</th>
                <th>Current Date</th>
                <th>Bus Number</th>
                <th>Bus Name</th>
                <th>Starting point</th>
                <th>Ending Point</th>
                <th>Distance</th>
                <th>Cost</th>
                <th>Add Seats</th>
            </tr>
        
<%
      int no=0;
    String msg=null;
    java.sql.Date cDate = new java.sql.Date(new java.util.Date().getTime()); 
    String trainno=null;
    String trainname=null;
    String sourcecity=null;
    String destinationcity=null;
    float distance = 0;
    float cost = 0;
    
    int totalSeat = 0;
    int availableSeat = 0;
    PreparedStatement ps = null;
    PreparedStatement ps2 = null;
    ResultSet rs = null;
    String getTrainInfoQuery ="select serviceno,busname,sourcecity,destinationcity,distance,cost from bussroot where busstatus='no'";
    try{
    // InsertTrainRoots itr = new InsertTrainRoots();
    ps = DBConnection.getDBConnection(getTrainInfoQuery);
    rs = ps.executeQuery();
    int count=0;
    
    while(rs.next()){
        count++;
    trainno = rs.getString(1);
    
    trainname = rs.getString(2);
    sourcecity = rs.getString(3);
    destinationcity = rs.getString(4);
    distance = rs.getFloat(5);
    cost = rs.getFloat(6);
    cDate = cDate;    
    totalSeat = 38;
    availableSeat =38;
        //System.out.println("Train Number:"+);
    
       //no = itr.addTrainRoots(list, trainno, trainname, sourcecity, destinationcity, distance, cost, currentDate, totalSeat, availableSeat);
    %>
    <tr>
        <td><%=count%> </td>
        <td><%=cDate%></td>
        <td><%=trainno%> </td>
        <td><%=trainname%> </td>
        <td><%=sourcecity%> </td>
        <td><%=destinationcity%> </td>
        <td><%=distance%> </td>
        <td><%=cost%> </td>
        <td style="font-size: 18px;font-family: sans-serif;color: #3694ab">
            <a href="./addBusSeatsFirst?cdate=<%=cDate%>&trainno=<%=trainno%>&trainname=<%=trainname%>&sourcecity=<%=sourcecity%>&destinationcity=<%=destinationcity%>&distance=<%=distance%>&cost=<%=cost%>&totalSeat=<%=totalSeat%>&availableSeat=<%=availableSeat%>">Add Seat</a> </td>
        
    </tr>
        <%
    
    }
      
        
    
    }catch(Exception e){
        System.out.println("Adding Bus Seats:"+e.getMessage());
    }
   
   
       String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Adding Train Seat Details is Success!</blink></font>");
	}
       else if(message!=null && message.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Adding Train Seat Details is faild!</blink></font>");
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