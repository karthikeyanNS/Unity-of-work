<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %> 
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="uw.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *
            {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
        <div class="container bcon">
            <div class="row br1">
                <div class="col-lg-6">
                    <h2 id="bh2">INVOICE</h2>
                </div>
                <div class="col-lg-6 bcol2">
                    <div class="logo flex" id="blogo">
				<img src="images\uw.png" height="80" width="80" style="background-color:white;">
				<div class="name">
				<h3>Union Of Works</h3>
				<span class="s1">On Time On Demand</span>	
                                </div>
                                        
                    </div></div></div>
            <div class="row br2">
                <div class="col-lg-6">
                    <h4 id="bh4">Address</h4>
                </div>
                <div class="col-lg-6 bcol3">
                    <h6 id="bh6">
                        No:46, Union Of Work,<br/> Anantheswarar Koil Street,<br/> Chidambaram-608001<br/>
                        Land Mark:Near Nippon Paint Delearship.
                    </h6>
			</div>
                </div>
 <%String a=session.getId();
 
 %>
               <div class="row br3">
                   <div class="col-lg-3">
                       <h4 class="bhed">Service</h4>
                   </div>
                   <div class="col-lg-3">
                       <h4 class="bhed">Quantity</h4>
                   </div>
                   <div class="col-lg-3">
                       <h4 class="bhed">Price</h4>
                   </div>
                   <div class="col-lg-3">
                       <h4 class="bhed">Amount</h4>
                   </div>
               </div>             
       <%
  Cookie[] cookies = request.getCookies();
  for (Cookie cookie : cookies) {
    String cookieName = cookie.getName();
    if (cookieName.startsWith("num")) {
         %>
         
         <%try
        {
           Class.forName("com.mysql.jdbc.Driver");
           String sid=(String) session.getId();
           Connection con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
           PreparedStatement ps = con.prepareStatement("select * from cart where sid='" + sid + "'");
           ResultSet rs = ps.executeQuery();
           while(rs.next()){%>
     <div class="row">
           <div class="col-lg-3 bcol4"><h4><%=rs.getString(2)%></h4></div>
           <%}
    con.close();
           }
                catch(Exception e) { out.println(e); } %>   
           <div class="col-lg-3 bcol4"><h4><%=Integer.parseInt(cookie.getValue())%></h4></div>
            <% } else if (cookieName.startsWith("price")) { %>
            <div class="col-lg-3 bcol4"><h4><%=Integer.parseInt(cookie.getValue())%></h4></div> 
           <%                                             }                  } %>
            <div class="col-lg-3 bcol4"><h4></h4></div>
     </div>
         <%
       String b=request.getParameter("card-holder");
        String c=request.getParameter("card-details");
        String d=request.getParameter("ftotal");
   %>
       <div class="row br4">
           <div class="col-lg-8">
               <h4 align="right">Total</h4>
           </div>
           <div class="col-lg-4">
               <h4 align="center" style="position:relative; left:40px;"><%=d%></h4>
           </div>
       </div>
       <div class="row br5">
       <div class="col-lg-6">
           <h4>Billing ID</h4>
       </div>
       <div class="col-lg-6">
           <h4> <%=a%></h4>
       </div>
     </div>
       <div class="row br7">
           <div class="col-lg-6">
               <h4>Payment-Mode</h4>
           </div>
           <div class="col-lg-6">
               <h4>Online</h4>
           </div>
       </div>
       <div class="row br8">
           <div class="col-lg-6">
               <h4>Card-Owner</h4>
           </div>
           <div class="col-lg-6">
               <h4><%=b%></h4>
           </div>  
       </div>
           <div class="row br9">
               <div class="col-lg-6">
                   <h4>Card-Number</h4>
               </div>
               <div class="col-lg-6">
                   <h4><%=c%></h4>
               </div>
           </div>
       <div class="row br6">
           <div class="col-lg-6">
               <h4 id="bh4">Delivery Details</h4>
           </div>
          <%
        String name=(String)session.getAttribute("user");
      try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
           PreparedStatement ps = con.prepareStatement("select * from newuser where uid =?");
           ps.setString(1, name);
           ResultSet rs = ps.executeQuery(); 
           while (rs.next()) 
              {%>   
           <div class="col-lg-6">
             <h6 id="bh6">
                  <span><%=rs.getString(1)%></span><br/>
                 <span>Address:<%=rs.getString(6)%></span><br/>
                 <span>Email:<%=rs.getString(5)%></span><br/>
                 <span>Phone:<%=rs.getString(7)%></span>
             </h6>  
           </div>
         <%
      }
       con.close(); }
      catch(Exception e) { out.println(e); } 
   %>   
       </div>
   </div>
    </body>
</html>

