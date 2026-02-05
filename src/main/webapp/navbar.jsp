<%@ page import="com.food.model.User" %>

<%
User loggedUser = (User) session.getAttribute("loggedInUser");
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<div class="container-fluid">

<a class="navbar-brand" href="home">🍔 FoodDelivery</a>

<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
        data-bs-target="#navbarNav">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbarNav">

<ul class="navbar-nav ms-auto">

<% if(loggedUser != null){ %>

<li class="nav-item">
<span class="nav-link">Hi, <%= loggedUser.getName() %> 👋</span>
</li>

<li class="nav-item">
<a class="nav-link" href="cart.jsp">🛒 Cart</a>
</li>

<li class="nav-item">
<a class="nav-link" href="logout">Logout</a>
</li>

<% } else { %>

<li class="nav-item">
<a class="nav-link" href="login.jsp">Login</a>
</li>

<li class="nav-item">
<a class="nav-link" href="register.jsp">Register</a>
</li>

<% } %>

</ul>

</div>
</div>
</nav>
