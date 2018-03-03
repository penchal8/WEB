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
                <li><a href="RootPass.jsp">Route Pass</a></li>
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
         <form action="HomeSearchRoute1.jsp" method="post">
            <h3 align="left">  <input type="text" placeholder="Enter Source Name" name="q"></input>
                <input type="date" name="date"></input><br/><br/>
            <input type="submit"></input>
            </h3>
        </form>       
        <div id="tooplate_content">
            <form method="Post" name="findtrains" action="FindRoots.jsp" onsubmit="return(regvalidate())">
        	<div class="col_w880 home_intro">
                    <a href="#" class="learnmore"><img src="images/homelearn.jpg" width="230" height="140"/></a>
            	<p>
                    <em>
                        <div style="font-size: 20px;color: red;font-weight: bolder" color="Red" id="errors"></div>
                        You Can find Tickets here either bus or train    &nbsp;&nbsp;&nbsp;<font color="2514e3"><b>Depart Date</b></font><br/>
                    </em> 
                    <input type="text" placeholder="From" name="fromName" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>
                    &nbsp;<input type="text" placeholder="To" name="toName" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>
                    
                    <input type="date" name="departDate" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>
                  <br/><br/>
                    <select name="selectAdult" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="0">0-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="1">1-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="2">2-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="3">3-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="4">4-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="5">5-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="6">6-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="7">7-adult(13-62)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="8">8-adult(13-62)</option>
                    </select>
                  <select name="senourCitizen" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="0">0 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="1">1 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="2">2 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="3">3 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="4">4 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="5">5 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="6">6 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="7">7 Seniors(62+)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="8">8 Seniors(62+)</option>
                    </select>
                  <select name="childrens" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="0">0 Children(2-12)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="1">1 Child(2-12)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="2">2 Children(2-12)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="3">3 Children(2-12)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="4">4 Children(2-12)</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="5">5 Children(2-12)</option>
                         </select>
                  <br/><br/>
                  Passenger :&nbsp;&nbsp; <select name="passenger" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="ptype">Passenger Type</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="Student">Student</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="Employee">Employee</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="disability">Passenger With Disability</option>
                        <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="seniorCitizen">Senior Citizen</option>
                         </select>
                        
                  <input type="submit" value="Find Journey" name="submit" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>
                 </p>
                    
                
                <div class="cleaner"></div>
            </div>
        </form>
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