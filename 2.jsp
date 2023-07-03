<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<%
String emaill,passs;
emaill=request.getParameter("email");
passs=request.getParameter("pass");
 if(emaill==null || passs==null)
 response.sendRedirect("index.html");
 else
{
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
    PreparedStatement ps = con.prepareStatement("select * from newuser where uid =? and pwd=?");
    ps.setString(1,emaill);
    ps.setString(2,passs);
    ResultSet rs = ps.executeQuery();
                
if( rs.next() )
{
session.setAttribute("user",emaill);
response.sendRedirect ("3.jsp");
}
else
{
 out.println("<script>alert('check the user and pwd');</script>");
 response.sendRedirect("index.html");
}
  con.close();
}
   catch(Exception ee) {out.println(ee);}
}
           
%>



