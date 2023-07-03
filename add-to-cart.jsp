<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<%

    try
        {
           String sname=request.getParameter("sname");
           int price=Integer.parseInt(request.getParameter("price"));
           String sid=session.getId();
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
           PreparedStatement ps = con.prepareStatement("insert into cart(sid,name,price) values (?,?,?)");
           ps.setString(1,sid);
           ps.setString(2,sname);
           ps.setInt(3,price);
           ps.executeUpdate();
           out.println(price);
           con.close();
        }
      catch(Exception e) { out.println(e); } 


%>
