<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="all_component/allcss.jsp" %>
<style type="text/css">

.back-img{

background: url("img/Los Angeles.jpg");
width: 100%;
height: 100vh;
background-size: cover;


}</style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid back-img">

<div class="text-center">
<h1 class="text-white p-4"><i class="fas fa-globe-asia"></i>ONLINE JOB PORTAL</h1></div></div>

<%@include file="all_component/footer.jsp" %>

</body>
</html>