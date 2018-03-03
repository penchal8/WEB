<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>Integrating Ticketing System For Bus & Train</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
                <script type="text/javascript">
                   window.history.forward();
                   function noBack()
                   {
                     window.history.forward();
                   }
                 </script>
                <script>
    function calc(){
    var fcost = document.getElementById("fcost").value;    
    var sCost = document.getElementById("scost").value;
    var tCost = document.getElementById("tCost").value;
    
    var finalCost = parseFloat(fcost)+parseFloat(sCost)+parseFloat(tCost);
    document.getElementById("finalCost").value=parseFloat(finalCost);
    }
    </script>
	</head>
	<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
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
							<a href="AddBusAndTrainPass.jsp">BusPass</a>
						</li>
						<li>
							<a href="AddTrainRoots.jsp">Add Train Roots</a>
						</li>
						<li>
							<a href="#">View Train Roots</a>
						</li>
						<li>
							<a href="AddSeat.jsp">Add Train Ceats</a>
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
							<h2>Adding Multiple Bus Pass Details</h2>
							
							
							<p class="meta">
								<span class="comments"><a href="#"></a></span> &nbsp; <span class="readmore"><a href="#"></a></span>
                                                                <form action="AddBusAndTrainController" method="post">
                                                                    <table border="1" width="700" >
<tr><td>Source Stop Name</td><td>&nbsp;<input type="text" required name="startingOrigin"/></td></tr>
<tr><td>Bus Stop </td><td>&nbsp;<input type="text" required name="startingStopName"/> </td></tr>
<tr><td>Get In Bus Number</td><td>&nbsp;<input type="text" required name="fisrtRootNumber"/> </td></tr>
<tr><td>First Cost </td><td>&nbsp;$&nbsp;<input type="text" id="fcost" size="5" required name="firstCost"/> </td></tr>
<tr><td>Get Down at Busstop Name </td><td>&nbsp;<input type="text" required name="getDownFirstStop"/> </td></tr>
<tr><td>Walk Distance </td><td>&nbsp;<input type="text" required name="firstWalkDistance"/> </td></tr>
<tr><td>Train Station Name </td><td>&nbsp;<input type="text" required name="firstTrainStationName"/> </td></tr>
<tr><td>Train  Name </td><td>&nbsp;<input type="text" required name="firstTrainName"/> </td></tr>
<tr><td>Second Cost  </td><td>&nbsp;$&nbsp;<input type="text" size="5" required id ="scost" name="secondCost"/> </td></tr>
<tr><td>Get Down Train Stop Name </td><td>&nbsp;<input type="text"  required name="getDownTrainStopName"/> </td></tr>
<tr><td>Walk Distance  </td><td>&nbsp;<input type="text" required name="secondWalkDistance"/> </td></tr>
<tr><td>Get In Bus Number  </td><td>&nbsp;<input type="text" required name="getInSecondBusNumber" /> </td></tr>
<tr><td>Third Cost  </td><td>&nbsp;$&nbsp;<input type="text" size="5" required id="tCost" name="thirdCost"/> </td></tr>
<tr><td> Get Down Destination  </td><td>&nbsp;<input  type="text" required name="destination" onblur="return calc()"/> </td></tr>
<tr><td>Total Cost  </td><td>&nbsp;$&nbsp;<input id="finalCost" size="5" readonly type="text" name="totalCost"/> </td></tr>
<tr><td><center> <input size="20" type="submit" value="Add" ></center></td><td><center><input readonly type="reset" value="Reset"/></center> </td></tr>
 </tr>
  <%
       String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Adding Root Pass Details is Success!</blink></font>");
	}
       else if(message!=null && message.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Adding Root Pass Details is faild!</blink></font>");
       }
      
       %>
</table>
                                                                    </form>
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