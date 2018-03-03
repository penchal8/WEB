<!doctype html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Blu Wave Register Form</title>
  <meta name="author" content="Jake Rocheleau">
  <link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="css/styleshori.css">
  <link rel="stylesheet" type="text/css" media="all" href="css/switchery.min.css">
  <script type="text/javascript" src="js/switchery.min.js"></script>
</head>

<body>
    <ul>
        <li><a href="UserLogin.jsp">Login</a> </li>
    </ul>
  <div id="wrapper">
  
  <h1>Blu Wave Customer Register Form</h1>
  <% com.ebuss.commons.GenerateStudentID gsi =new com.ebuss.commons.GenerateStudentID();
   int id = gsi.generateId();
String sid ="EBUSS00"+id;
%>
<form action="./customerRegisterController" method="post">
      
  <div class="col-2">
    <label>
      Customer ID:
      <input id="name" readonly name="sid" value="<%=sid%>" tabindex="1">
    </label>
  </div>
  <div class="col-2">
    <label>
      Write Here Your Name
      <input placeholder="Customer Name" required name="sname" tabindex="2">
    </label>
  </div>
  
  <div class="col-3">
    <label>
      Login ID
      <input placeholder="This is your Login Id" required name="loginid" tabindex="3">
    </label>
  </div>
  <div class="col-3">
    <label>
      Password
      <input type="password" placeholder="Login Password" required name="password" tabindex="4">
    </label>
  </div>
  <div class="col-3">
    <label>
      Address
      <input placeholder="Address" required name="address" tabindex="4">
    </label>
  </div>
  
  <div class="col-4">
    <label>
      University
      <input placeholder="Studied University" required name="university" tabindex="6">
    </label>
  </div>
  <div class="col-4">
    <label>
      Living City
      <input placeholder="Currently Living City" required name="city" tabindex="6">
    </label>
  </div>
  <div class="col-4">
    <label>State</label>
    <input placeholder="Currently Living State" required name="state" tabindex="7">
  </div>
  <div class="col-4">
    <label>Zip Code</label>
    <input placeholder="Zip Code" required="" name="zip" tabindex="7">
  </div>
  
    <div class="col-3">
    <label>
      Home Contact Number
      <input placeholder="Contact Number" required name="hallticket" tabindex="3">
    </label>
  </div>
  <div class="col-3">
    <label>
      Pan Number
      <input  placeholder="Govt Unique Number" required name="sunique" tabindex="4">
    </label>
  </div>
  <div class="col-3">
    <label>
      Email ID
      <input required="" placeholder="Valid Email" type="email" name="email" tabindex="4">
    </label>
  </div>
<div class="col-3">
    <label>
      Mobile Number:
      <input placeholder="Mobile Numberr" required="" name="mobile" tabindex="3">
    </label>
  </div>
  <div class="col-3">
    <label>
      Register Date
      <% java.sql.Date date = new java.sql.Date(new java.util.Date().getTime()); %>
      <input value="<%=date%>" readonly  name="rdate" tabindex="4">
    </label>
  </div>
  <div class="col-3">
    <label>
     User Role:
     <select id="email" name="role" tabindex="4">
     <option value="ptype">Login Type</option>
            <option value="Student">Student</option>
            <option value="Employee">Employee</option>
            <option value="disability">Disabilty</option>
            <option value="scitizen">Seniour Citizen</option>
     </select>
    </label>
  </div>
  
  
    
  <div class="col-submit">
    <button class="submitbtn">Submit Form</button>
  </div>
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

  </form>
  </div>
<script type="text/javascript">
var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

elems.forEach(function(html) {
  var switchery = new Switchery(html);
});
</script>
</body>
</html>