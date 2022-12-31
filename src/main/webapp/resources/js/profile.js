const experiences = document.querySelector("#experiencesMD");
const exBtn = document.querySelector("#exBtn");

exBtn.addEventListener("click", () => {
	const position = document.querySelector("#position").value;
	const startDate = document.querySelector("#startDateEX").value;
	const endDate = document.querySelector("#endDateEX").value;
	const companyName = document.querySelector("#companyName").value;
	
	experiences.innerHTML = 
	`<div class="c-ibc d-flex align-items-center border-2 border-warning position-relative border mb-3 rounded-3 px-2">
        <i class='bx bx-map-pin fs-2'></i>
        <div class="p-3">
            <h4>${position} (${startDate.split("-")[0]} - ${endDate.split("-")[0]})</h4>
	        <small>${companyName}</small>
        </div>
        <div class="interactive-bc">
		  	<button type="button" class="button-card-hover text-danger" onclick="location.reload()"><i class='bx bx-trash'></i></button>
		</div>
    </div>`;
});

const educations = document.querySelector("#educationsMD");
const edBtn = document.querySelector("#edBtn");


edBtn.addEventListener("click", () => {
	const intitutionName = document.querySelector("#intitutionName").value;
	const startDate = document.querySelector("#startDateED").value;
	const endDate = document.querySelector("#endDateED").value;
	const educationName = document.querySelector("#educationName").value;
	
	educations.innerHTML = 
	`<div class="c-ibc d-flex align-items-center border-2 border-warning position-relative border mb-3 rounded-3 px-2">
        <i class='bx bx-book fs-2'></i>
        <div class="p-3">
            <h4>${intitutionName} (${startDate.split("-")[0]} - ${endDate.split("-")[0]})</h4>
	        <small>${educationName}</small>
        </div>
        <div class="interactive-bc">
		  	<button type="button" class="button-card-hover text-danger" onclick="location.reload()"><i class='bx bx-trash'></i></button>
		</div>
    </div>`
});

// XHR

function xhrexe(exId) {
	const position = document.querySelector(`#position${exId}`).value;
	const startDate = document.querySelector(`#startDateEX${exId}`).value;
	const endDate = document.querySelector(`#endDateEX${exId}`).value;
	const companyName = document.querySelector(`#companyName${exId}`).value;
	
	const xhr = new XMLHttpRequest();
	const params = `id=${exId}&p=${position}&sde=${startDate}&ede=${endDate}&c=${companyName}`;
	const origin = window.location.origin;
	
	xhr.open("POST", `${origin}/abcjobs/update-ex`, true);
	
	// data will be sent at once
	xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	
	xhr.onreadystatechange = () => {
		if(xhr.readyState == 4 && xhr.status == 200) {
			const exc = document.querySelector(`#exc${exId}`);
			exc.classList.add("border-success");
			
			exc.innerHTML = 
			`
			<i class='bx bx-map-pin fs-2'></i>
			<div class="p-3">
			    <h4>${position} (${startDate.split("-")[0]} - ${endDate.split("-")[0]})</h4>
			    <small>${companyName}</small>
			</div>
			<div class="interactive-bc">
			  	<button type="button" class="button-card-hover text-primary" data-bs-toggle="modal" data-bs-target="#exe${exId}"><i class='bx bx-pencil'></i></button>
			  	<button type="button" class="button-card-hover text-danger" data-bs-toggle="modal" data-bs-target="#exd${exId}"><i class='bx bx-trash'></i></button>
			</div>
			`;
			
			notification = `
			<div class="toast show position-fixed bottom-0 end-0 m-4" style="z-index: 2001;">
			  <div class="toast-header text-bg-primary">
			    <strong class="me-auto">Saved</strong>
			    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast"></button>
			  </div>
			  <div class="toast-body bg-outline-primary">
			    Your experience has been saved
			  </div>
			</div>
			
			<audio autoplay>
			  <source src="audio/notification.mp3" type="audio/mpeg">
			</audio> 
			`;
			
			document.querySelector("#notification").innerHTML = notification;
		}
	}
	
	xhr.send(params);
	
}

