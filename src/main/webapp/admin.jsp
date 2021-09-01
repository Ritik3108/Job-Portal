<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@ include file="all_component/allcss.jsp"%>

<style type="text/css">

.back-img{

background: url("img/admin.jpg");
width: 100%;
height: 90vh;
background-size: cover;
}</style>

</head>
<body>

<c:if test="${userD.role ne 'admin' }">

<c:redirect url="login.jsp"></c:redirect>

</c:if>

<%@ include file="all_component/navbar.jsp"%>

<div class="container-fluid back-img">
<div class="text-center">
<h1 class="text-white p-4">WELCOME ADMIN</h2>
</div>


</div>


</body>
</html>