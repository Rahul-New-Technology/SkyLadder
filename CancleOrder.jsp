<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }
        .confirmation-box {
            width: 500px;
            height: 500px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            box-sizing: border-box;
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        .message {
            margin-bottom: 30px;
            font-size: 18px;
            color: #555;
        }
        .checkmark-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100px;
        }
        .checkmark {
            width: 100px;
            height: 100px;
            background-color: #4CAF50;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            margin-bottom: 30px; /* Adjust if needed for spacing */
        }
        .checkmark::before {
            content: '\2714';
            font-size: 60px;
            color: white;
            animation: checkmark-animation 0.6s ease-in-out forwards;
            position: absolute; /* Use absolute positioning */
            top: 50%; /* Center vertically */
            left: 50%; /* Center horizontally */
            transform: translate(-50%, -50%); /* Adjust for exact centering */
        }
        @keyframes checkmark-animation {
            0% {
                opacity: 0;
                transform: scale(0.5) translate(-50%, -50%);
            }
            100% {
                opacity: 1;
                transform: scale(1) translate(-50%, -50%);
            }
        }
        .back-link {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="confirmation-box">
        <h1>Order Cancle</h1>
        <div class="message">
            Your Order is Cancle
        </div>
        <div class="checkmark-wrapper">
            <div class="checkmark">
                <!-- Checkmark is added via ::before pseudo-element -->
            </div>
        </div>
        <a class="back-link" href="index.jsp">Return to Home Page</a>
                <p>If you have any concerns or need further assistance, please feel free to SMS us at [rahulmauriyaxxx@gmail.com].</p>
        
    </div>
</body>
</html>
