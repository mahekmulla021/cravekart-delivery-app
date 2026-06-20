<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Success</title>

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
background:linear-gradient(135deg,#11998e,#38ef7d);
}

.success-box{
width:450px;
background:white;
padding:50px;
border-radius:25px;
text-align:center;
box-shadow:0 10px 30px rgba(0,0,0,0.3);
animation:zoom 1s ease;
}

@keyframes zoom{
from{
opacity:0;
transform:scale(0.5);
}
to{
opacity:1;
transform:scale(1);
}
}

.check{
font-size:90px;
margin-bottom:20px;
animation:bounce 2s infinite;
}

@keyframes bounce{
0%,100%{
transform:translateY(0);
}
50%{
transform:translateY(-10px);
}
}

h1{
color:#28a745;
margin-bottom:15px;
}

p{
font-size:18px;
color:#555;
margin-bottom:25px;
}

.btn{
display:inline-block;
padding:14px 30px;
background:#ff4d4d;
color:white;
text-decoration:none;
border-radius:12px;
font-weight:bold;
transition:0.4s;
}

.btn:hover{
background:#222;
transform:translateY(-3px);
}

</style>

</head>

<body>

<div class="success-box">

<div class="check">
✅
</div>

<h1>
Welcome To FoodExpress
</h1>

<p>
Your Login / Registration Successful
</p>

<a href="login.jsp" class="btn">
Logout
</a>

</div>

</body>
</html>