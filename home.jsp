<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>CraveKart Home</title>

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
overflow:hidden;
background:linear-gradient(135deg,#ff512f,#dd2476,#3f5efb);
background-size:400% 400%;
animation:bgAnimation 12s infinite alternate;
display:flex;
justify-content:center;
align-items:center;
position:relative;
}

/* Animated Gradient */

@keyframes bgAnimation{

0%{
background-position:left;
}

100%{
background-position:right;
}

}

/* Floating Circles */

.circle{
position:absolute;
border-radius:50%;
background:rgba(255,255,255,0.12);
animation:float 6s infinite ease-in-out;
}

.circle:nth-child(1){
width:220px;
height:220px;
top:5%;
left:5%;
}

.circle:nth-child(2){
width:300px;
height:300px;
bottom:5%;
right:5%;
animation-duration:8s;
}

.circle:nth-child(3){
width:150px;
height:150px;
top:70%;
left:20%;
animation-duration:5s;
}

.circle:nth-child(4){
width:180px;
height:180px;
top:15%;
right:20%;
animation-duration:7s;
}

@keyframes float{

0%{
transform:translateY(0px);
}

50%{
transform:translateY(-25px);
}

100%{
transform:translateY(0px);
}

}

/* Glass Card */

.container{
position:relative;
width:700px;
padding:60px;
text-align:center;
background:rgba(255,255,255,0.15);
backdrop-filter:blur(15px);
border-radius:30px;
box-shadow:0 8px 32px rgba(0,0,0,0.3);
animation:fadeIn 1.2s ease;
z-index:1;
}

/* Fade Animation */

@keyframes fadeIn{

from{
opacity:0;
transform:translateY(50px);
}

to{
opacity:1;
transform:translateY(0);
}

}

/* Heading */

h1{
font-size:70px;
font-weight:700;
color:white;
margin-bottom:20px;
text-shadow:2px 2px 15px rgba(0,0,0,0.3);
animation:slideDown 1s ease;
}

@keyframes slideDown{

from{
opacity:0;
transform:translateY(-40px);
}

to{
opacity:1;
transform:translateY(0);
}

}

/* Subtitle */

p{
font-size:24px;
color:white;
line-height:1.6;
margin-bottom:40px;
animation:fadeText 2s ease;
}

@keyframes fadeText{

from{
opacity:0;
}

to{
opacity:1;
}

}

/* Button */

.btn{
display:inline-block;
padding:18px 40px;
font-size:22px;
font-weight:600;
color:#dd2476;
background:white;
border-radius:15px;
text-decoration:none;
transition:0.4s;
box-shadow:0 5px 15px rgba(0,0,0,0.3);
}

.btn:hover{
background:black;
color:white;
transform:scale(1.08);
}

/* Food Icons */

.food-icons{
margin-top:35px;
font-size:40px;
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

/* Footer */

.footer{
margin-top:35px;
color:white;
font-size:16px;
opacity:0.9;
}

</style>

</head>

<body>

<div class="circle"></div>
<div class="circle"></div>
<div class="circle"></div>
<div class="circle"></div>

<div class="container">

<h1>CraveKart 🍔</h1>

<p>

Discover delicious meals from top restaurants and cafes.<br>

Fast delivery • Fresh food • Amazing taste

</p>

<a href="restaurants.jsp" class="btn">

Explore Restaurants

</a>

<div class="food-icons">

🍕 🍔 ☕ 🍜 🍰 🥗

</div>

<div class="footer">

CraveKart © 2026 | Your Favorite Food Delivery App

</div>

</div>

</body>
</html>