<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="../../header.jsp">
        <jsp:param value="Update Profile" name="HTMLtitle" />
    </jsp:include>
    
	<div id="notification"></div>
    <div class="container">
        <form:form modelAttribute="profile" action="update-profile" method="post">
            <div class="row border rounded-3 p-3 mb-4">
                <div
                    class="col-2 border-none rounded-circle align-self-stretch text-center fs-1 d-flex align-items-center justify-content-center bg-primary bg-gradient text-white">
                    <span>${f}</span>
                    <span>${l}</span>
                </div>
                <div class="col-8">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="firstName" name="firstName" value="${firstName}"
                            required>
                        <label for="firstName">First Name</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="lastName" name="lastName" value="${lastName}"
                            required>
                        <label for="lastName">Last Name</label>
                    </div>

                    <input type="text" class="form-control" value="${title}" name="title" placeholder="Your title">
                </div>
                <div class="col-2 align-self-center">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                </div>
            </div>

            <div class="row">
                <div class="col-9">
                    <div class="mb-3">
                        <h3>About Me</h3>
                        <hr>
                        <textarea class="form-control" name="about" id="about" cols="10">${about}</textarea>
                    </div>
                    <div class="mb-3">
                        <div class="d-flex">
                            <h3>Experience</h3>
                            <button type="button" class="btn btn-primary ms-auto" data-bs-toggle="modal"
                                data-bs-target="#experiences">
                                Add Experience
                            </button>

                            <div class="modal fade" id="experiences" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="experiencesLabel">Add Experience</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="position" name="position">
                                                <label for="position">Position</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="startDateEX" name="startDateEX">
                                                <label for="startDateEX">Start Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="endDateEX" name="endDateEX">
                                                <label for="endDateEX">End Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="companyName" name="companyNameEX">
                                                <label for="companyName">Company Name</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="exBtn">Add</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div id="experiencesMD"></div>
                        <c:forEach var="e" items="${ex}">
                            <div class="c-ibc d-flex align-items-center border position-relative border mb-3 rounded-3 px-2" id="exc${e.getExperienceId()}">
                                <i class='bx bx-map-pin fs-2'></i>
                                <div class="p-3">
                                    <h4>${e.getPosition()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                                    <small>${e.getCompanyName()}</small>
                                </div>
                                <div class="interactive-bc">
								  	<button type="button" class="button-card-hover text-primary" data-bs-toggle="modal" data-bs-target="#exe${e.getExperienceId()}"><i class='bx bx-pencil'></i></button>
								  	<button type="button" class="button-card-hover text-danger" data-bs-toggle="modal" data-bs-target="#exd${e.getExperienceId()}"><i class='bx bx-trash'></i></button>
								</div>
                            </div>
                            
                            <!-- Edit -->
							<div class="modal fade" id="exe${e.getExperienceId()}" tabindex="-1">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">${e.getPosition()}</h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        <div class="form-floating mb-3">
                                          <input type="text" class="form-control" id="position${e.getExperienceId()}" value="${e.getPosition()}">
                                          <label for="position">Position</label>
                                      </div>
                                      <div class="form-floating mb-3">
                                          <input type="date" class="form-control" id="startDateEX${e.getExperienceId()}" value="${e.getStartDate()}">
                                          <label for="startDateEX">Start Date</label>
                                      </div>
                                      <div class="form-floating mb-3">
                                          <input type="date" class="form-control" id="endDateEX${e.getExperienceId()}" value="${e.getEndDate()}">
                                          <label for="endDateEX">End Date</label>
                                      </div>
                                      <div class="form-floating mb-3">
                                          <input type="text" class="form-control" id="companyName${e.getExperienceId()}" value="${e.getCompanyName()}">
                                          <label for="companyName">Company Name</label>
                                      </div>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="xhrexe(${e.getExperienceId()})">Save changes</button>
							      </div>
							    </div>
							  </div>
							</div>
                            
                            <!-- Delete -->
							<div class="modal fade" id="exd${e.getExperienceId()}">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">Warning !</h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
							      </div>
							      <div class="modal-body">
							        Are you sure you want to delete this experience?
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="xhrexd(${e.getExperienceId()})">Delete</button>
							      </div>
							    </div>
							  </div>
							</div>
                            
                        </c:forEach>
                    </div>
                    <div>
                        <div class="d-flex">
                            <h3>Education</h3>
                            <button type="button" class="btn btn-primary ms-auto" data-bs-toggle="modal"
                                data-bs-target="#educations">
                                Add Education
                            </button>
                            <div class="modal fade" id="educations" tabindex="-1" aria-labelledby="educationsLabel"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="educationsLabel">Add Education</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="intitutionName" name="intitutionName">
                                                <label for="intitutionName">Intitution Name</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="startDateED" name="startDateED">
                                                <label for="startDateED">Start Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="date" class="form-control" id="endDateED" name="endDateED">
                                                <label for="endDateED">End Date</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" id="educationName" name="educationName">
                                                <label for="educationName">Education Name</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="edBtn">Add</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div id="educationsMD"></div>
                        <c:forEach var="e" items="${ed}">
                            <div class="c-ibc d-flex align-items-center border position-relative border mb-3 rounded-3 px-2" id="edc${e.getEducationId()}">
                                 <i class='bx bx-book fs-2'></i>
                                <div class="p-3">
                                    <h4>${e.getEducationName()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                                    <small>${e.getIntitutionName()}</small>
                                </div>
                                <div class="interactive-bc">
								  	<button type="button" class="button-card-hover text-primary" data-bs-toggle="modal" data-bs-target="#ede${e.getEducationId()}"><i class='bx bx-pencil'></i></button>
								  	<button type="button" class="button-card-hover text-danger" data-bs-toggle="modal" data-bs-target="#edd${e.getEducationId()}"><i class='bx bx-trash'></i></button>
								</div>
                            </div>
                            
							<!-- Edit -->
							<div class="modal fade" id="ede${e.getEducationId()}" tabindex="-1">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">${e.getEducationName()}</h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        <div class="modal-body">
                                         <div class="form-floating mb-3">
                                             <input type="text" class="form-control" id="intitutionName${e.getEducationId()}" value="${e.getIntitutionName()}">
                                             <label for="intitutionName">Intitution Name</label>
                                         </div>
                                         <div class="form-floating mb-3">
                                             <input type="date" class="form-control" id="startDate${e.getEducationId()}" value="${e.getStartDate()}">
                                             <label for="startDateED">Start Date</label>
                                         </div>
                                         <div class="form-floating mb-3">
                                             <input type="date" class="form-control" id="endDate${e.getEducationId()}" value="${e.getEndDate()}">
                                             <label for="endDateED">End Date</label>
                                         </div>
                                         <div class="form-floating mb-3">
                                             <input type="text" class="form-control" id="educationName${e.getEducationId()}" value="${e.getEducationName()}">
                                             <label for="educationName">Education Name</label>
                                         </div>
                                     </div>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="xhrede(${e.getEducationId()})">Save changes</button>
							      </div>
							    </div>
							  </div>
							</div>
                            
                            <!-- Delete -->
							<div class="modal fade" id="edd${e.getEducationId()}">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">Warning !</h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
							      </div>
							      <div class="modal-body">
							        Are you sure you want to delete this education?
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="xhredd(${e.getEducationId()})">Delete</button>
							      </div>
							    </div>
							  </div>
							</div>
                            
                        </c:forEach>
                    </div>
                </div>
                <div class="col-3">
                    <div>
                        <div class="d-flex align-items-center mb-3">
                            <i class='bx bx-building fs-2'></i>
                            <div class="form-floating ml-3">
                                <input type="text" class="form-control" id="company" name="companyName" value="${company}">
                                <label for="company">Company</label>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <i class='bx bx-envelope fs-2'></i>
                            <div class="form-floating ml-3">
                                <input type="text" class="form-control" id="email" name="email" value="${email}"
                                    disabled>
                                <label for="email">Email</label>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <i class='bx bx-globe fs-2'></i>
                            <div class="form-floating ml-3">
                                <input type="text" class="form-control" id="website" name="website" value="${website}">
                                <label for="website">Website</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
    </div>
    
<script src="js/profile.js">
</script>

<jsp:include page="../../footer.jsp"></jsp:include>