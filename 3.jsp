<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <div id="sider">
            <button onclick="hide()" style="background-color:red;color:cyan;width:30px;">&#x2716;</button>
            <a href="r1.jsp" id="r1">Electrician</a>
            <hr/>
            <a href="r2.jsp" id="r2">Carpenter</a>
            <hr/>
            <a href="r3.jsp" id="r3">Plumber</a>
            <hr/>
        </div>
        <%@ include file="header.jsp" %>
        <div class="main">
		<div class="container c2">
		<div class="row r2 flex">
			<div class="col-lg-2"></div>
			<div class="col-lg-8 cl1">
				<h1>Home Service,On Demand</h1>
				<form class="f1">
					<select id="Town" name="Town">
                    <option value="Chidambaram">Chidambaram</option>
                    <option value="Cuddalore">Cuddalore</option>
                    <option value="Bhuvanagiri">Bhuvanagiri</option>
                    <option value="Parangipettai">Parangipettai</option>
                    </select>
                                    <input type="text" name="t1" placeholder="search for service">
				</form>
			</div>
			<div class="col-lg-2"></div>
	    </div>
     </div>
	</div>
	<div class="main2">
	<div class="container c3">
	<div class="row r3 flex">
		<div class="col-lg-12 cl2">
                <a href="w1.jsp"><div class="d2"><img src="images\women.webp" height="50" width="50"><span id="s">Salon for Women</span></div></a>
                <a href="m1.jsp"><div class="d2"><img src="images\men.webp"><span>Salon for Men</span></div></a>
                    <a href="s1.jsp"><div class="d2"><img src="images\men.webp"><span>Hair,Skin and Nails</span></div></a>
                    <a id="a" onclick="show()" href="#"><div class="d2"><img src="images\repair.webp"><span>Home Repair</span></div></a>
                    <a href="ap.jsp"><div class="d2"><img src="images\ac.webp"><span>Ac/Applience Repairs</span></div></a>
                    <a href="p1.jsp"><div class="d2"><img src="images\paint.webp"><span>Home Painting</span></div></a>
                    <a href="c1.jsp"><div class="d2"><img src="images\pest.webp"><span>Cleaning & Pest Control</span></div></a>
                    <script type="text/javascript">
            function show(){sider.style.visibility="visible";}
	    function hide(){sider.style.visibility="hidden";}

        </Script>
		</div>
	</div>
</div>
</div>
<div class="line" style="background:#E5E4E2;height:7px"></div>
<div class="main3">
	<div class="container c4">
		<div class="row r4 flex pad-20">
			<div class="col-lg-3 flex cl3">
			<a href="c1.jsp"><img class="img" src="images\bath.webp"></a></div>
			<div class="col-lg-3 flex cl3">
			<a href="w1.jsp"><img class="img" src="images\relax.webp"></a></div>
			<div class="col-lg-3 flex cl3">
			<a href="m1.jsp"><img class="img" src="images\hair.webp"></a></div>
			<div class="col-lg-3 flex cl3">
                        <a href="w1.jsp"><img class="img" src="images\face.webp"></a></div>   
			</div>
	</div>
</div>
<div class="line" style="background:#E5E4E2;height:7px"></div>
<div class="main4">
	<div class="container">
		<div class="row">
	<div class="carousel slide" data-bs-ride="carousel" style="padding:20px;display:flex; justify-content:center">
  <div class="carousel-inner" style="width: 50%;">
    <div class="carousel-item active" data-bs-interval="1000">
      <img src="images\p1.jpg" height="300" width="650">
    </div>
    <div class="carousel-item" data-bs-interval="1000">
      <img src="images\p2.jpg" height="300" width="650">
    </div>
    <div class="carousel-item" data-bs-interval="1000">
      <img src="images\p3.jpg" height="300" width="650">
    </div>
       <div class="carousel-item" data-bs-interval="1000">
      <img src="images\p4.jpeg" height="300" width="650">
    </div>
       <div class="carousel-item" data-bs-interval="1000">
      <img src="images\p5.jpeg" height="300" width="650">
    </div>
  </div>
