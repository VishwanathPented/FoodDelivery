<!DOCTYPE html>
<html>
<head>
<title>Order Confirmation</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>

<h2>🎉 Order Placed Successfully!</h2>

<%
    String orderId = request.getParameter("orderId");
%>

<h3>Your Order ID: <%= orderId %></h3>

<a href="home">Back to Home</a>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
