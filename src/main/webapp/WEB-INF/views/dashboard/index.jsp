<jsp:include page="../../header.jsp">
    <jsp:param value="Dashboard" name="HTMLtitle" />
</jsp:include>
<div class="container">
   <div class="row">
     <div class="col-3">
       <div class="d-flex flex-column border rounded-3 pb-4">
         <a href="profile" class="text-decoration-none">
           <div class="border p-0 rounded-top border-5" style="overflow: hidden;">
             <div class="fs-1 d-flex align-items-center justify-content-center bg-primary text-white" style="height: 25vh;">
              <span>${f}</span>
              <span>${l}</span>
            </div>
          </div>
        </a>
        <div class="px-4 py-3">
          <h2>${fullName}</h2>
          <p>${title}</p>
        </div>
        <button class="btn btn-outline-success mx-4">Create a post</button>
      </div>
    </div>

    <!-- post -->
    <div class="col-6">
    	<div class="d-flex gap-3 p-3 mb-3 border rounded-3 shadow-sm">
    		<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="" id="posts" checked>
			  <label class="form-check-label" for="posts">
			    My post
			  </label>
			</div>
        	<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="" id="posts" checked>
			  <label class="form-check-label" for="posts">
			    Show all
			  </label>
			</div>
        	<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="" id="jobs">
			  <label class="form-check-label" for="jobs">
			    Show Jobs
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="" id="jobs">
			  <label class="form-check-label" for="jobs">
			    Saved post
			  </label>
			</div>
        </div>
      <div class="border rounded-3 mb-3 px-3" id="post1">
        <div class="d-flex align-items-center gap-2 py-3">
          <span class="px-3 py-2 rounded-circle border">J</span>
          <a href="" class="text-decoration-none fs-5">Joe</a>
          <small class="ms-auto">15 hours ago</small>
        </div>

        <!-- content -->
        <div class="">
          <p class="fw-bold fs-4">What is the best games?</p>
        </div>

        <div class="d-flex align-items-center gap-2 py-3">
          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
          	<i class='bx bx-message-square-dots'></i> Comments
          </a>
          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
          	<i class='bx bx-share-alt'></i> Share
       	  </a>
          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary ms-auto">
          	<i class='bx bx-save'></i> Save
          </a>
        </div>
      </div>

    </div>

    <!-- notification & create post -->
    <div class="col-3">
      <div class="py-3 px-4 rounded-3 border">

        <div class="border-bottom mb-3">
          <h4 class="fs-4">${nf1.getEmailSubject()}</h4>
          <p>Check your email</p>
        </div>

        <div class="border-bottom mb-3">
          <h4 class="fs-4">${nf2.getEmailSubject()}</h4>
          <p>Check your email</p>
        </div>
        
        <div class="border-bottom mb-3">
          <h4 class="fs-4">${nf3.getEmailSubject()}</h4>
          <p>Check your email</p>
        </div>

        <div class="text-center">
          <a href="" class="btn btn-primary">See all notifications</a>
        </div>
      </div>
    </div>
  </div>
</div>


<!-- pop up notifications 
<div class="position-fixed d-flex flex-column align-items-end gap-4 bottom-0 right-0 py-3 px-4" style="width: 100vw;">
  <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="..." class="rounded me-2" alt="...">
      <strong class="me-auto">Bootstrap</strong>
      <small class="text-muted">just now</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      See? Just like this.
    </div>
  </div>

  <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="..." class="rounded me-2" alt="...">
      <strong class="me-auto">Bootstrap</strong>
      <small class="text-muted">2 seconds ago</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      Heads up, toasts will stack automatically
    </div>
  </div>

  <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="..." class="rounded me-2" alt="...">
      <strong class="me-auto">Bootstrap</strong>
      <small class="text-muted">2 seconds ago</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      Heads up, toasts will stack automatically
    </div>
  </div>
</div>
-->
<jsp:include page="../../footer.jsp"></jsp:include>