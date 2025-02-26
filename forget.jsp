<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page with Forgot Password</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
}

button, a {
	background-color: #007BFF;
	color: #fff;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
	display: inline-block;
	margin-top: 10px;
}

button:hover, a:hover {
	background-color: #0056b3;
}

.hidden {
	display: none;
}

.popup {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 300px;
	height: 300px;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	z-index: 1000;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.popup input {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.popup input:focus {
	border-color: #007BFF;
	outline: none;
}

.popup .close {
	position: absolute;
	top: 10px;
	right: 10px;
	background-color: #ff4d4d;
	border: none;
	color: #fff;
	padding: 5px 10px;
	cursor: pointer;
	border-radius: 5px;
}
</style>
</head>
<body>

	<div id="popup" class="popup hidden">
		<button class="close" onclick="closePopup()">X</button>
		<div id="emailSection">

			<h2>Forgot Password</h2>
			<form action="sendSms" method="post">
				<input type="email" name="forgetemail" placeholder="Enter your email" required>
				
                <input type="tel" name="mobile" id="mobile" placeholder="Enter your mobile number" required pattern="\d{10}" title="Please enter a 10-digit mobile number" />
				<button type="submit">Submit</button>

			</form>
		</div>
		
	</div>

	</body>
</html>
