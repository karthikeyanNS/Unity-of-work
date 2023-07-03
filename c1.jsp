<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<%@ page import="java.util.*;" %>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="uw.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cleaning Pest Control</title>
        <link rel="stylesheet" type="text/css" href="uw.css">
    </head>
    <body>
        <div class="temp" id="tempe" style="visibility: hidden;">
            <table>
                <tr>
                    <th>
                        <span style="font-weight:800;" id="tot"></span>
                    </th>
                    <th>
                        <form action="viewcart.jsp"><input type="submit" value="view-Cart" name="s1" id="smt"></form>
                    </th>
                </tr>
             </table>
        </div>
        <div class="container hr1"  style="background-color:#bee1e6;padding:20px;margin-bottom:40px; border-radius: 5%;">
	<div class="row flex r1">
		<div class="col-lg-6 c1">
			<h1 class="topic">Cleaning & Pest Control</h1>
		</div>
		<div class="col-lg-6">
			<video width="500" height="500" autoplay loop muted>
            <source src="images/clean/clean.mp4" type="video/mp4">
            </video>
		</div>
	</div>
            <div class="innerhr1">
                <a href="#Fc"><span>Full-Home-Clean-Work</span></a>
                <a href="#mp"><span>Bathroom-Clean</span></a>
                <a href="#th"><span>Furniture-Clean-Work</span></a>
                <a href="#fcw"><span>Pest-Control</span></a>
                <a href="#hair"><span>Unique-Service</span></a>
            </div>
        </div> 
     <div class="container">
<%
      try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
           PreparedStatement ps = con.prepareStatement("select * from clean");
           ResultSet rs = ps.executeQuery();%>
   <%
           int i=0;
      while (rs.next()) {
          i++;
          String sname=rs.getString(2);
          int price=rs.getInt(3);
   %>
           <div class='row flex hr2'>
			<div class='col-lg-6 c1'>
				<h4 class="pdname"><%= sname %></h4>
				<span id="s1">&#8377;<%= price %></span>
					<span id="s2"><%=rs.getString(8) %></span>
                                        <span id="s3"><%= rs.getString(4) %></span><hr style="width:50%"/>
                                                <dl id="dl">
                        <dt>Include</dt>
                        <dd><%=rs.getString(5)%></dd>
                        <dt>Exclude</dt>
                        <dd><%=rs.getString(6)%></dd>
                        </dl>
			</div>
			<div class="col-lg-6 d1">
                            <img id="repair" src="images/Clean/<%= rs.getString(7) %>">
            <input type="hidden" name="product_id<%=i%>" value="<%= rs.getInt(1) %>">
            <input type="hidden" name="service<%=i%>" id="service<%=i%>"  value="<%=sname%>">
            <input type="hidden" name="price<%=i%>" id="price<%=i%>" value="<%=price%>">
            <input type="button"  class="Add-to-cart" value="Add to Cart" id="add-to-cart<%=i%>" onclick="show<%=i%>()">
            <script>
                var tot=0;
                function show<%=i%>()
                {
                    document.getElementById('add-to-cart<%=i%>').disabled=true;
                    tempe.style.visibility="visible";
                    var service;
                    var price;
                    service=document.getElementById("service<%=i%>").value;
                    price=document.getElementById("price<%=i%>").value;
                    var con = new XMLHttpRequest(); //ajax memory creation
                    con.onreadystatechange=function( )
                {
                    if (con.readyState==4 && con.status==200)
                { 
                    var a =parseInt(con.responseText);
                    tot=tot+a;
                    document.getElementById("tot").innerHTML="RS;"+tot;
                }
                }        
                con.open("GET","add-to-cart.jsp?sname=" + service + "&price=" + price , true);
                con.send();
                }
            </script>
       </div>
		</div>
                <hr/> 
   <%
      }
       con.close(); }
      catch(Exception e) { out.println(e); } 
   %>
     
</div>
  </body>
</html>
<%@ include file="footer.jsp" %>
