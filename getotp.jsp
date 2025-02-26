<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification and Password Reset</title>
    <style>
        /* Reset default margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic styling for body */
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to right, #f8c291, #e77f7f);
        }

        /* Container styling */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
            width: 100%;
        }

        /* Form box styling */
        .form-box {
            background: #ffffff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        /* Heading styling */
        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        /* Input field styling */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #e77f7f;
            border-radius: 4px;
            font-size: 16px;
        }

        /* Button styling */
        button {
            background-color: #e77f7f;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #c84141;
        }

        /* Feedback message styling */
        .feedback {
            margin-top: 10px;
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-box" id="otp-form">
            <h1>Enter OTP</h1>
             <%
             
        String message = (String) request.getAttribute("message");
        if (message != null) {
    %>
    <p><%= message +" "+request.getAttribute("mobile") %></p>
    <% } %>
            <form id="otp-form-element">
                <input type="text" id="otp-input" placeholder="Enter OTP" maxlength="6">
                <button type="button" onclick="verifyOtp()">Verify OTP</button>
                <div id="feedback" class="feedback"></div>
            </form>
        </div>
        <div class="form-box" style="display: none;" id="password-form">
            <h1>Set New Password</h1>
            <%
				    String email=(String) session.getAttribute("email");
				
				%>
				<p>email <%="="+ email %></p>
				
            <form id="reset-form" action="newpassword" method="post">
                <input type="password" name="new-password" id="new-password" placeholder="New Password">
                <input type="password"  name="confirm-password" id="confirm-password" placeholder="Confirm Password">
                <button type="submit" onclick="resetPassword()" >Reset Password</button>
                <div id="reset-feedback" class="feedback"></div>
            </form>
        </div>
    </div>

    <script>
    function verifyOtp() {
        const otpInput = document.getElementById('otp-input').value;
        const feedback = document.getElementById('feedback');
        
        // Simulate server OTP for testing
         // Replace with your actual server OTP
const sessionOtp = "<%= session.getAttribute("otp") %>";

        feedback.textContent = '';

        // Check if the OTP matches
        if (otpInput === sessionOtp) {
            // Hide OTP form and show password reset form
            document.getElementById('otp-form').style.display = 'none';
            document.getElementById('password-form').style.display = 'block';
        } else {
            feedback.textContent = 'Invalid OTP. Please try again.';
        }
    }

    function resetPassword() {
        const newPassword = document.getElementById('new-password').value;
        const confirmPassword = document.getElementById('confirm-password').value;
        const feedback = document.getElementById('reset-feedback');

        feedback.textContent = '';

        // Check if passwords match
        if (newPassword !== confirmPassword) {
            feedback.textContent = 'Passwords do not match.';
            return;
        }

        // Check for basic password validation
        if (newPassword.length < 6) {
            feedback.textContent = 'Password must be at least 6 characters long.';
            return;
        }

        // Submit the password reset form
        document.getElementById('reset-form').submit();
    }
    </script>
</body>
</html>
