<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Failure</title>
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
        .failure-box {
            width: 90%;
            max-width: 500px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            box-sizing: border-box;
            text-align: center;
        }
        h1 {
            color: #d9534f;
            margin-bottom: 20px;
        }
        .message {
            margin-bottom: 30px;
            font-size: 18px;
            color: #555;
        }
        .emoji {
            font-size: 80px;
            margin-bottom: 30px;
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
        @media (max-width: 768px) {
            .failure-box {
                width: 95%;
                padding: 15px;
            }
            .emoji {
                font-size: 60px;
            }
            .message {
                font-size: 16px;
            }
        }
        @media (max-width: 480px) {
            .emoji {
                font-size: 50px;
            }
            .message {
                font-size: 14px;
            }
            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="failure-box">
        <h1>Order Failed</h1>
        <div class="emoji">&#x1F622;</div>
        <div class="message">
            We're sorry, but there was an issue with confirming your order. Please try again later.
        </div>
        <a class="back-link" href="addCart.jsp">Return to the Order Page</a>
        <p>Your payment will be refunded within 24 hours.</p>
        <h2>Contacts Me</h2>
        <p>If you have any concerns or need further assistance, please feel free to SMS us at [rahulmauriyaxxx@gmail.com].</p>
    </div>
</body>
</html>
