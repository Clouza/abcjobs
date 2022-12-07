<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../header.jsp">
    <jsp:param value="Login" name="HTMLtitle" />
</jsp:include>
<div class="container">
    <h1>Login</h1>
    <p>Don't have an account yet? <a href="registration">Register Now</a></p>
   	<div class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? "d-none" : "d-block" }" role="alert">
  		${ message }
  		<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
	<div class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? "d-none" : "d-block" }" role="alert">
  		${ scMessage }
  		<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
	
    <form:form action="login" method="post">
        <div class="mb-3">
            <label for="emailAddress" class="form-label">Email address</label>
            <input type="email" class="form-control" id="emailAddress" name="email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <a href="forgot-password" class="d-block mb-3">Forgot password?</a>
        <button type="submit" class="btn btn-primary">Log in</button>
    </form:form>
</div>
<jsp:include page="../footer.jsp"></jsp:include>