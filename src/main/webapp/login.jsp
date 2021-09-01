<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card header text-center ">
					
					
					<i
			class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
			<h4>Login</h4>
								</div>
								
								<c:if test="${not empty succmsg }">
								<h4 class="text-center text-danger">${succmsg }</h4>
								<c:remove var="succmsg"/>
								
								</c:if>
			
			
					
		<div class="card-body mt-4">
							<form action="login" method="post">
							
							
								<div class="form-group">
															<label >Enter Email</label> 
								
									<input
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="lgemail">
									
								</div>
								<div class="form-group">
									<label >Password</label> <input
										type="password" class="form-control"
										id="exampleInputPassword1" name="lgpass">
								</div>
								
								<button type="submit" class="btn btn-primary badge-pill btn-block mb-2">Login</button>
							</form>
					
				</div>
			</div>
		</div>
	</div>
	


</body>
</html>