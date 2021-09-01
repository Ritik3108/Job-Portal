<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#">Job Portal</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">

			<li class="nav-item active"><a class="nav-link" href="#"><i class="fas fa-home"></i>Home
					<span class="sr-only">(current)</span>
			</a></li>
			
			<c:if test="${userD.role eq 'admin'}">
			<li class="nav-item"><a class="nav-link" href="postjob.jsp"><i class="fas fa-address-card"></i>Post Job</a></li>

			<li class="nav-item "><a class="nav-link" href="viewjob.jsp"><i class="fas fa-eye"></i>View Jobs</a></li>
			</c:if>

			


		</ul>
		<form class="form-inline my-2 my-lg-0">
		
		<c:if test="${userD.role eq 'admin'}">
		<a href="#" class="btn btn-light mr-2"><i class="fas fa-user"></i>Admin</a>
								<a href="logout" class="btn btn-light"><i class="fas fa-user-plus"></i>Logout</a>
		
				</c:if>
				
					<c:if test="${userD.role eq 'user'}">
		<a href="#" class="btn btn-light mr-2" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-user"></i>${userD.name }</a>
								<a href="logout" class="btn btn-light"><i class="fas fa-user-plus"></i>Logout</a>
		
				</c:if>
		
		
		
				<c:if test="${empty userD}">
		
			<a href="login.jsp" class="btn btn-light mr-2"><i class="fas fa-user-plus"></i> Login</a>
						<a href="register.jsp" class="btn btn-light"><i class="fas fa-user"></i>  SignUp</a>
					</c:if>
			
		</form>
	</div>
</nav>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Account Info:</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <div class="card">
      <div class="card-body">
        
        <div class="text-primary text-center">
        
        <i class="fas fa-user-circle fa-3x"></i></div>
        
        <table class="table">
        
        <tbody>
        <tr>
        <th scope="row">Name</th>
        <th>${userD.name }</th>
               
        </tr>
        
         <tr>
        <th scope="row">Qualification</th>
        <th>${userD.qualification }</th>
               
        </tr>
        
        <tr>
        
        <th>Email ID</th>
        <td>${userD.email }</td>
        
        </tr>
        
        
        
        
        
        </tbody>
        
        
        </table></div></div></div>
        
        
        <div class="modal-footer">
        
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                <a href ="edit_profile.jsp" class="btn btn-danger" >Edit</a>
        
        
        </div>
        
        
      </div>
     
    </div>
  </div>
