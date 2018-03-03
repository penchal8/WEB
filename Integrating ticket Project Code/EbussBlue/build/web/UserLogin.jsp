?<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript">
                   window.history.forward();
                   function noBack()
                   {
                     window.history.forward();
                   }
                 </script>

 <meta charset="UTF-8">
    <title>Log-in</title>  
    
    <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>

        <link rel="stylesheet" href="css/style.css">

       
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

<SCRIPT type="Text/JavaScript"> 
    function regvalidate() { 
      
        
       if((document.findtrains.username.value==""))   
        {   
            document.getElementById('errors').innerHTML = "Please Enter The Login Name";   
            findtrains.username.focus();   
            return(false);  
        } 
        if((document.findtrains.pwd.value==""))   
        {   
            document.getElementById('errors').innerHTML = "Please Enter The Password";   
            findtrains.pwd.focus();   
            return(false);  
        } 
        
         if((document.findtrains.usertype.value=="ptype")||(document.findtrains.usertype.value==""))   
        {   
            document.getElementById('errors').innerHTML = "Please Select Passenger Type";   
            findtrains.usertype.focus();   
            return(false);  
        }
         else    
          {    
             return(true);    
            }
         }
         </SCRIPT> 
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">

<div id="tooplate_wrapper">

	<div id="tooplate_header">
    	
        <div id="tooplate_menu">
        	<ul>
                <li><a href="index.html" class="current">Home</a></li>
                <li><a href="UserLogin.jsp">Login</a></li>
                <li><a href="UserRegister.jsp">Register</a></li>
                <!--<li><a href="blog.html">Blog</a></li>-->
                <li><a href="contact.html">Contact</a></li>
            </ul>
            <div class="cleaner"></div>
        </div> <!-- end of menu -->
        
		<div id="site_title"><h1><a href="#">Parachutes</a><span>We wish you a happy Journey </span></h1></div>
    
    </div> <!-- end of header -->
    
    <div id="tooplate_middle">
   		<!--<div id="search_box">
            <form action="#" method="get" onsubmit="return(regvalidate())>
                
                <input type="text" value="Search For Root" name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)"/>
                <input type="submit" name="Search" value="" id="searchbutton" title="Search" />
            </form>
        </div> <!-- end of search box -->
    </div> <!-- end of middle -->
    
    <div id="tooplate_main">
       
        <div class="login-card" align="left">
            <h1> Log-in</h1><br>
                <p id="errors"></p>   
  <form action="./loginCheck" method="post" name="findtrains" onsubmit="return(regvalidate())">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="pwd" placeholder="Password">
        <select name="usertype">
            <option value="ptype">Login Type</option>
            <option value="Student">Student</option>
            <option value="Employee">Employee</option>
            <option value="disability">Disabilty</option>
            <option value="scitizen">Seniour Citizen</option>
        </select>
    <input type="submit" name="login" class="login login-submit" value="login">
<%
       String message=request.getParameter("msg");

       if(message!=null && message.equalsIgnoreCase("invalid"))
       {
        out.println("<font color='red'><blink>Invalid User Details!</blink></font>");
	}
                  %>
        </form>
    
  <div class="login-help">
    <a href="NewCustomerRegister.jsp">Register</a> ? <a href="ForgetPassword.jsp">Forgot Password</a>
  </div>
</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->
  <!--  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
  -->
  <script src="js/jquery-ui.min.js"></script>
  <script src="js/jquery-1.4.2.min.js"></script>
<div style="font-size: 20px;color: red;font-weight: bolder" color="Red" id="errors"></div>
             
        <div id="tooplate_content">
           
            
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