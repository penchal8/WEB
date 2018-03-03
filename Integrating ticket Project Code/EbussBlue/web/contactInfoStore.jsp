<%@page import="java.sql.*" %>
<%@page import="com.ebuss.db.DBConnection" %>
<%
String author = request.getParameter("author");
String email  = request.getParameter("email");
String subject = request.getParameter("subject");
String data    = request.getParameter("data");

PreparedStatement ps = null;
String query ="insert into contactinfo values(?,?,?,?)";
try{
ps = DBConnection.getDBConnection(query);
ps.setString(1, author);
ps.setString(2, email);
ps.setString(3, subject);
ps.setString(4, data);
int no = ps.executeUpdate();
if(no>0){
response.sendRedirect("contact.html?message=Contact Success");
}
}catch(Exception e){
System.out.println("Contact Error:"+e.getMessage());
}
%>