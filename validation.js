document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('content');

    form.addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent the default form submission behavior

        // Collect form data
        const email = document.getElementById('contactgmail').value;
        const sms = document.getElementById('contactstext').value;

        let isValid = true;
        let errorMessage = '';

        // Perform custom validation
        if (sms === '' || email === '') {
            errorMessage += 'All fields are required.\n';
            isValid = false;
        }

        if (!isValid) {
            alert(errorMessage);
            return; // Exit the function if validation fails
        }

        // Proceed with form submission
        const formData = {
            email: email,
            sms: sms
        };

        // Send data to the server using fetch
        fetch('/SkyLadder/contactsuser', { // Replace with your API endpoint
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
        })
        .then(response => response.json())
        .then(data => {
            console.log('Success:', data);
            alert('Form submitted successfully!');
            location.reload(); // Refresh the page after successful submission
        })
        .catch((error) => {
            console.error('Error:', error);
            alert('There was an error submitting the form.');
        });
    });
});
