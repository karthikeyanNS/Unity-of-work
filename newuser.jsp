<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>New User Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
         <link rel="stylesheet" type="text/css" href="uw.css">
    </head>
    <body>
<section id="login" style="padding: 40px;">
  <div class="container-fluid">
    <div class="row" style="display: flex; flex-wrap: wrap;">
      <div class="col-lg-6">
        <div class="logo flex">
	<img src="images\uw.png" height="80" width="80">
	<div class="name">
	<h3>Union Of Works</h3>
	<span class="s1">On Time On Demand</span>	
	</div>
	</div>  
        <img src="images\clean.jpg" style="max-width: 100%;">
      </div>
      <div class="col-lg-6">
				<div class="box-signup mt-90">
	<h1 class="text-heading-3 text-center">New-User-Welcome</h1>
        <form name="f1" action="n2.jsp" method="post">
		<div class="box-form-signup">
                    <center><div class="form-group" id="first">
                            <input name="FirstName" class="form-control" placeholder="FirstName" type="text" style="width:60%">
                        </div><br>
                        <div class="form-group" id="last">
                            <input name="LastName" class="form-control" placeholder="LastName" type="text" style="width:60%">
                        </div><br/>
                        <div class="form-group" id="user">
                            <input name="UserId" class="form-control" placeholder="UserId" style="width:60%">
                        </div><br/>
                        <div class="form-group" id="pass">
                            <input name="pass" class="form-control" type="password" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" placeholder="Password" style="width:60%" required>
                        </div><br/>
                        <div class="form-group" id="email">
                            <input name="Email" class="form-control" type="email" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" placeholder="Your Email" style="width:60%">
                        </div><br/>
                        <div class="form-group" id="mob">
                            <input type="tel" class="form-control" id="phone" name="phone" placeholder="63.." pattern="^[6-9]\d{9}$" style="width:60%" required>
                        </div><br/>
                        <div class="form-group" id="adds">
                           <textarea id="txta" class="form-control" name="txta" rows="4" cols="30" style="width:60%"></textarea>
                        </div><br/>
			<div class="form-group">
                            <button type="submit" value="submit" name="b1" class="btn btn-info">Submit</button>&emsp;&emsp;
			    <button type="reset" value="reset" name="b2" class="btn btn-danger">Cancel</button
                        </div></center>
        </form>
		</div>
	</div>      	
      	</div>
      </div>
  </div>
</section>
    </body>
</html>
<%@ include file="footer.jsp" %>