</div>
</div>
</div>
</div>
<div class="line" style="background:#E5E4E2;height:7px"></div>
<div class="main5">
	<div class="container c5">
		<div class="row r5 flex pad-20">
			<center><h1>Best Offers</h1><h5>Hygenic and Single Use Product | Low-Contact Service</h5></center>
			<div class="col-lg-3 flex cl4">
			<a href="m1.jsp"><img class="img" src="images\salon.webp"><span>Salon Prime For Kids And Men</span><h6>Flat Rs.100 OFF</h6></a></div>
			<div class="col-lg-3 flex cl4">
                        <a href="c1.jsp"><img class="img" src="images\kit.webp"><span>Bathroom & Kitchen Cleaning</span><h6>Starts at Rs.399</h6></a>
			</div>
			<div class="col-lg-3 flex cl4">
			<a href="w1.jsp"><img class="img" src="images\spa.webp"><span>Salon Prime</span><h6>Starts at Rs.499</h6></a></div>
			<div class="col-lg-3 flex cl4">
                        <a href="m1.jsp"><img class="img" src="images\massage.webp"><span>Massage For Men</span><h6
				>Free Waxing</h6></a></div>
			</div>
	</div>
</div>
<div class="line" style="background:#E5E4E2;height:7px"></div>
<div class="main6">
	<div class="container c6">
		<div class="row r6 flex pad-20">
			<center><h1>Appliances</h1><h5>Servicing,Repair,Installation & UnInstallation</h5></center>
			<div class="col-lg-3 flex cl5">
			<a href="ap.jsp"><img class="img" src="images\a1.webp"><h6>Flat Rs.100 OFF</h6></a></div>
			<div class="col-lg-3 flex cl5">
			<a href="ap.jsp"><img class="img" src="images\a2.webp"><h6>Free Waxing</h6></a></div>
			<div class="col-lg-3 flex cl5">
			<a href="ap.jsp"><img class="img" src="images\a3.webp"><h6>Starts at Rs.499</h6></a></div>
	</div>
</div>
</div>
<div class="line" style="background:#E5E4E2;height:7px"></div>
<div class="main4">
	<div class="container">
		<div class="row">
	<div class="carousel slide" data-bs-ride="carousel" style="padding:20px;display:flex; justify-content:center">
  <div class="carousel-inner" style="width: 50%;">
    <div class="carousel-item active" data-bs-interval="1000">
      <img src="images\c1.webp" height="300" width="650">
      <div><center><h5>Bathroom and Kitchen Cleaning</h5><center></div>
    </div>
    <div class="carousel-item" data-bs-interval="1000">
      <img src="images\c2.webp" height="300" width="650">
      <div><center><h5>Full Home Cleaning</h5><center></div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="images\c3.webp" height="300" width="650">
      <div><center><h5>Sofa and Carpet Cleaning</h5><center></div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="images\c4.webp" height="300" width="650">
      <div><center><h5>General Pest Cleaning</h5><center></div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="images\c5.webp" height="300" width="650">
      <div><center><h5>Bed Bug Control</h5><center></div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="images\c6.webp" height="300" width="650">
      <div><center><h5>Termite Control</h5><center></div>
    </div>
  </div>
</div>
</div>
</div>
</div>
<div class="line" style="background:#E5E4E2;height:7px"></div>
<div class="main7">
	<div class="container c7">
		<div class="row r7 flex pad-20">
			<div class="col-lg-12 flex cl6">
			<div>
				<img src="images\plump.webp">
			</div>
		</div>
		</div>
	</div>
</div>
<div class="line" style="background:#E5E4E2;height:7px"></div>
<div class="main6">
	<div class="container c6">
		<div class="row r6 flex pad-20">
			<center><h1>Home Repairs</h1></center>
			<div class="col-lg-3 flex cl5">
			<a href="r2.jsp"><img class="img" src="images\h1.webp"><h6>Carpenter</h6></a></div>
			<div class="col-lg-3 flex cl5">
			<a href="r1.jsp"><img class="img" src="images\h2.webp"><h6>Electrician</h6></a></div>
			<div class="col-lg-3 flex cl5">
			<a href="r3.jsp"><img class="img" src="images\h3.jpg"><h6>Plumber</h6></a></div>
	</div>
</div>
</div>
<%@ include file="footer.jsp" %>
    </body>
</html>
