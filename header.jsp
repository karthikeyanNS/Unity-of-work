<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String income=(String)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
         <link rel="stylesheet" type="text/css" href="uw.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="uw.js" type="text/javascript"></script>
    </head>
    <body>
        <header class="flex">
		<div class="container c1">
			<div class="row r1 pad-20">
		<div class="col-lg-6 left">
			<div class="logo flex">
				<img src="images\uw.png" height="80" width="80">
				<div class="name">
				<h3>Union Of Works</h3>
				<span class="s1">On Time On Demand</span>	
				</div>
			</div>
			</div>
			<div class="col-lg-6 right">
				<div class="ls flex pad-20">
					<a href="3.jsp" class="login"><%=income%></a>
                                        <a href="history.jsp" class="login">My Orders</a>
                                        <a href="viewcart.jsp" class="login">View Cart</a>
				</div>
			</div>
		</div>
	</div>
	</header>
    </body>
</html>
