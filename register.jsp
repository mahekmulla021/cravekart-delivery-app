<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>CraveKart Register</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#ff512f,#dd2476);
overflow:hidden;
}

/* Animated Background */

.circle{
position:absolute;
border-radius:50%;
background:rgba(255,255,255,0.15);
animation:float 6s infinite ease-in-out;
}

.circle:nth-child(1){
width:200px;
height:200px;
top:10%;
left:10%;
}

.circle:nth-child(2){
width:250px;
height:250px;
bottom:10%;
right:10%;
animation-duration:8s;
}

.circle:nth-child(3){
width:120px;
height:120px;
bottom:15%;
left:20%;
animation-duration:5s;
}

@keyframes float{

0%{
transform:translateY(0px);
}

50%{
transform:translateY(-20px);
}

100%{
transform:translateY(0px);
}

}

/* Glass Card */

.container{
position:relative;
width:430px;
padding:40px;
background:rgba(255,255,255,0.15);
backdrop-filter:blur(12px);
border-radius:25px;
box-shadow:0 8px 32px rgba(0,0,0,0.3);
animation:fadeIn 1s ease;
z-index:1;
}

@keyframes fadeIn{

from{
opacity:0;
transform:translateY(40px);
}

to{
opacity:1;
transform:translateY(0);
}

}

.container h1{
text-align:center;
color:white;
margin-bottom:30px;
font-size:40px;
font-weight:700;
}

/* Inputs */

.input-box{
margin-bottom:20px;
}

.input-box input{
width:100%;
padding:15px;
border:none;
outline:none;
border-radius:12px;
background:rgba(255,255,255,0.2);
color:white;
font-size:16px;
transition:0.3s;
}

.input-box input::placeholder{
color:#f1f1f1;
}

.input-box input:focus{
background:rgba(255,255,255,0.3);
transform:scale(1.02);
}

/* Button */

button{
width:100%;
padding:15px;
border:none;
border-radius:12px;
background:white;
color:#dd2476;
font-size:18px;
font-weight:600;
cursor:pointer;
transition:0.3s;
}

button:hover{
background:black;
color:white;
transform:translateY(-3px);
}

/* Message */

.msg{
margin-top:20px;
text-align:center;
font-size:20px;
font-weight:bold;
color:white;
}

/* Login Button */

.login-btn{
margin-top:15px;
text-align:center;
}

.login-btn a{
text-decoration:none;
}

.login-btn button{
width:220px;
}

/* Footer */

.footer{
margin-top:20px;
text-align:center;
color:white;
font-size:14px;
}

</style>

</head>

<body>

<div class="circle"></div>
<div class="circle"></div>
<div class="circle"></div>

<div class="container">

<h1>Cravekart</h1>

<form method="post">

<div class="input-box">

<input type="text"
name="name"
placeholder="Enter Full Name"
required>

</div>

<div class="input-box">

<input type="email"
name="email"
placeholder="Enter Email Address"
required>

</div>

<div class="input-box">

<input type="password"
name="password"
placeholder="Create Password"
required>

</div>

<div class="input-box">

<input type="text"
name="address"
placeholder="Enter Address"
required>

</div>

<button type="submit">

Register Now

</button>

</form>

<div class="msg">

<%

String name = request.getParameter("name");

String email = request.getParameter("email");

String password = request.getParameter("password");

String address = request.getParameter("address");

if(name!=null && email!=null &&
password!=null && address!=null){

Connection con = null;

PreparedStatement ps = null;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/fooddelivery",
"root",
"root"
);

String query =
"INSERT INTO users(name,email,password,address) VALUES(?,?,?,?)";

ps = con.prepareStatement(query);

ps.setString(1,name);

ps.setString(2,email);

ps.setString(3,password);

ps.setString(4,address);

int x = ps.executeUpdate();

if(x>0){

out.println("Registration Successful 🎉");

%>

<div class="login-btn">

<a href="login.jsp">

<button type="button">

Login Now

</button>

</a>

</div>

<%

}
else{

out.println("Registration Failed");

}

}
catch(Exception e){

out.println(e);

}
finally{

try{

if(ps!=null) ps.close();

if(con!=null) con.close();

}
catch(Exception e){}

}

}

%>

</div>

<div class="footer">

CraveKart © 2026 | Fast Delivery

</div>

</div>

</body>
</html>s