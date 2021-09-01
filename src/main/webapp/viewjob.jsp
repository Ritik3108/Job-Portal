<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Jobs</title>
<%@ include file="all_component/allcss.jsp"%>

</head>
<body style="background-color: #f0f1f2;">

<c:if test="${userD.role ne 'admin' }">

<c:redirect url="login.jsp"></c:redirect>

</c:if>
	<%@ include file="all_component/navbar.jsp"%>


	<div class="container p-2">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">ALL JOBS</h5>

				<c:if test="${not empty upmsg}">
					<div class="alert alert-success" role="alert">${upmsg }</div>
					<c:remove var="upmsg" />

				</c:if>
				
				<c:if test="${not empty delmsg}">
					<div class="alert alert-success" role="alert">${delmsg }</div>
					<c:remove var="delmsg" />

				</c:if>
				

				<%
				JobDAO dao = new JobDAO(DBConnect.getConn());
				List<Jobs> list = dao.getAllJob();
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>



						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						<br>

						<div class="form-row">

							<div class="form-group col-md-3">

								<input type="text" class="form-control form-control-sm"
									value="Location:<%=j.getLocation()%>" readonly>

							</div>

							<div class="form-group col-md-3">

								<input type="text" class="form-control form-control-sm"
									value="Category:<%=j.getCategory()%>" readonly>

							</div>

							<div class="form-group col-md-3">

								<input type="text" class="form-control form-control-sm"
									value="Status:<%=j.getStatus()%>" readonly>

							</div>

						</div>
						<h6>
							Publish Date:<%=j.getPdate()%></h6>

						<div class="text-center">

							<a href="EditJob.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white">Edit</a>
								
								 <a href="DeleteServlet?id=<%=j.getId()%>"
								class="btn btn-sm bg-danger text-white">Delete</a>


						</div>




					</div>
				</div>

				<%
				}
				%>


			</div>
		</div>



	</div>
</body>
</html>