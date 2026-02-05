<%@ page import="java.util.Map" %>
<%@ page import="com.food.model.CartItem" %>

<!DOCTYPE html>
<html>
<head>
<title>Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">
<jsp:include page="navbar.jsp"/>

<div class="container mt-4">

<h2 class="text-center mb-4">🛒 Your Cart</h2>

<table class="table table-bordered bg-white">

<tr>
<th>Item</th>
<th>Price</th>
<th>Qty</th>
<th>Subtotal</th>
</tr>

<%
Map<Integer, CartItem> cart =
(Map<Integer, CartItem>) session.getAttribute("cart");

double total = 0;

if(cart != null){
for(CartItem item : cart.values()){
total += item.getSubTotal();
%>

<tr>
<td><%= item.getName() %></td>
<td>₹<%= item.getPrice() %></td>
<td><%= item.getQuantity() %></td>
<td>₹<%= item.getSubTotal() %></td>
</tr>

<%
}
}
%>

</table>

<h4 class="text-end">Total: ₹<%= total %></h4>

<form action="order" method="post" class="text-end">

<select name="paymentMode" class="form-select w-25 d-inline">
<option value="COD">Cash on Delivery</option>
<option value="ONLINE">Online</option>
</select>

<button class="btn btn-success">Checkout</button>

</form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
