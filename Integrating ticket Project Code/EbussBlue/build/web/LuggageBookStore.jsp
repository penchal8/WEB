<%@page import="java.sql.*" %>
<%@page import="com.ebuss.db.DBConnection" %>

<%
 String ticketId         = request.getParameter("ticketno");
 String user             = request.getParameter("user");
 String luggagetype      = request.getParameter("luggagetype");
 String luggagequantity  = request.getParameter("luggagequantity");
 String approxwait       = request.getParameter("approxwait");
 
 PreparedStatement ps = null;
 String query = "insert into lugaggedetails values(?,?,?,?,?,?)";
 try{
 ps = DBConnection.getDBConnection(query);
 ps.setString(1, ticketId);
 ps.setString(2, user);
 ps.setString(3, luggagetype);
 ps.setString(4, luggagequantity);
 ps.setString(5, approxwait);
 ps.setString(6, "$49.8");
 int no = ps.executeUpdate();
 if(no>0){
 response.sendRedirect("LuggageBook.jsp?msg=success");
 }else{
 response.sendRedirect("LuggageBook.jsp?msg=faild");
 }
 }catch(Exception e){
     response.sendRedirect("LuggageBook.jsp?msg=faild");
     System.out.println("Error:"+e.getMessage());
 }
 
%>