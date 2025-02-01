<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
    
<%
	String firstName = (String) session.getAttribute("firstName");
	String lastName = (String) session.getAttribute("lastName");
%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/assets/cogwheel.png" type="image/png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/styles.css">
</head>
<body>
    <nav class="navbar">
        <div class="container navbar-content">
            <div class="nav-links">
                <a href="index.html" class="nav-link active">Dashboard</a>
                <a href="items.html" class="nav-link">Items</a>
            </div>
            <div class="user-profile">
                <span class="admin-name"><%= firstName %> <%= lastName %></span>
                <button class="btn btn-danger" onclick="window.location.href='?action=logout';">Logout</button>
            </div>
        </div>
    </nav>