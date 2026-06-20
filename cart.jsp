<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%
HashMap<String,Integer> cart =
(HashMap<String,Integer>)session.getAttribute("cart");

if(cart == null){
    cart = new HashMap<String,Integer>();
}

/* Add Item */
String item = request.getParameter("item");

if(item != null){
    if(cart.containsKey(item)){
        cart.put(item, cart.get(item)+1);
    }else{
        cart.put(item, 1);
    }
}

/* Increase Quantity */
String increase = request.getParameter("increase");

if(increase != null && cart.containsKey(increase)){
    cart.put(increase, cart.get(increase)+1);
}

/* Decrease Quantity */
String decrease = request.getParameter("decrease");

if(decrease != null && cart.containsKey(decrease)){
    int qty = cart.get(decrease);

    if(qty > 1){
        cart.put(decrease, qty-1);
    }else{
        cart.remove(decrease);
    }
}

/* Remove Item */
String remove = request.getParameter("remove");

if(remove != null){
    cart.remove(remove);
}

session.setAttribute("cart", cart);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CraveKart Cart</title>

<style>

body{
    font-family:Arial, sans-serif;
    background:#f4f4f4;
    margin:0;
    padding:20px;
}

.container{
    width:80%;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h1{
    text-align:center;
    color:#ff5722;
}

.cart-item{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px;
    border-bottom:1px solid #ddd;
}

.btn{
    text-decoration:none;
    padding:8px 15px;
    background:#ff5722;
    color:white;
    border-radius:5px;
    margin:2px;
}

.btn:hover{
    background:black;
}

.qty{
    font-weight:bold;
}

.total-box{
    margin-top:20px;
    text-align:right;
    font-size:22px;
    font-weight:bold;
}

.action-buttons{
    text-align:center;
    margin-top:25px;
}

.checkout{
    background:green;
}

.back{
    background:#333;
}

.empty{
    text-align:center;
    color:red;
    font-size:28px;
}

</style>

</head>
<body>

<div class="container">

<h1>🛒 CraveKart Shopping Cart</h1>

<%
if(cart.isEmpty()){
%>

<div class="empty">
    Cart Is Empty
</div>

<%
}else{

int total = 0;

for(String food : cart.keySet()){

    int qty = cart.get(food);

    int price = 299;

    int subtotal = qty * price;

    total += subtotal;
%>

<div class="cart-item">

    <div>
        <strong><%= food %></strong>
    </div>

    <div>

        <a href="cart.jsp?decrease=<%= food %>" class="btn">-</a>

        <span class="qty"><%= qty %></span>

        <a href="cart.jsp?increase=<%= food %>" class="btn">+</a>

        <span>₹<%= subtotal %></span>

        <a href="cart.jsp?remove=<%= food %>" class="btn">
            Remove
        </a>

    </div>

</div>

<%
}

double gst = total * 0.05;
double grandTotal = total + gst;
%>

<div class="total-box">

Subtotal : ₹<%= total %><br>

GST (5%) : ₹<%= String.format("%.2f", gst) %><br>

Grand Total : ₹<%= String.format("%.2f", grandTotal) %>

</div>

<div class="action-buttons">

<a href="checkout.jsp" class="btn checkout">
    Proceed To Checkout 💳
</a>

<a href="restaurants.jsp" class="btn back">
    Continue Shopping 🍔
</a>

</div>

<%
}
%>

</div>

</body>
</html>