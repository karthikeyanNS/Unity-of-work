<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view-cart</title>
        <link rel="stylesheet" type="text/css" href="uw.css">
        <style type="text/css">
            .t
            {
                font-weight: 700;
                font-size: 20px;
            }
            #ptp
            {
                text-decoration: none;
                color:white;
                padding:5px;
                border:none;
                font-weight: 700;
                animation: bcl 2s infinite;
                width:fit-content;
                margin-top:10px;
            }
            #finalprice
            {
                height:150px;
                width:fit-content;
                display: flex;
                justify-content:center;
                align-item:center;
                flex-direction:column;
            }
@keyframes bcl {
  0%{background-color: red;}
  25%{background-color: orange;}
  50%{background-color: green;}
  75%{background-color: blue;}
  100%{background-color: cyan;}
}
        </style>
    </head>
    <body onload="check()">
<form action="payment.jsp" method="post">
            
        <%
int price;
 try
        {
           Class.forName("com.mysql.jdbc.Driver");
           String sid=(String) session.getId();
           Connection con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/homerepair","root","");
           PreparedStatement ps = con.prepareStatement("select * from cart where sid='" + sid + "'");
           ResultSet rs = ps.executeQuery();
           int index = 1; 
           
           while (rs.next()) {
            price=rs.getInt(3);

        %>
        <div style="background:pink; width:100%;">
            <table class="table table-border" style="display:flex; flex-direction:column;">
                <tr>
                    <th style="width:50%;">
                        <span id="sn<%=index%>"><%=rs.getString(2)%></span>
                        <input style="width:10%;" value="&#x2716;" type="button" onclick="del(<%=index%>)">
                    </th>
                    <th style="width:15%;">
                        <span id="rs<%=index%>"><%=price%></span>
                        <input type="hidden" id="sprce<%=index%>" name="sprce<%=index%>" value="<%=price%>">
                    </th>
                    <th style="width:15%;">
<input type="number" min="0" value="1" id="num<%=index%>" name="num<%=index%>" onclick="ct()" onchange="tell(<%=index%>)" style="width:70px;">
                    <input type="hidden" id="price<%=index%>" name="price<%=index%>" value="<%=price%>">
                    </th>
                    <th style="width:20%;">
                        <span id="mul<%=index%>"></span>
                        <input type="hidden" id="mulvalue<%=index%>" name="mulvalue<%=index%>">
                    </th>
                </tr>
            </table>
            <script>
                function tell(index) {
                    var b = parseInt(document.getElementById('rs' + index).innerHTML);
                    var c = parseInt(document.getElementById('num'+ index).value);
                    var tot = b * c;
                    document.getElementById("mul" + index).innerHTML =tot;
                    document.getElementById("mulvalue" + index).value =tot;
                }
                function del(index) {
                    var service = document.getElementById('sn' + index).innerHTML;
                    window.location.href = "del.jsp?sname=" + service;
                    location.reload();
                }
                function ct() {
                var total = 0;
                var elements = document.querySelectorAll('span[id^="mul"]');
                for (var i = 0; i < elements.length; i++) {
                var value = parseInt(elements[i].innerHTML);
                if (!isNaN(value)) {
                           total += value;
                                   }
                          }
                var totalElement = document.getElementById("total");
                if (totalElement) {
                totalElement.innerHTML = total;
                } 
            }
            function check()
            {
                document.getElementById('finalprice').style.visibility='visible';
            }
            function take()
            {
               var data = document.getElementById('total').innerHTML;
               document.getElementById('hidden').value = data;
            }
</script>
</div>
                    
        <% 
        index++; %>
    <%}%>
    <input type="hidden" value="<%=index-1%>" id="noi" name="noi">
    <%
    con.close();
           }
                catch(Exception e) { out.println(e); } 
%> 
    <center>
        <div id="finalprice" style="visibility:hidden;">
            <span class="t">Total</span><span class="t" id="total"></span>
        <input type="hidden" value="" name="next" id="hidden">
        <input type="submit" onclick="take()" id="ptp" value="Proceed-To-Payment">
     </form>
        </div>
    </center>
</body>
</html>
<%@ include file="footer.jsp" %>

