<%@page import="java.sql.*" %>
<%@page import="com.ebuss.db.DBConnection" %>

<%
 String ticketId         = request.getParameter("ticketno");
 String user             = request.getParameter("user");
 String breakfast1       = request.getParameter("breakfast");
 String lunch1           = request.getParameter("lunch");
 String dinner1          = request.getParameter("dinner");
 
 String lunch            = "lunch";
 String breakfast        = "breakfast";
 String dinner           = "dinner";
 
 int breakfas            = Integer.parseInt(breakfast1);
 int lun                 = Integer.parseInt(lunch1);
 int din                 = Integer.parseInt(dinner1);
 
 float cost =  (float)((8.5*breakfas)+(12.6*lun)+(15*din));
 
 PreparedStatement ps = null;
 String query = "insert into fooddetails values(?,?,?,?,?,?,?,?,?)";
 try{
 ps = DBConnection.getDBConnection(query);
 ps.setString(1, ticketId);
 ps.setString(2, user);
 ps.setString(3, breakfast);
 ps.setInt(4, breakfas);
 ps.setString(5, lunch);
 ps.setInt(6,lun);
 ps.setString(7, dinner);
 ps.setInt(8, din);
 ps.setFloat(9, cost);
 int no = ps.executeUpdate();
 if(no>0){
 response.sendRedirect("Foodbook.jsp?msg=success");
 }else{
 response.sendRedirect("Foodbook.jsp?msg=faild");
 }
 }catch(Exception e){
     response.sendRedirect("Foodbook.jsp?msg=faild");
     System.out.println("Error:"+e.getMessage());
 }
 
%>