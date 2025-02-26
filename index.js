window.addEventListener('scroll', () => {
	const navbar = document.querySelector('.headercont');
	if (window.scrollY > 50) { // Adjust the scroll position as needed
		navbar.classList.add('headercont-scrolled');
	} else {
		navbar.classList.remove('headercont-scrolled');
	}
});






document.getElementById('focus-textarea').addEventListener('click', function() {
	document.getElementById('comment-input').focus();
}); window.addEventListener('scroll', () => {
	const navbar = document.querySelector('.headercont');
	if (window.scrollY > 50) { // Adjust the scroll position as needed
		navbar.classList.add('headercont-scrolled');
	} else {
		navbar.classList.remove('headercont-scrolled');
	}
});


document.addEventListener('DOMContentLoaded', () => {

	const formDiv = document.getElementById('contact-me');
	const cancelButton = document.getElementById('cancelButton');
	const contactMeElements = document.querySelectorAll('.click_me');

	

	contactMeElements.forEach(element => {
		element.addEventListener('click', () => {
			formDiv.style.display = 'block'; // Show the form
		});
	});


});



//document.getElementById('contactForm').addEventListener('submit', function(event) {
//	// Prevent form submission
//	event.preventDefault();
//
//	// Clear previous error messages
//	document.getElementById('errorMessages').innerHTML = '';
//
//	// Get form values
//	const name = document.getElementById('cname').value.trim();
//	const mobile = document.getElementById('cmobile').value.trim();
//	const gmail = document.getElementById('usergmail').value.trim();
//	const address = document.getElementById('caddress').value.trim();
//
//	// Validation variables
//	let hasError = false;
//	let errorMessages = '';
//
//	// Validate name
//	if (name.length < 2 || name.length > 50) {
//		errorMessages += '<p>Name must be between 2 and 50 characters.</p>';
//		hasError = true;
//	}
//
//	// Validate mobile number (10 digits)
//	if (!/^\d{10}$/.test(mobile)) {
//		errorMessages += '<p>Mobile number must be exactly 10 digits.</p>';
//		hasError = true;
//	}
//
//	// Validate email
//	if (!/\S+@\S+\.\S+/.test(gmail)) {
//		errorMessages += '<p>Please enter a valid email address.</p>';
//		hasError = true;
//	}
//
//	// Validate address
//	if (address.length < 5) {
//		errorMessages += '<p>Address must be at least 5 characters long.</p>';
//		hasError = true;
//	}
//
//	// Show errors if there are any
//	if (hasError) {
//		document.getElementById('errorMessages').innerHTML = errorMessages;
//	} else {
//
//	}
//});

function submitComment() {
	const commentInput = document.getElementById('comment-input');
	const commentsContainer = document.getElementById('comments-container');

	const commentText = commentInput.value.trim();

	if (commentText) {
		const commentDiv = document.createElement('div');
		commentDiv.className = 'comment';
		commentDiv.textContent = commentText;

		commentsContainer.appendChild(commentDiv);

		commentInput.value = '';
	} else {
		alert('Please enter a comment.');
	}
}

document.getElementById('focus-textarea').addEventListener('click', function() {
	document.getElementById('comment-input').focus();
}); window.addEventListener('scroll', () => {
	const navbar = document.querySelector('.headercont');
	if (window.scrollY > 50) { // Adjust the scroll position as needed
		navbar.classList.add('headercont-scrolled');
	} else {
		navbar.classList.remove('headercont-scrolled');
	}
});


//document.addEventListener('DOMContentLoaded', () => {
//
//	const formDiv = document.getElementById('contact-me');
//	const cancelButton = document.getElementById('cancelButton');
//	const contactMeElements = document.querySelectorAll('.click_me');
//
//	cancelButton.addEventListener('click', () => {
//		formDiv.style.display = 'none';
//	});
//
//	contactMeElements.forEach(element => {
//		element.addEventListener('click', () => {
//			formDiv.style.display = 'block'; // Show the form
//		});
//	});
//
//
//});



function submitComment() {
	const commentInput = document.getElementById('comment-input');
	const commentsContainer = document.getElementById('comments-container');

	const commentText = commentInput.value.trim();

	if (commentText) {
		const commentDiv = document.createElement('div');
		commentDiv.className = 'comment';
		commentDiv.textContent = commentText;

		commentsContainer.appendChild(commentDiv);

		commentInput.value = '';
	} else {
		alert('Please enter a comment.');
	}
}

document.getElementById('focus-textarea').addEventListener('click', function() {
	document.getElementById('comment-input').focus();
});/**
 * 
 * 
 * 
 */







function submitComment(event) {
	event.preventDefault(); // Prevent default form submission

	// Function to convert FormData to URL-encoded string
	function toUrlEncodedString(formData) {
		const formEntries = Array.from(formData.entries());
		return formEntries.map(([key, value]) =>
			encodeURIComponent(key) + '=' + encodeURIComponent(value)
		).join('&');
	}

	const formElement = document.getElementById('comment-form');
	const formData = new FormData(formElement);
	const urlEncodedData = toUrlEncodedString(formData);

	fetch('/SkyLadder/submit_comment', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		body: urlEncodedData,
	})
		.then(response => {
			if (response.ok) {
				loadComments(); // Call a function to refresh comments
				formElement.reset(); // Reset the form after successful submission
			} else {
				console.error('Failed to submit comment');
			}
		})
		.catch(error => console.error('Error submitting comment:', error));
}

document.addEventListener('DOMContentLoaded', () => {
	loadComments(); // Load comments when the page is first loaded
	document.getElementById('comment-form').addEventListener('submit', submitComment);


});


function loadComments() {
	fetch('submit_comment')
		.then(response => response.text())
		.then(data => {
			document.getElementById('comments-container').innerHTML = data;
		})
		.catch(error => console.error('Error fetching comments:', error));
}

document.addEventListener('DOMContentLoaded', loadComments);



