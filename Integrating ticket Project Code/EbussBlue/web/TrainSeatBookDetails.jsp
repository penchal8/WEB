<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.ebuss.commons.GenerateBusTicket"%>
<%@page import="com.ebuss.db.DBConnection" %>
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
            document.getElementById('errors').innerHTML = "Please Select; The Date";   
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
com.ebuss.commons.GeneratetTrainTicket gbt = new com.ebuss.commons.GeneratetTrainTicket();
com.ebuss.commons.UpdateTrainSeatsByBooking ubbb = new com.ebuss.commons.UpdateTrainSeatsByBooking();
com.ebuss.commons.TrainSeatConfirmation bsc = new com.ebuss.commons.TrainSeatConfirmation();
int ticketnumber  = gbt.generateBusTicket();
String noof_passendger  = request.getParameter("noOfPassendeger");
PreparedStatement ps = null;
int no_of_seniours      = Integer.parseInt(noof_passendger);
//If one Adult booing a ticket information here
if(no_of_seniours<=1){
    
System.out.println("Only One Adults");
String bookingUser      = request.getParameter("bookingUser");
String bookingUserID    = request.getParameter("bookingUserID");
String serviceNumber    = request.getParameter("serviceNumber");
String busName          = request.getParameter("busName");
String boardingpoint    = request.getParameter("boardingpoint");
String destination      = request.getParameter("destination");
String string_Date      = request.getParameter("bookingDate");
String dateOfJourney    = request.getParameter("dateOfJourney");
String bookingUserType  = request.getParameter("bookingUserType");
String singlePersonCost = request.getParameter("singlePersonCost");
String sinlgepersonName = request.getParameter("personName");
String singlepersonage  = request.getParameter("personage");
String personGender     = request.getParameter("personGender");
String spersonpassport  = request.getParameter("personpassport");

//final Steps for Mobile and email
String mobileNumber    = request.getParameter("mobileNumber");
String email           = request.getParameter("email");

String TotalTicketFare  = request.getParameter("singlePersonCost");


        
        java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
        java.util.Date parsed = format.parse(string_Date);
        java.sql.Date booking_date = new java.sql.Date(parsed.getTime());
        
        java.util.Date date_of_journey =format.parse(dateOfJourney);
        java.sql.Date journey_date   = new java.sql.Date(date_of_journey.getTime());
        

String single_person_query = "insert into trainticketsingleperson values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
try{
    ps = DBConnection.getDBConnection(single_person_query);
    ps.setInt(1,ticketnumber);
    ps.setInt(2, no_of_seniours);
    ps.setString(3,bookingUser);
    ps.setString(4, bookingUserID);
    ps.setString(5,serviceNumber);
    ps.setString(6, busName);
    ps.setString(7, boardingpoint);
    ps.setString(8, destination);
    ps.setDate(9, booking_date);
    ps.setDate(10, journey_date);
    ps.setString(11, bookingUserType);
    ps.setString(12, sinlgepersonName);
    ps.setString(13, singlepersonage);
    ps.setString(14, personGender);
    ps.setString(15, spersonpassport);
    ps.setString(16, mobileNumber);
    ps.setString(17, email);
    ps.setFloat(18, Float.parseFloat(TotalTicketFare));
    ps.setInt(19,0);
    int no = ps.executeUpdate();
    if(no>0){
    int no_seats =ubbb.upadteSeats(serviceNumber, no_of_seniours, journey_date);
    if(no_seats<=0){
    out.println("Seats Are Not Avaialble");
    }
       else{
       /* System.out.println("Seats are:"+no_seats+"<br/>");
       System.out.println("Your Ticket details are fallows<br/>");
       
       System.out.println("Bus Number:"+serviceNumber+"<br/>");
       System.out.println("Ticket Number :"+ticketnumber+"<br/>");
       System.out.println("Boarding Point :"+boardingpoint+"<br/>");
       System.out.println("To:"+destination+"<br/>");
       System.out.println("No Of Passenger:"+noof_passendger+"<br/>");
       System.out.println("Journey Date:"+journey_date+"<br/>");
       System.out.println("Ammount is:"+TotalTicketFare+"<br/>");*/
       bsc.allocateBusSeat(serviceNumber, no_seats, journey_date,ticketnumber);
       response.sendRedirect("SingleTrainTicketDetails.jsp?ticketnumber="+ticketnumber+"&servicenumber="+serviceNumber+"&busname="+busName+"&dateofjourney="+journey_date+"&from="+boardingpoint+"&to="+destination+"&noofseats="+no_of_seniours+"&departon="+journey_date+"&bookingdate="+booking_date+"&mobile="+mobileNumber+"&email="+email+"&pname="+sinlgepersonName+"&age="+singlepersonage+"&gender="+personGender+"&seatno="+no_seats+"&ticketfare="+TotalTicketFare);
       }
    }

}catch(Exception ee){
    ee.printStackTrace();
System.out.println("Error Single Person:"+ee.getMessage());
}finally{
try{ps.close();}catch(Exception eee){}
}
}
//Multiple Adults Booking ticket here
else{
//Multiple Passenger Data
    
String bookingUser      = request.getParameter("bookingUser");
String bookingUserID    = request.getParameter("bookingUserID");
String serviceNumber    = request.getParameter("serviceNumber");
String busName          = request.getParameter("busName");
String boardingpoint    = request.getParameter("boardingpoint");
String destination      = request.getParameter("destination");
String string_Date      = request.getParameter("bookingDate");
String dateOfJourney    = request.getParameter("dateOfJourney");
String bookingUserType  = request.getParameter("bookingUserType");

//Adults seat Area
String noOfAdults       = request.getParameter("noOfAdults");
String adultsFare       = request.getParameter("adultsFare");


StringBuffer  adultsNames =new StringBuffer();
String []adnames        = request.getParameterValues("adnames");
for(String adn:adnames){
adultsNames.append(adn+"/");
}
//Total Adults Names
String total_adults = adultsNames.toString();
//Adult Age
StringBuffer adAGes = new StringBuffer();
String []adultAge       = request.getParameterValues("adultAge");
for(String agage:adultAge){
 adAGes.append(agage+"/");
}
//Adult Age
String total_adultAges =adAGes.toString();

String []adultGender    = request.getParameterValues("adultGender");
StringBuffer adGenders = new StringBuffer();
for(String agGen:adultGender){
adGenders.append(agGen+"/");
}
//Total Genders
String total_adultGender = adGenders.toString();
StringBuffer adpassport = new StringBuffer();
String []adultPassport  = request.getParameterValues("adultPassport");
for(String adpass:adultPassport){
adpassport.append(adpass+"/");
}
//Total Adult Genders
String total_adultsPassport = adpassport.toString();

//Seniour Citizen Values
String noOfSeniours     = request.getParameter("noOfSeniours");
String seniourFare      = request.getParameter("seniourFare");

StringBuffer senNames = new StringBuffer();
String []seniorsNames   = request.getParameterValues("seniorsNames");

String  total_seniours="0";
String total_seniourages ="0";
String total_seniourGenders="0";
String total_seniourpassport="0";
//System.out.println("S Names:"+seniorsNames);
if(seniorsNames==null || seniorsNames.equals("")){
System.out.println("Seniours are Null");
}else{
for(String snames:seniorsNames){
senNames.append(snames+"/");
}
//Total Seniours Names
 total_seniours = senNames.toString();

StringBuffer sages = new StringBuffer();
String []senioursAge    = request.getParameterValues("senioursAge");
for(String age1:senioursAge){
sages.append(age1+"/");
}
//Total Seniours Ages
 total_seniourages = sages.toString();
StringBuffer sgenders = new StringBuffer();
String []seniourGender  = request.getParameterValues("seniourGender");
for(String sgen:seniourGender){
sgenders.append(sgen+"/");
}
//Total Seniour Genders
total_seniourGenders =sgenders.toString();
StringBuffer spassport = new StringBuffer();
String []seniourPassport= request.getParameterValues("seniourPassport");
for(String spassport1:seniourPassport){
spassport.append(spassport1+"/");
}
//Total Seniour Passports
total_seniourpassport = spassport.toString();
}
//Child Data Retriver Values


StringBuffer tchilds = new StringBuffer();
String []childNames     = request.getParameterValues("childNames");
String total_childs ="0";
String  childCost="0";
String noOfchilds="0";
if(childNames==null||childNames.equals("")){
System.out.println("No Childs Found");
}else{
for(String childs:childNames){
     noOfchilds       = request.getParameter("noOfchilds");
    childCost        = request.getParameter("childCost");
tchilds.append(childs+"/");
}
//Total Childs are
 total_childs = tchilds.toString();


}
String TotalTicketFare  = request.getParameter("TotalTicketFare");
//final Steps for Mobile and email
String mobileNumber    = request.getParameter("mobileNumber");
String email           = request.getParameter("email");

String multiple_person_query = "insert into trainticketmultipleusers values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement psAdults = null;
int no_all_passengers = Integer.parseInt(noOfAdults)+Integer.parseInt(noOfSeniours)+Integer.parseInt(noOfchilds);
        java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
        java.util.Date parsed = format.parse(string_Date);
        java.sql.Date booking_date = new java.sql.Date(parsed.getTime());
        
        java.util.Date date_of_journey =format.parse(dateOfJourney);
        java.sql.Date journey_date   = new java.sql.Date(date_of_journey.getTime());
        
try{
psAdults = DBConnection.getDBConnection(multiple_person_query);
psAdults.setInt(1, ticketnumber);
psAdults.setInt(2, no_all_passengers);
psAdults.setString(3,bookingUser );
psAdults.setString(4, bookingUserID);
psAdults.setString(5, serviceNumber);
psAdults.setString(6, busName);
psAdults.setString(7, boardingpoint);
psAdults.setString(8, destination);
psAdults.setDate(9, booking_date);
psAdults.setDate(10, journey_date);
psAdults.setString(11, bookingUserType);
//Total Adults Data
psAdults.setInt(12, Integer.parseInt(noOfAdults));
psAdults.setString(13, total_adults);
psAdults.setString(14, total_adultAges);
psAdults.setString(15, total_adultGender);
psAdults.setString(16, total_adultsPassport);
psAdults.setFloat(17, Float.parseFloat(adultsFare));
//Total Seniour Data
psAdults.setInt(18,Integer.parseInt(noOfSeniours) );
psAdults.setString(19,total_seniours );
psAdults.setString(20,total_seniourages);
psAdults.setString(21, total_seniourGenders);
psAdults.setString(22,total_seniourpassport );
psAdults.setFloat(23,Float.parseFloat(seniourFare) );
//Total Child Data
psAdults.setInt(24,Integer.parseInt(noOfchilds) );
psAdults.setString(25, total_childs);
psAdults.setFloat(26,Float.parseFloat(childCost) );

psAdults.setString(27, mobileNumber);
psAdults.setString(28, email);
psAdults.setFloat(29, Float.parseFloat(TotalTicketFare));
psAdults.setString(30, "");
int no = psAdults.executeUpdate();
int passengers = Integer.parseInt(noOfAdults)+Integer.parseInt(noOfSeniours)+Integer.parseInt(noOfchilds);
int no_seats=0;    
if(no>0){
     no_seats =ubbb.upadteTraineSatsMultiple(serviceNumber, passengers, journey_date);
    if(no_seats<=0){
    out.println("Seats Are Not Avaialble");
    response.sendRedirect("NoSeatAvailabale.jsp");
    }
       else{
         bsc.allocateTrainMultiplrSeat(serviceNumber, passengers, journey_date,ticketnumber);
         response.sendRedirect("MultipleTrainTicketDetails.jsp?ticketnumber="+ticketnumber+"&servicenumber="+serviceNumber+"&busname="+busName+"&dateofjourney="+journey_date+"&from="+boardingpoint+"&to="+destination+"&noofseats="+passengers+"&departon="+journey_date+"&bookingdate="+booking_date+"&mobile="+mobileNumber+"&email="+email+"&total_adults="+total_adults+"&total_adultAges="+total_adultAges+"&total_adultGender="+total_adultGender+"&total_adultsPassport="+total_adultsPassport+"&total_seniours="+total_seniours+"&total_seniourages="+total_seniourages+"&total_seniourGenders="+total_seniourGenders+"&total_childs="+total_childs+"&ticketfare="+TotalTicketFare+"&remainseat="+no_seats);
        
       }
    }
}catch(Exception ee){
ee.printStackTrace();
}
 

    
}




        
%>


      <div class="col_w880">
          <div style="border-style: solid;border-width: 5px">
             

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