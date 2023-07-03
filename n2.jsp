<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<%
 try
      {
           String fn=request.getParameter("FirstName");
           String ln=request.getParameter("LastName");
           String ur=request.getParameter("UserId");
           String pd=request.getParameter("pass");
           String el=request.getParameter("Email");
           String ad=request.getParameter("txta");
           String mob=request.getParameter("phone");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
           PreparedStatement ps = con.prepareStatement("insert into newuser values (?,?,?,?,?,?,?)");
           ps.setString(1,fn);
           ps.setString(2,ln);
           ps.setString(3,ur);
           ps.setString(4,pd);
           ps.setString(5,el);
           ps.setString(6,ad);
           ps.setString(7,mob);
           ps.executeUpdate();
           out.println("Record Saved Get Back To Login Page");
           con.close();
           response.sendRedirect("index.html");
        }
      catch(Exception e) { out.println(e); } 


%>