function xhrexd(exId) {
	const xhr = new XMLHttpRequest();
	const params = `id=${exId}&type=ex`;
	const origin = window.location.origin;
	
	xhr.open("POST", `${origin}/abcjobs/delete`);
	
	xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	
	xhr.onreadystatechange = () => {
		if(xhr.readyState == 4 && xhr.status == 200) {
			const exc = document.querySelector(`#exc${exId}`);
			exc.innerHTML = "";
			
			notification = `
			<div class="toast show position-fixed bottom-0 end-0 m-4" style="z-index: 2001;">
			  <div class="toast-header text-bg-danger">
			    <strong class="me-auto">Deleted</strong>
			    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast"></button>
			  </div>
			  <div class="toast-body bg-outline-primary">
			    Your experience has been deleted
			  </div>
			</div>
			
			<audio autoplay>
			  <source src="audio/notification.mp3" type="audio/mpeg">
			</audio> 
			`;
			
			document.querySelector("#notification").innerHTML = notification;
		}
	}
	
	xhr.send(params);
}

// education XHR

function xhrede(id) {
	const intitutionName = document.querySelector(`#intitutionName${id}`).value;
	const startDate = document.querySelector(`#startDateEX${id}`).value;
	const endDate = document.querySelector(`#endDateEX${id}`).value;
	const educationName = document.querySelector(`#educationName${id}`).value;
	
	const xhr = new XMLHttpRequest();
	const params = `id=${id}&i=${intitutionName}&sde=${startDate}&ede=${endDate}&e=${educationName}`;
	const origin = window.location.origin;
	
	xhr.open("POST", `${origin}/abcjobs/update-ed`, true);
	
	// data will be sent at once
	xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	
	xhr.onreadystatechange = () => {
		if(xhr.readyState == 4 && xhr.status == 200) {
			const edc = document.querySelector(`#edc${id}`);
			edc.classList.add("border-success");
			
			edc.innerHTML = 
			`
			<i class='bx bx-map-pin fs-2'></i>
			<div class="p-3">
			    <h4>${intitutionName} (${startDate.split("-")[0]} - ${endDate.split("-")[0]})</h4>
			    <small>${educationName}</small>
			</div>
			<div class="interactive-bc">
			  	<button type="button" class="button-card-hover text-primary" data-bs-toggle="modal" data-bs-target="#exe${id}"><i class='bx bx-pencil'></i></button>
			  	<button type="button" class="button-card-hover text-danger" data-bs-toggle="modal" data-bs-target="#exd${id}"><i class='bx bx-trash'></i></button>
			</div>
			`;
			
			notification = `
			<div class="toast show position-fixed bottom-0 end-0 m-4" style="z-index: 2001;">
			  <div class="toast-header text-bg-primary">
			    <strong class="me-auto">Saved</strong>
			    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast"></button>
			  </div>
			  <div class="toast-body bg-outline-primary">
			    Your education has been saved
			  </div>
			</div>
			
			<audio autoplay>
			  <source src="audio/notification.mp3" type="audio/mpeg">
			</audio> 
			`;
			
			document.querySelector("#notification").innerHTML = notification;
		}
	}
	
	xhr.send(params);
}

function xhredd(id) {
	const xhr = new XMLHttpRequest();
	const params = `id=${id}&type=ed`;
	const origin = window.location.origin;
	
	xhr.open("POST", `${origin}/abcjobs/delete`);
	
	xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	
	xhr.onreadystatechange = () => {
		if(xhr.readyState == 4 && xhr.status == 200) {
			const edc = document.querySelector(`#edc${id}`);
			edc.innerHTML = "";
			
			notification = `
			<div class="toast show position-fixed bottom-0 end-0 m-4" style="z-index: 2001;">
			  <div class="toast-header text-bg-danger">
			    <strong class="me-auto">Deleted</strong>
			    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="toast"></button>
			  </div>
			  <div class="toast-body bg-outline-primary">
			    Your education has been deleted
			  </div>
			</div>
			
			<audio autoplay>
			  <source src="audio/notification.mp3" type="audio/mpeg">
			</audio> 
			`;
			
			document.querySelector("#notification").innerHTML = notification;
		}
	}
	
	xhr.send(params);
}
