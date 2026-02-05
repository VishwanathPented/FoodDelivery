<%@ page import="java.util.List" %>
<%@ page import="com.food.model.Restaurant" %>

<!DOCTYPE html>
<html>
<head>
<title>Restaurants</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">
<jsp:include page="navbar.jsp"/>


<div class="container mt-4">

<h2 class="text-center mb-4">🍔 Restaurants Near You</h2>

<div class="row">

<%
List<Restaurant> list = (List<Restaurant>) request.getAttribute("restaurantList");

if(list != null){
    for(Restaurant r : list){
%>

<div class="col-md-4 mb-4">
    <div class="card shadow-sm h-100">

        <img src="<%= r.getImagePath() %>" class="card-img-top" style="height:200px; object-fit:cover;">

        <div class="card-body">
            <h5 class="card-title"><%= r.getName() %></h5>
            <p class="card-text">Cuisine: <%= r.getCuisine() %></p>
            <p class="card-text">⭐ <%= r.getRating() %></p>

            <a href="menu?restaurantId=<%= r.getId() %>" class="btn btn-danger w-100">
                View Menu
            </a>
        </div>

    </div>
</div>

<%
    }
}
%>

</div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
