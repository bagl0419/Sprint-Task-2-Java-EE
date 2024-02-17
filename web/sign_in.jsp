<%--
  Created by IntelliJ IDEA.
  User: bagl0
  Date: 18.02.2024
  Time: 1:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html data-bs-theme="dark">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <title>Sign in</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <%
        String message = (String) session.getAttribute("message");
        if (message != null) {
        if (message.equals("emailError")) {
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Email error!</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
        } else if (message.equals("passwordError")) {
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Password error!</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
        }}
    %>
    <form action="/auth" method="post">
        <div class="mb-3">
            <label for="emailField" class="form-label">Email</label>
            <input type="email" class="form-control" id="emailField" name="user_email">
        </div>
        <div class="mb-3">
            <label for="passwordField" class="form-label">Password</label>
            <input type="password" class="form-control" id="passwordField" name="user_password">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
