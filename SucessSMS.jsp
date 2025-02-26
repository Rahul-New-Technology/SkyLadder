<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SMS Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .success-container {
        text-align: center;
        background-color: #ffffff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .success-message {
        font-size: 24px;
        font-weight: bold;
        color: #4CAF50;
        opacity: 0;
        animation: fadeIn 2s ease-in-out forwards;
    }

    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    .checkmark {
        font-size: 48px;
        color: #4CAF50;
        margin-top: 20px;
        opacity: 0;
        animation: fadeIn 2s ease-in-out 0.5s forwards;
    }
</style>
</head>
<body>

<div class="success-container">
    <div class="success-message">
        SMS Sent Successfully!
    </div>
    <div class="checkmark">
        &#10004;
    </div>
</div>

</body>
</html>
