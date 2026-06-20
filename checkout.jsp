<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>CraveKart Checkout</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:linear-gradient(135deg,#ff512f,#dd2476);
min-height:100vh;
padding:40px;
}

/* Container */

.container{
width:75%;
margin:auto;
background:white;
padding:40px;
border-radius:25px;
box-shadow:0 8px 25px rgba(0,0,0,0.2);
animation:fadeIn 1s ease;
}

@keyframes fadeIn{

from{
opacity:0;
transform:translateY(30px);
}

to{
opacity:1;
transform:translateY(0);
}

}

h1{
text-align:center;
font-size:45px;
color:#dd2476;
margin-bottom:35px;
}

/* Cart Items */

.item{
display:flex;
justify-content:space-between;
padding:18px;
font-size:22px;
border-bottom:1px solid #ddd;
}

.bill-section{
margin-top:25px;
padding:20px;
background:#f9f9f9;
border-radius:15px;
}

.bill-row{
display:flex;
justify-content:space-between;
font-size:22px;
margin-bottom:15px;
}

.grand-total{
display:flex;
justify-content:space-between;
font-size:32px;
font-weight:bold;
color:#dd2476;
margin-top:20px;
border-top:2px solid #ddd;
padding-top:20px;
}

/* Form */

.form-section{
margin-top:40px;
}

.form-section h2{
margin-bottom:20px;
color:#333;
}

.input-box{
margin-bottom:20px;
}

.input-box input,
.input-box select{
width:100%;
padding:15px;
border:1px solid #ccc;
border-radius:12px;
font-size:16px;
outline:none;
transition:0.3s;
}

.input-box input:focus,
.input-box select:focus{
border-color:#dd2476;
transform:scale(1.01);
}

/* Button */

button{
width:100%;
padding:16px;
border:none;
border-radius:12px;
background:#dd2476;
color:white;
font-size:20px;
font-weight:600;
cursor:pointer;
transition:0.3s;
}

button:hover{
background:black;
transform:scale(1.02);
}

/* Success */

.success{
margin-top:30px;
text-align:center;
font-size:28px;
font-weight:bold;
color:green;
}

/* Empty */

.empty{
text-align:center;
font-size:28px;
color:red;
padding:30px;
}

</style>

</head>

<body>

<div class="container">

<h1>CraveKart Checkout 🍔</h1>

<%

HashMap<String,Integer> cart =
(HashMap<String,Integer>)session.getAttribute("cart");

int total = 0;

if(cart!=null && cart.size()>0){

for(String item : cart.keySet()){

int qty = cart.get(item);

int price = 299;

int subtotal = qty * price;

total += subtotal;

%>

<div class="item">

<div>

<%= item %> x <%= qty %>

</div>

<div>

₹<%= subtotal %>

</div>

</div>

<%

}

}
else{

%>

<div class="empty">

Cart is Empty

</div>

<%

}

%>

<%

double gst = total * 0.05; // 5% GST
int deliveryCharge = 50;

double grandTotal = total + gst + deliveryCharge;

%>

<div class="bill-section">

<div class="bill-row">

<div>Item Total</div>

<div>₹<%= total %></div>

</div>

<div class="bill-row">

<div>Delivery Charges</div>

<div>₹<%= deliveryCharge %></div>

</div>

<div class="bill-row">

<div>GST (5%)</div>

<div>₹<%= String.format("%.2f", gst) %></div>

</div>

<div class="grand-total">

<div>Grand Total</div>

<div>₹<%= String.format("%.2f", grandTotal) %></div>

</div>

</div>

<%

if(cart!=null && cart.size()>0){

%>

<div class="form-section">

<h2>Delivery & Payment Details</h2>

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

<input type="text"
name="phone"
placeholder="Enter Phone Number"
required>

</div>

<div class="input-box">

<input type="text"
name="address"
placeholder="Enter Delivery Address"
required>

</div>

<div class="input-box">

<select name="payment" required>

<option value="">Select Payment Method</option>

<option>UPI</option>

<option>Cash On Delivery</option>

<option>Credit Card</option>

<option>Debit Card</option>

</select>

</div>

<button type="submit" name="pay">

Confirm Payment

</button>

</form>

</div>

<%

}

String pay = request.getParameter("pay");

if(pay!=null){

session.removeAttribute("cart");

%>

<div class="success">

Payment Successful 🎉<br><br>

Your order has been placed successfully.

</div>

<%

}

%>

</div>

</body>
</html>