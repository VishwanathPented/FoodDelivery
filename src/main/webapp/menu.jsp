<%@ page import="java.util.List" %>
<%@ page import="com.food.model.Menu" %>

<!DOCTYPE html>
<html>
<head>
<title>Menu</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">
<jsp:include page="navbar.jsp"/>

<div class="container mt-4">

<h2 class="text-center mb-4">🍕 Menu Items</h2>

<div class="row">

<%
List<Menu> list = (List<Menu>) request.getAttribute("menuList");
Integer restaurantId = (Integer) request.getAttribute("restaurantId");

if(list != null){
    for(Menu m : list){
%>

<div class="col-md-4 mb-4">
    <div class="card shadow-sm h-100">

        <img src="<%= m.getImagePath() %>" class="card-img-top" style="height:200px; object-fit:cover;">

        <div class="card-body">

            <h5 class="card-title"><%= m.getName() %></h5>
            <p class="card-text"><%= m.getDescription() %></p>
            <h6 class="text-success">₹<%= m.getPrice() %></h6>

            <form action="cart" method="post">
                <input type="hidden" name="menuId" value="<%= m.getId() %>">
                <input type="hidden" name="restaurantId" value="<%= restaurantId %>">

                <input type="number" name="quantity" value="1" min="1"
                       class="form-control mb-2">

                <button class="btn btn-warning w-100">
                    Add To Cart
                </button>
            </form>

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
