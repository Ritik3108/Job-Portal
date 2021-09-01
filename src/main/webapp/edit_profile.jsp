<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body text-center ">


						<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
						<h4>Edit Profile</h4>
					</div>

					<c:if test="${not empty admsg }">
						<div class="text-center text-success" role="alert">${admsg }</div>
						<c:remove var="admsg" />

					</c:if>


					<div class="card-body mt-1">
						<form action="update_profile" method="post">
						
						<input type="hidden" name="id" value="${userD.id }">


							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uname" value="${userD.name }">

							</div>
							<div class="form-group">
								<label>Enter Qualification</label> <input type="text"
									class="form-control" id="exampleInputPassword1" name="uqual" value="${userD.qualification }">
							</div>

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputPassword1" name="uemail" value="${userD.email }">
							</div>

							<div class="form-group">
								<label>Enter Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1" name="upass" value="${userD.password }">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block mb-2">Update</button>
								
								
						</form>

					</div>
				</div>
			</div>
		</div>
</body>
</html>