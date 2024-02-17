<%--
  Created by IntelliJ IDEA.
  User: bagl0
  Date: 18.02.2024
  Time: 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Items" %>
<%@ page import="java.util.ArrayList" %>
<html data-bs-theme="dark">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <title>Items</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
        <h1 class="display-4 fw-normal text-body-emphasis">Welcome to BITLAB SHOP</h1>
        <p class="fs-5 text-body-secondary">Dota 2 items</p>
    </div>
    <main>
        <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
            <% for (Items item : (ArrayList<Items>) request.getAttribute("items")) { %>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                        <h4 class="my-0 fw-normal">
                            <%= item.getName() %>
                        </h4>
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title"><%= item.getPrice() %> <small class="text-body-secondary fw-light">₸</small></h1>
                        <div class="mt-3 mb-4">
                            <%= item.getDescription() %>
                        </div>
                        <button type="button" class="w-100 btn btn-lg btn-primary">Buy now</button>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </main>
</div>
</body>
</html>
