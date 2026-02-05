<%@ page import="java.util.List" %>
<%@ page import="com.food.model.Restaurant" %>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>
<body>

<h2>Available Restaurants 🍔</h2>

<%
    List<Restaurant> list = (List<Restaurant>) request.getAttribute("restaurantList");

    if(list != null){
        for(Restaurant r : list){
%>

<div style="border:1px solid black; padding:10px; margin:10px;">
    <h3><%= r.getName() %></h3>
    <p>Cuisine: <%= r.getCuisine() %></p>
    <p>Rating: <%= r.getRating() %></p>

    <a href="menu?restaurantId=<%= r.getId() %>">View Menu</a>
</div>

<%
        }
    }
%>

</body>
</html>
