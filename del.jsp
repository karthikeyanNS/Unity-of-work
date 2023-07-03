<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<%

    try
        {
           String sname=request.getParameter("sname");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
           PreparedStatement ps = con.prepareStatement("delete from cart where name=?");
           ps.setString(1,sname);
           ps.executeUpdate();
           out.println("Deleted");
           con.close();
        }
      catch(Exception e) { out.println(e); } 


%>
