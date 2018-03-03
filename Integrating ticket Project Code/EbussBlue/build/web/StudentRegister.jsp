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
							<a href="#">Home</a>
						</li>
						<li>
							<a href="Login.jsp">Login</a>
						</li>
						<li>
							<a href="StudentRegister.jsp">Student</a>
						</li>
						<li>
							<a href="#">Employee</a>
						</li>
						<li>
							<a href="#">Old People</a>
						</li>
						<li>
							<a href="#">Handicaped</a>
						</li>
						<li class="last">
							<a href="#">Contact</a>
						</li>
					</ul><br class="clear" />
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
							<h2>Student Registration Form</h2>

							<img class="left" src="images/pic03.jpg" width="250" height="248" alt="" />
							<p>
                                                            <form action="./StudentRegisterController" method="post">
                                                                <tabindex>
                                                                <table>
                                                                     <tr>
                                                                        <td>ID:</td>
<% com.ebuss.commons.GenerateStudentID gsi =new com.ebuss.commons.GenerateStudentID();
   int id = gsi.generateId();
String sid ="EBUSS00"+id;
%>
<td><input type="text" value="<%=sid%>" readonly name="sid"/> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Name:</td>
                                                                        <td><input type="text" name="sname"/> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Login ID</td>
                                                                        <td><input type="text"  name="loginid"/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Password</td>
                                                                        <td><input type="password" name="password"/></td>
                                                                    </tr>
                                                                    
                                                                    <tr>
                                                                        <td>Address</td>
                                                                        <td><textarea name="address" cols="15" rows="3"></textarea></td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td>University</td>
                                                                        <td><input type="text" name="university"/> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>City</td>
                                                                        <td><input type="text" name="city"/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>State</td>
                                                                        <td><input type="text" name="state"/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Zip Code</td>
                                                                        <td><input type="text" name="zip"/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Hall Ticket </td>
                                                                        <td><input type="text" name="hallticket"/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Student Unique Number</td>
                                                                        <td><input type="text" name="sunique"/> </td> <td><font size="2px" color="#66hhGG">*Given by College or University Number</font></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Email ID:</td>
                                                                        <td><input type="text" name="email"/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Mobile Number:</td>
                                                                        <td><input type="text" name="mobile"/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Register Date</td>
                                                                        <% java.sql.Date date = new java.sql.Date(new java.util.Date().getTime()); %>
                                                                        <td><input type="text" name="rdate" value="<%=date%>" readonly/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <input type="hidden" name="role" value="Student"/>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>College Name</td>
                                                                        <td><input type="text" name="collegename"/> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><input type="submit"  size="15" value="Register"/> </td>
                                                                        <td><input type="reset" value="Reset"> </td>
                                                                    </tr>
  <%
       String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("success"))
       {
        out.println("<font color='red'><blink>Your Registration  is Success!</blink></font>");
	}
       else if(message!=null && message.equalsIgnoreCase("faild")){
       out.println("<font color='red'><blink>Your Registration  is faild please chek your Student unique id or loginname! </blink></font>");
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