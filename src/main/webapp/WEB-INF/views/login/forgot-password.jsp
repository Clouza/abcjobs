<jsp:include page="../../header.jsp">
    <jsp:param value="Forgot Password" name="HTMLtitle" />
</jsp:include>
<div class="container">
    <h2>Reset your password</h2>
    <p>Enter your email and we'll send you a link to reset your password</p>
    <div class="alert alert-danger ${message == null ? "d-none" : "d-block"}" role="alert">
  		${message}
	</div>
    <form action="forgot-password" method="post">
        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="emailAddress" required>
            <label for="floatingInput">Email address</label>
			<div class="invalid-feedback">
	      		Email address should be have @ and .
    		</div>
        </div>
        <button type="submit" class="btn btn-primary">Reset your password</button>
    </form>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>