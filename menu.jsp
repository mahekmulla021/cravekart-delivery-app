<!-- ========================= menu.jsp ========================= -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
String restaurant = request.getParameter("restaurant");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Menu</title>

<style>

body{
font-family:Arial;
background:#fff5f0;
margin:0;
}

h1{
text-align:center;
padding:30px;
font-size:50px;
color:#ff4d4d;
}

.food-grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
gap:30px;
padding:40px;
}

.food-card{
background:white;
border-radius:20px;
overflow:hidden;
box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

.food-card img{
width:100%;
height:220px;
object-fit:cover;
}

.food-content{
padding:20px;
text-align:center;
}

.price{
font-size:22px;
font-weight:bold;
color:#ff4d4d;
margin:15px 0;
}

.btn{
background:#ff4d4d;
color:white;
padding:10px 20px;
text-decoration:none;
border-radius:8px;
display:inline-block;
}

.btn:hover{
background:black;
}

</style>

</head>

<body>

<h1><%= restaurant.toUpperCase() %> MENU</h1>

<div class="food-grid">

<%

String[][] menu = null;

if("pizza".equals(restaurant)){

menu = new String[][]{
{"Margherita Pizza","https://images.unsplash.com/photo-1513104890138-7c749659a591?w=800"},
{"Farmhouse Pizza","https://rahicafe.com/wp-content/uploads/2022/03/pizza-farm-house.jpg"},
{"Veggie Supreme","https://tse4.mm.bing.net/th/id/OIP.Qbosi7QyK-DT2iRApDN7-QHaFj?w=680&h=510&rs=1&pid=ImgDetMain&o=7&rm=3"},
{"Paneer Pizza","https://tse4.mm.bing.net/th/id/OIP.hzb6SIiQcp7Fos9417yLzAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3"},
{"Cheese Burst","https://product-assets.faasos.io/production/product/image_1658347094571_Classic_Margherita_Cheese_Burst_Pizza.jpg"},
{"Mexican Pizza","https://tse4.mm.bing.net/th/id/OIP.OhpN16v5FUovMuWXm7va9AHaHa?w=1024&h=1024&rs=1&pid=ImgDetMain&o=7&rm=3"},
};

}

else if("cafe".equals(restaurant)){

menu = new String[][]{
{"Cappuccino","https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800"},
{"Cold Coffee","https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=800"},
{"Chocolate Shake","https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=800"},
{"Brownie Cake","https://images.unsplash.com/photo-1551024601-bec78aea704b?w=800"},
{"Latte Coffee","https://images.unsplash.com/photo-1517701604599-bb29b565090c?w=800"},
{"French Fries","https://images.unsplash.com/photo-1576107232684-1279f390859f?w=800"}
};

}

else if("burger".equals(restaurant)){

menu = new String[][]{
{"Cheese Burger","https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800"},
{"Chicken Burger","https://images.unsplash.com/photo-1550547660-d9450f859349?w=800"},
{"Double Patty Burger","https://images.unsplash.com/photo-1571091718767-18b5b1457add?w=800"},
{"Veg Burger","https://images.unsplash.com/photo-1520072959219-c595dc870360?w=800"},
{"Chicken Nuggets","https://images.unsplash.com/photo-1562967914-608f82629710?w=800"},
{"Peri Fries","https://images.unsplash.com/photo-1585109649139-366815a0d713?w=800"}
};

}

else if("biryani".equals(restaurant)){

menu = new String[][]{

{"Chicken Biryani","https://images.unsplash.com/photo-1633945274405-b6c8069047b0?w=800"},

{"Mutton Biryani","https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=800"},

{"Veg Biryani","https://images.unsplash.com/photo-1512058564366-18510be2db19?w=800"},

{"Hyderabadi Biryani","https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=800"},

{"Egg Biryani","https://images.unsplash.com/photo-1642821373181-696a54913e93?w=800"},

{"Paneer Biryani","https://tse1.mm.bing.net/th/id/OIP.bywIBqR7BsxTwoFvwgiehgHaEO?rs=1&pid=ImgDetMain&o=7&rm=3"},
};

}

else if("chinese".equals(restaurant)){

menu = new String[][]{
{"Hakka Noodles","https://images.unsplash.com/photo-1585032226651-759b368d7246?w=800"},
{"Fried Rice","https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=800"},
{"Spring Rolls","https://tse1.explicit.bing.net/th/id/OIP.XdtxQRBEiQ3tOd1_5743cwHaLH?rs=1&pid=ImgDetMain&o=7&rm=3"},
{"Veg Manchurian","https://b.zmtcdn.com/data/pictures/chains/6/21276576/46dbd15f310b34451b8efa4b1f80937e.jpg"},
{"Schezwan Rice","https://images.unsplash.com/photo-1512058564366-18510be2db19?w=800"},
{"Chicken Noodles","https://i.pinimg.com/originals/55/e1/34/55e1341bde9334b881ec8e4319af2464.jpg"},
};

}

else if("dessert".equals(restaurant)){

menu = new String[][]{
	{"Chocolate Cake","https://www.kitchenmomy.com/wp-content/uploads/2025/05/Hersheys-Chocolate-Cake-768x768.jpg"},

	{"Brownie Sundae","https://tse3.mm.bing.net/th/id/OIP.3CCLwP7xY81zRZ3F4cADMwHaHa?rs=1&pid=ImgDetMain&o=7&rm=3"},

	{"Vanilla Ice Cream","https://icecreamdiy.com/wordpress/wp-content/uploads/2024/05/Vanilla-Custard-Ice-Cream-Recipe-1-500x500.jpg"},

	{"Donuts","https://cdn.pixabay.com/photo/2024/02/22/11/29/donuts-8589791_1280.jpg"},

	{"Waffles","https://static.vecteezy.com/system/resources/thumbnails/037/295/872/small_2x/ai-generated-artistry-in-ceramic-hyper-real-chocolate-waffle-precision-free-photo.jpg"},

	{"Mango Sundae","https://thumbs.dreamstime.com/b/gourmet-mango-parfait-tall-glass-layered-fresh-diced-mangoes-creamy-custard-graham-cracker-crumbs-gourmet-mango-321803938.jpg"},
};

}

else if("healthy".equals(restaurant)){

menu = new String[][]{

{"Healthy Salad","https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800"},

{"Fruit Bowl","https://i.pinimg.com/736x/95/c5/e0/95c5e03dc1a407e1db09eb7fb5dfc18a.jpg"},

{"Green Smoothie","https://www.joyfulhealthyeats.com/wp-content/uploads/2016/01/Tropical-Green-Smoothie-web-2.jpg"},

{"Protein Shake","https://tse4.mm.bing.net/th/id/OIP.s6SPhRjndfOH76LjE5C4TAHaLH?w=633&h=950&rs=1&pid=ImgDetMain&o=7&rm=3"},

{"Avocado Toast","https://www.jessicagavin.com/wp-content/uploads/2020/07/avocado-toast-11.jpg"},

{"Veg Wrap","https://tse2.mm.bing.net/th/id/OIP.pgt8g4rQMizb90-FPygoFQHaEp?rs=1&pid=ImgDetMain&o=7&rm=3"},

};

}

else if("grill".equals(restaurant)){

menu = new String[][]{

	{"Grilled Chicken","https://tse2.mm.bing.net/th/id/OIP.bjj8yIBU0f9yoy_TexlqDgHaJQ?w=819&h=1024&rs=1&pid=ImgDetMain&o=7&rm=3"},

	{"Chicken BBQ","https://www.pepperbowl.com/wp-content/uploads/2025/06/BBQ-Boneless-Chicken-Thighs-recipe-720x1080.jpg"},

	{"Chicken Wings","https://images.unsplash.com/photo-1608039755401-742074f0548d?w=800"},

	{"Chicken Kebab","https://tse4.mm.bing.net/th/id/OIP.pAsic8o8L_25pqwlpV3ZYAHaLH?rs=1&pid=ImgDetMain&o=7&rm=3"},

	{"Peri Peri Chicken","https://chefyoyo.com/thumb/768/spatchcock-peri-peri-chicken-recipe.webp"},

	{"Chicken Roll","https://img.freepik.com/premium-photo/spicy-chicken-roll-isolated-white-background_506134-18971.jpg"},

};

}

else if("pasta".equals(restaurant)){

menu = new String[][]{

	{"White Sauce Pasta","https://cookingwithcasey.com/assets/images/1742358496409-ajvfa0wd.webp"},

	{"Red Sauce Pasta","https://tse2.mm.bing.net/th/id/OIP.TJWWocFnstGinMDN9iq9cwHaEK?rs=1&pid=ImgDetMain&o=7&rm=3"},

	{"Italian Pasta","https://tse3.mm.bing.net/th/id/OIP.wSuyQCcpGi9Zo9G_IgWiRAHaGw?rs=1&pid=ImgDetMain&o=7&rm=3"},

	{"Cheese Pasta","https://tse2.mm.bing.net/th/id/OIP.-Uhe2IXcM56-S6ApqSnjUwHaLH?w=1200&h=1800&rs=1&pid=ImgDetMain&o=7&rm=3"},

	{"Chicken Pasta","https://tse2.mm.bing.net/th/id/OIP.ONVG80LLFvBCZJP66WFo6gHaLH?rs=1&pid=ImgDetMain&o=7&rm=3"},

	{"Garlic Pasta","https://tse3.mm.bing.net/th/id/OIP.5CzNgrg6BOHAmWT59EblPQHaLG?rs=1&pid=ImgDetMain&o=7&rm=3"},

};

}

for(int i=0;i<menu.length;i++){
%>

<div class="food-card">

<img src="<%= menu[i][1] %>">

<div class="food-content">

<h2><%= menu[i][0] %></h2>

<div class="price">₹299</div>

<a href="cart.jsp?item=<%= menu[i][0] %>" class="btn">

Add To Cart

</a>

</div>

</div>

<%
}
%>

</div>

</body>
</html>