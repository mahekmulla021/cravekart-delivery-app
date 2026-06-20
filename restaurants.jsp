<!-- ========================= restaurants.jsp ========================= -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Restaurants & Cafes</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{
background:#fff5f0;
}

h1{
text-align:center;
padding:30px;
font-size:50px;
color:#ff4d4d;
}

.restaurant-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
gap:30px;
padding:40px;
}

.card{
background:white;
border-radius:20px;
overflow:hidden;
box-shadow:0 5px 15px rgba(0,0,0,0.2);
transition:0.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card img{
width:100%;
height:220px;
object-fit:cover;
}

.card-content{
padding:20px;
text-align:center;
}

.card-content h2{
margin-bottom:10px;
}

.card-content p{
margin-bottom:15px;
color:#666;
}

.btn{
background:#ff4d4d;
color:white;
padding:12px 24px;
text-decoration:none;
border-radius:10px;
display:inline-block;
font-weight:bold;
}

.btn:hover{
background:black;
}

</style>

</head>

<body>

<h1>Restaurants & Cafes</h1>

<div class="restaurant-grid">

<div class="card">
<img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=800">
<div class="card-content">
<h2>Pizza World</h2>
<p>Cheesy pizza specials</p>
<a href="menu.jsp?restaurant=pizza" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800">
<div class="card-content">
<h2>Coffee Corner Cafe</h2>
<p>Hot coffee & desserts</p>
<a href="menu.jsp?restaurant=cafe" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800">
<div class="card-content">
<h2>Burger Hub</h2>
<p>Juicy burgers & fries</p>
<a href="menu.jsp?restaurant=burger" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1633945274405-b6c8069047b0?w=800">
<div class="card-content">
<h2>Biryani House</h2>
<p>Authentic dum biryani</p>
<a href="menu.jsp?restaurant=biryani" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246?w=800">
<div class="card-content">
<h2>Chinese Express</h2>
<p>Noodles & fried rice</p>
<a href="menu.jsp?restaurant=chinese" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1551024601-bec78aea704b?w=800">
<div class="card-content">
<h2>Dessert Palace</h2>
<p>Cakes & ice creams</p>
<a href="menu.jsp?restaurant=dessert" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800">
<div class="card-content">
<h2>Healthy Bowl Cafe</h2>
<p>Healthy bowls & smoothies</p>
<a href="menu.jsp?restaurant=healthy" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1529193591184-b1d58069ecdd?w=800">
<div class="card-content">
<h2>Grill Station</h2>
<p>BBQ & grilled items</p>
<a href="menu.jsp?restaurant=grill" class="btn">View Menu</a>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=800">
<div class="card-content">
<h2>Pasta Paradise</h2>
<p>Italian pasta specials</p>
<a href="menu.jsp?restaurant=pasta" class="btn">View Menu</a>
</div>
</div>

</div>

</body>
</html>