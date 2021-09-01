<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_component/allcss.jsp"%>

</head>
<body style="background-color: #f0f1f2;">


<c:if test="${userD.role ne 'admin' }">

<c:redirect url="login.jsp"></c:redirect>

</c:if>

<%@ include file="all_component/navbar.jsp"%>


<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class="card"><div class="card-body">
<div class="text-center text-success"><i class="fas fa-user-friends fa-3x"></i>

<c:if test="${not empty succmsg}">
<div class="alert alert-success" role="alert">
${succmsg }</div>
<c:remove var="succmsg"/>

</c:if> 

<h5>Add Jobs</h5>
</div>

<form action ="addjob" method ="post">

<div class="form-group">

<label>Enter Title</label>
<input type="text" name="title" required class="form-control">
</div>

<div class="form-row">

<div class="form-group col-md-4">

<label>Location</label><select name="location" class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose..</option>
<option value="Odisha">Odisha</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Gujurat">Gujurat</option>
<option value="Delhi">Delhi</option>
<option value="Mumbai">Mumbai</option>
<option value="London">London</option>
<option value="Paris">Paris</option>
<option value="Newyork">Newyork</option>


</select>

</div>

<div class="form-group col-md-4">

<label>Category</label><select name="category" class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose..</option>
<option value="IT">IT</option>
<option value="CSE">CSE</option>
<option value="Banking">Banking</option>
<option value="Engineer">Engineer</option>
<option value="Teacher">Teacher</option>
<option value="Developer">Developer</option>



</select>

</div>


<div class="form-group col-md-4">

<label>Status</label><select name="Status" class="form-control">
<option class="Active" value="Active">Active</option>
<option class="Inactive" value="Inactive">Inactive</option>
</select>

</div>

</div>


<div class="form-group">

<label>Enter Description</label>
<textarea required rows="5" cols="" name="desc" required class="form-control"></textarea>
</div>

<button class="btn btn-success">Publish</button>






</form>
</div></div>
</div>



</div>


</body>
</html>