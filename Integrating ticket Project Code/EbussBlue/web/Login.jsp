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
							<h2>
                                                            <form action="./loginCheck" method="post">
                                                                <table>
                       <tr>
                        <td>Login ID:</td>
                        <td><input type="text" name="username"/></td>
                       </tr>
                       <tr>
                        <td>Password:</td>
                        <td><input type="password" name="pwd"/></td>
                       </tr>
                        <tr>
                        <td>User Type:</td>
                        <td>
                            <select name="usertype">
                                <option value="0">--Select--</option>
                                <option value="Student">Student</option>
                                <option value="Employee">Employee</option>
                                <option value="Oldpeople">Old People</option>
                                <option value="Handicaped">Handicaped</option>
                            </select>
                        </td>
                       </tr>
                       <tr>
                        <td></td>
                        <td><input type="submit" value="Login"/></td>
                       </tr>
                   <%
       String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("invalid"))
       {
        out.println("<font color='red'><blink>Invalid User Details!</blink></font>");
	}
                  %>
                   </table>
                                                            </form>

                                                        </h2>

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