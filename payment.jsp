<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String a=request.getParameter("next");
int noi = Integer.parseInt(request.getParameter("noi"));
Cookie ck=new Cookie("noi",noi+"");
response.addCookie(ck);
for (int i=1;i<=noi;i++)
{
int number = Integer.parseInt(request.getParameter("num"+i));
int price = Integer.parseInt(request.getParameter("price"+i));
Cookie ck1=new Cookie("num"+i,number+"");
response.addCookie(ck1);
Cookie ck2=new Cookie("price"+i,price+"");
response.addCookie(ck2);
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Form</title>
    <link rel="stylesheet" href="uw.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
<style type="text/css">
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body{
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: azure;
}

.pay{
    width: 750px;
    height: 500px;
    border: 1px solid;
    background-color: white;
    display: flex;
    flex-direction: column;
    padding: 40px;
    justify-content:space-around;
}

.pay h1{
    text-align: center;
}
.pay h2
{
    text-align: center;
}
.first-row{
     display: flex;
}
.card-number
{
    margin-bottom:20px;
}
.owner{
    width: 100%;
    margin-right: 40px;
    margin-bottom:20px;
}

.input-field{
    border: 1px solid #999;
}

.input-field input{
    width: 100%;
    border:none;
    outline: none;
    padding: 10px;
}

.selection{
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.selection select{
    padding: 10px 20px;
}

#submit{
    background-color: blueviolet;
    color: white;
    text-align: center;
    text-transform: uppercase;
    text-decoration: none;
    padding: 10px;
    font-size: 18px;
    transition: 0.5s;
    width: 100%;
    margin-top:20px;
}

#submit:hover{
    background-color: dodgerblue;
}

.cards img{
    width: 100px;
}
    
</style>
</head>
<body>
    <div class="container pay">
        <form action="Billing.jsp" method="post">
        <h1>Confirm Your Payment</h1>
        <h2>Rs <%=a%></h2>
        <div class="first-row">
            <div class="owner">
                <h3>Owner</h3>
                <div class="input-field">
                    <input type="text" name="card-holder" id="ch" required>
                </div>
            </div>
            <div class="cvv">
                <h3>CVV</h3>
                <div class="input-field">
                    <input type="password" required>
                </div>
            </div>
        </div>
        <div class="second-row">
            <div class="card-number">
                <h3>Card Number</h3>
                <div class="input-field">
                    <input type="text" name="card-details" id="cd" onchange="formatInput(this)" required placeholder="1111-2222-3333-4444">
                    <script type="text/javascript">
                     function formatInput(input) {
      let formattedValue = input.value.replace(/\D/g, ''); // Remove all non-digit characters
      formattedValue = formattedValue.replace(/(.{4})/g, '$1-'); // Add hyphen after every four digits
      input.value = formattedValue;
    }
                    </script>
                </div>
            </div>
        </div>
        <div class="third-row">
            <h3>Validation</h3>
            <div class="selection">
                <div class="date">
                    <select name="months" id="months">
                        <option value="Jan">Jan</option>
                        <option value="Feb">Feb</option>
                        <option value="Mar">Mar</option>
                        <option value="Apr">Apr</option>
                        <option value="May">May</option>
                        <option value="Jun">Jun</option>
                        <option value="Jul">Jul</option>
                        <option value="Aug">Aug</option>
                        <option value="Sep">Sep</option>
                        <option value="Oct">Oct</option>
                        <option value="Nov">Nov</option>
                        <option value="Dec">Dec</option>
                      </select>
                      <select name="years" id="years">
                        <option value="2020">2020</option>
                        <option value="2019">2019</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                      </select>
                </div>
                <div class="cards">
                    <img src="images/mc.png" alt="">
                    <img src="images/vi.png" alt="">
                    <img src="images/pp.png" alt="">
                </div>
            </div>    
        </div> 
            <input type="hidden" name="ftotal" value="<%=a%>">
            <input type="submit" name="submit" value="submit" id="submit"></form>
    </div>
</body>
</html>