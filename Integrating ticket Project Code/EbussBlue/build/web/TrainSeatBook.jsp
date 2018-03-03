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
float discoutAmmount =0.0f;
String userName = (String)session.getAttribute("username");
if(userName!=null){
%>
<div id="tooplate_wrapper">

	<div id="tooplate_header">
    	
        <div id="tooplate_menu">
        	<ul>
                <li><a href="CustomerHome.jsp" class="current">Home</a></li>
                
                <!--<li><a href="#">Login</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="blog.html">Blog</a></li>-->
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
<%

String cid =(String)session.getAttribute("cid");
String loginUser =userName;
float TotalTicketFare =0.0f;
String buseServiceNo = request.getParameter("buseServiceNo");
String busname = request.getParameter("busname");
String source = request.getParameter("busSource");
String busDestination = request.getParameter("busDestination");
String busDistance = request.getParameter("busDistance");
String rootCost = request.getParameter("busCost");
String userType=request.getParameter("passenger");
String adults = request.getParameter("selectAdult");
String seniourCotizen = request.getParameter("senourCitizen");
String children = request.getParameter("childrens");
String dateOfJourney = request.getParameter("dateOFJourney");
String bookingUserType = request.getParameter("bookingUserType");
int childs = Integer.parseInt(children);
 int AdultType =Integer.parseInt(adults);
          int seniorPerson2 = Integer.parseInt(seniourCotizen);
          int noOfPassenger =AdultType+seniorPerson2;
%>


      <div class="col_w880">
          <div style="border-style: solid;border-width: 5px">
              <br/>
              <%java.sql.Date bookingDate = new java.sql.Date(new java.util.Date().getTime()); %>
                 <form action="TrainSeatBookDetails.jsp" method="Post">
                     &nbsp;&nbsp; &nbsp;  <label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Login User:&nbsp;&nbsp;<%=loginUser%></label>
                     &nbsp;&nbsp;   <label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Customer ID:&nbsp;&nbsp;<%=cid%></label>
                     <input type="hidden" name="bookingUser" value="<%=loginUser%>"/>
                     <input type="hidden" name="bookingUserID" value="<%=cid%>"/>
                     <input type="hidden" name="serviceNumber" value="<%=buseServiceNo%>"/>
                     <input type="hidden" name="busName" value="<%=busname%>"/>
                     <input type="hidden" name="boardingpoint" value="<%=source%>"/>
                     <input type="hidden" name="destination" value="<%=busDestination%>"/>
                     <input type="hidden" name="bookingDate" value="<%=bookingDate%>"/>
                     <input type="hidden" name="dateOfJourney" value="<%=dateOfJourney%>"/>
                     <input type="hidden" name="bookingUserType" value="<%=bookingUserType%>"/>
                     <input type="hidden" name="noOfPassendeger" value="<%=noOfPassenger%>"/>
                     <br/>
                  <br/>
<%
         
          if(noOfPassenger!=1){
          
          
          if(userType=="Student" ||userType.equalsIgnoreCase("Student")){
          discoutAmmount = 10.0f;
          }
           else if(userType=="Employee"||userType.equalsIgnoreCase("Employee")){
           discoutAmmount = 2.5f;
           }
           else if(userType=="disability"||userType.equalsIgnoreCase("disability"))
           {
               discoutAmmount = 30.0f;
           }
           else if(userType=="seniorCitizen" ||userType.equalsIgnoreCase("seniorCitizen")){
           discoutAmmount = 15.0f;
           }
           else{
           discoutAmmount =1.0f;
           }
         // System.out.println("Discount Ammount Cost:"+discoutAmmount);
          float ticketCost = Float.parseFloat(rootCost);
          float discountA = (ticketCost*discoutAmmount)/100;
          float finaTicketCost=ticketCost-discountA;
          float adultFare = AdultType*finaTicketCost;
          //System.out.println("Final TIcket Cost:"+finaTicketCost);
          %>
         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Adults Data Write Here</label>
          <label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Adult Fare Cost:&nbsp;&nbsp;<%=adultFare%></label>
          <br/><br/>
          <input type="hidden" value="<%=AdultType%>" name="noOfAdults"/>
          <input type="hidden" value="<%=adultFare%>" name="adultsFare"/>
          
                  <%
          for(int i =1;i<=AdultType;i++){
          
          %>
          &nbsp;&nbsp;&nbsp;&nbsp;<%=i%>.&nbsp;&nbsp;<input type="text" placeholder="Name" name="adnames" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          <input type="text" placeholder="Age" name="adultAge" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          <select name="adultGender" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 100px;height: 30px;font-weight: bolder;font-size: 17px">
           <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="male">Male</option>
           <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="female">female</option>
          </select>&nbsp;
         <input type="text" placeholder="Passport Number" name="adultPassport" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/> <br/>                                    
<%
          }
          int seniorPerson = Integer.parseInt(seniourCotizen);
         float seniorCitizeCost = seniorPerson*finaTicketCost;
        // System.out.println("Senior ticket Cost is:"+seniorCitizeCost);
%>
<br/><br/>
          <input type="hidden" value="<%=seniorPerson%>" name="noOfSeniours"/>
          <input type="hidden" value="<%=seniorCitizeCost%>" name="seniourFare"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Write Senior Citizen Data Here</label>
          <label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Senior Citizen Cost:&nbsp;&nbsp;<%=seniorCitizeCost%></label>
          <br/><br/>
                  <%
         for(int j=1;j<=seniorPerson;j++){
          
          %>
          &nbsp;&nbsp;&nbsp;&nbsp;<%=j%>.&nbsp;&nbsp;<input type="text" placeholder="Name" name="seniorsNames" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          <input type="text" placeholder="Age" name="senioursAge" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          <select name="seniourGender" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 100px;height: 30px;font-weight: bolder;font-size: 17px">
           <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="male">Male</option>
           <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="female">female</option>
          </select>&nbsp;
         <input type="text" placeholder="Passport Number" name="seniourPassport" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/> <br/>                                    

<%
          
       } float childCost=0.0f;
         if(childs!=0){
         childCost =finaTicketCost/2;
         %>
<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Childrens</label>
          <label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Ticket Fare:&nbsp;&nbsp;<%=childCost%></label>
          <br/><br/>
           <input type="hidden" value="<%=childs%>" name="noOfchilds"/>
          <input type="hidden" value="<%=seniorCitizeCost%>" name="childCost"/>
          <%
           for(int k=1;k<=childs;k++){
          
          %>
          &nbsp;&nbsp;&nbsp;&nbsp;<%=k%>.&nbsp;&nbsp;<input type="text" placeholder="Child Name" name="childNames" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
<%
         }
       } else{
       childCost =0.0f;
       }
         
          TotalTicketFare = adultFare+seniorCitizeCost+childCost;
         %>
         
      <br/><br/>
      
      Total Payble Ammount is = &nbsp;&nbsp;<%=TotalTicketFare%>
      <input type="hidden" name="TotalTicketFare" value="<%=TotalTicketFare%>"/>
      <br/>
      <br/>
          <%
          }else{
            float ticketCost = Float.parseFloat(rootCost);
            float discountA = (ticketCost*discoutAmmount)/100;
            float finaTicketCost=ticketCost-discountA;         
%>
<br/><br/>
<input type="hidden" name="singlePersonCost" value="<%=finaTicketCost%>"/>
&nbsp;&nb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px">Ticket Cost Cost:&nbsp;&nbsp;<%=finaTicketCost%></label><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br/>
    <input type="hidden" name="noOfPassendeger" value="<%=AdultType%>"/>
    <input type="hidden" name="TotalTicketFare" value="<%=finaTicketCost%>"/>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp; <input type="text" placeholder="Name" name="personName" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          <input type="text" placeholder="Age" name="personage" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          <select name="personGender" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 100px;height: 30px;font-weight: bolder;font-size: 17px">
           <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="male">Male</option>
           <option style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px" value="female">female</option>
          </select>&nbsp;
         <input type="text" placeholder="Passport Number" name="personpassport" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/> <br/>                                    

  <%
          }%>
          &nbsp;&nbsp;<br/> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" placeholder="Enter Mobile Number" name="mobileNumber" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          <input type="email" placeholder="Email" name="email" style="border: solid 1px #707070;box-shadow: 0 0 5px 1px #969696;width: 200px;height: 30px;font-weight: bolder;font-size: 17px"/>&nbsp;
          &nbsp;&nbsp;<br/>
          <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="submit" value="submit"/>
          <br/><br/>
                 </form>

          </div>      
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