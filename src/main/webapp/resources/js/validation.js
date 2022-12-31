const firstName = document.querySelector("#firstName");
const lastName = document.querySelector("#lastName");
const emailAddress = document.querySelector("#emailAddress");
const password = document.querySelector("#password");
const passwordConfirmation = document.querySelector("#passwordConfirmation");
const btn = document.querySelector("[type=submit]");

if(firstName != null) {
	firstName.addEventListener("focusout", () => { isInvalid(firstName); });	
	firstName.addEventListener("keyup", () => { isInvalid(firstName); });	
}

if(lastName != null) {
	lastName.addEventListener("focusout", () => { isInvalid(lastName); });	
	lastName.addEventListener("keyup", () => { isInvalid(lastName); });	
}

if(emailAddress != null) {
	emailAddress.addEventListener("focusout", () => { checkEmail(emailAddress) });
	emailAddress.addEventListener("keyup", () => { checkEmail(emailAddress) });
	
	function checkEmail(node) {
		const validEmailAt = node.value.indexOf("@");
		const validEmailDot = node.value.indexOf(".");
		
		if(validEmailAt < 0 || validEmailDot < 0) {
			node.classList.remove("is-valid");		
			node.classList.add("is-invalid");
			btn.classList.remove("disabled");
		} else {
			node.classList.add("is-valid");		
			node.classList.remove("is-invalid");
			btn.classList.remove("disabled");
		}
	}
}

if(passwordConfirmation != null) {
	passwordConfirmation.addEventListener("focusout", () => { isInvalid(password); isInvalid(passwordConfirmation) });
	passwordConfirmation.addEventListener("keyup", () => { pairPassword(passwordConfirmation) });
	
	function pairPassword(node) {
		if(node.value == "") {
			isInvalid(password);
			isInvalid(node);
		} else {
			isValidIn2Field(password, node);
		}
	}
}

function isInvalid(val) {
	if(val.value == "") {
		val.classList.add("is-invalid");
		val.classList.remove("is-valid");
		btn.classList.add("disabled");
	} else {
		val.classList.remove("is-invalid");
		val.classList.add("is-valid");
		btn.classList.remove("disabled");
	}
}

function isValidIn2Field(val1, val2) {
	if(val1.value != val2.value) {
		val1.classList.add("is-invalid");
		val2.classList.add("is-invalid");
		btn.classList.add("disabled");
		
		val1.classList.remove("is-valid");
		val2.classList.remove("is-valid");
	} else {
		val1.classList.add("is-valid");
		val2.classList.add("is-valid");
		btn.classList.remove("disabled");
		
		val1.classList.remove("is-invalid");
		val2.classList.remove("is-invalid");
	}
};