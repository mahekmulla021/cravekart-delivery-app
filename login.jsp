<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CraveKart Login</title>

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
background:linear-gradient(135deg,#141e30,#243b55);
overflow:hidden;
}

/* Animated Background */

.circle{
position:absolute;
border-radius:50%;
background:rgba(255,255,255,0.1);
animation:float 6s infinite ease-in-out;
}

.circle:nth-child(1){
width:220px;
height:220px;
top:5%;
left:8%;
}

.circle:nth-child(2){
width:280px;
height:280px;
bottom:8%;
right:8%;
animation-duration:8s;
}

.circle:nth-child(3){
width:140px;
height:140px;
top:65%;
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

/* Login Card */

.container{
position:relative;
width:420px;
background:rgba(255,255,255,0.12);
backdrop-filter:blur(15px);
padding:40px;
border-radius:25px;
box-shadow:0 8px 32px rgba(0,0,0,0.3);
animation:slideUp 1s ease;
z-index:1;
}

@keyframes slideUp{

from{
opacity:0;
transform:translateY(50px);
}

to{
opacity:1;
transform:translateY(0);
}

}

/* Logo */

.logo{
text-align:center;
font-size:42px;
font-weight:700;
color:white;
margin-bottom:10px;
}

/* Subtitle */

.subtitle{
text-align:center;
color:#f1f1f1;
margin-bottom:30px;
font-size:18px;
}

/* Inputs */

.input-box{
margin-bottom:20px;
}

.input-box input{
width:100%;
padding:15px;
border:none;
border-radius:12px;
outline:none;
font-size:15px;
background:rgba(255,255,255,0.2);
color:white;
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

.login-btn{
width:100%;
padding:15px;
background:#00ff99;
border:none;
border-radius:12px;
font-size:18px;
font-weight:bold;
cursor:pointer;
transition:0.4s;
}

.login-btn:hover{
background:white;
transform:translateY(-3px);
}

/* Register Link */

.link{
text-align:center;
margin-top:20px;
color:white;
font-size:15px;
}

.link a{
color:#00ffcc;
text-decoration:none;
font-weight:bold;
}

.link a:hover{
text-decoration:underline;
}

/* Footer */

.footer{
margin-top:25px;
text-align:center;
color:#ddd;
font-size:14px;
}

/* Error Message */

.error{
margin-top:15px;
text-align:center;
color:#ff9999;
font-weight:bold;
font-size:16px;
}

</style>

</head>

<body>

<div class="circle"></div>
<div class="circle"></div>
<div class="circle"></div>

<div class="container">

<div class="logo">

🍔 CraveKart

</div>

<div class="subtitle">

Login To Continue

</div>

<form method="post">

<div class="input-box">

<input type="email"
name="email"
placeholder="Enter Email"
required>

</div>

<div class="input-box">

<input type="password"
name="password"
placeholder="Enter Password"
required>

</div>

<button type="submit" class="login-btn">

Login

</button>

</form>

<div class="link">

New User?

<a href="register.jsp">

Register

</a>

</div>

<div class="footer">

CraveKart © 2026 | Fast Delivery

</div>

<div class="error">

<%

String email = request.getParameter("email");

String password = request.getParameter("password");

if(email!=null && password!=null){

Connection con = null;

PreparedStatement ps = null;

ResultSet rs = null;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/fooddelivery",
"root",
"root"
);

String query =
"SELECT * FROM users WHERE email=? AND password=?";

ps = con.prepareStatement(query);

ps.setString(1,email);

ps.setString(2,password);

rs = ps.executeQuery();

if(rs.next()){

session.setAttribute("user",email);

response.sendRedirect("home.jsp");

}
else{

out.println("Invalid Email or Password");

}

}
catch(Exception e){

out.println(e);

}
finally{

try{

if(rs!=null) rs.close();

if(ps!=null) ps.close();

if(con!=null) con.close();

}
catch(Exception e){}

}

}

%>

</div>

</div>

</body>
</html>