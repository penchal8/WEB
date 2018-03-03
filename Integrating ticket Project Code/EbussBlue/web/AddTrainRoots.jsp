<%@page session="true" %>
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
							<h2>Adding Train Roots</h2>

							<img class="left" src="images/pic03.jpg" width="250" height="248" alt="" />
							<p>
                                                            <form action="./addTrainRoots" method="post">
                                                                <tabindex>
                                                                <table>
<%
com.ebuss.commons.GenerateBusServiceNo bsn = new com.ebuss.commons.GenerateBusServiceNo();
                      int no = bsn.generateServiceNo(); 
                      String trainid="CATRN"+no;     
                                                                   
%>
                                                                    <tr>
                                                                        <td>Train No</td>
                                                                        <td><input type="text" value="<%=trainid%>" name="trainno"/> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Train Name</td>
                                                                        <td><input type="text" name="trainname" required/> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Source Station</td>
                                                                        <td><input type="text" name="sourcestation" required/> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Source State</td>
                                                                        <td><input type="text" name="sourcestate" required/> </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Distance</td>
                                                                        <td><input type="text" size="8" name="distance" required/> miles</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Destination City</td>
                                                                        <td><input type="text" name="destinationcity" required/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Destination State</td>
                                                                        <td><input type="text" name="destinationstate" required/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Coste</td>
                                                                        <td><input type="text" name="cost" required/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><input type="submit" value="Add"/> </td>
                                                                        <td><input type="reset" value="Reset"> </td>
                                                                    </tr>
  <%
       String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Adding Train Root Details is Success!</blink></font>");
	}
       else if(message!=null && message.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Adding Train Root Details is faild!</blink></font>");
       }
      
       %>
                                                                </table>
                                                                    </tabindex>
                                                            </form>
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