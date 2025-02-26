<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>
<title>Cart Items</title>

<link rel="stylesheet" href="css/addcart.css?v=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
#placeOrderButton {
	display: none;
}

#cancleOrdernow {
	display: none;
}
</style>
</head>
<body>


	<div class="headercont">

		<header class="header">
			<nav class="nav">
				<h6 class="nav_logo">

					<div class="waviy">
						<span style="--i: 1">Welcome To</span> <span style="--i: 2">L</span>
						<span style="--i: 3">a</span> <span style="--i: 4">d</span> <span
							style="--i: 5">d</span> <span style="--i: 6">e</span> <span
							style="--i: 7">r</span> <span style="--i: 8">S</span> <span
							style="--i: 9">k</span> <span style="--i: 10">y</span><br>
					</div>
				</h6>

				<ul class="nav_items">

					<li class="nav_item"><a href="index.jsp" class="nav_link">Home</a>

						<a href="product" class="nav_link">Product</a> <a href="services"
						class="nav_link">Services</a> <a href="contacts" class="nav_link">Contact</a></li>
				</ul>

				<%
				if (session.getAttribute("name") == null) {
				%>

				<%
				} else {
				%>

				<button id="logout">
					<a href="logout"><i class="fa-solid fa-right-from-bracket"></i></a>
				</button>

				<%
				}
				%>


			</nav>
		</header>
	</div>



	<div class="container">
		<div class="products-grid">
			<%
			double total_count = 0.0;

			// Database connection details
			String cartemail = (String) session.getAttribute("name");
			String jdbcURL = "jdbc:mysql://localhost:3306/student_data?usessl=flase";
			String jdbcUsername = "root";
			String jdbcPassword = "root";

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (Exception e) {
				e.printStackTrace();
			}

			try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
				String sql = "SELECT * FROM cart WHERE user_email=?";
				try (PreparedStatement statement = conn.prepareStatement(sql)) {
					statement.setString(1, cartemail);
					ResultSet resultSet = statement.executeQuery();

					while (resultSet.next()) {
				String id = resultSet.getString("id");
				String name = resultSet.getString("name");
				String price = resultSet.getString("price");
				String newpricestr = resultSet.getString("newprice");

				double newprice = 0.0; // Default value
				if (newpricestr != null && !newpricestr.trim().isEmpty()) {
					try {
						newprice = Double.parseDouble(newpricestr);
					} catch (NumberFormatException e) {
						// Log the error and use a default value
						System.err.println("Invalid number format for newprice: " + newpricestr);
						e.printStackTrace();
						newprice = 0.0; // Default value if parsing fails
					}
				}

				total_count += newprice;

				String imagePath = resultSet.getString("image_path");
				String category = resultSet.getString("category");
				String brand = resultSet.getString("brand");
				String sku = resultSet.getString("sku");
				int quantity = resultSet.getInt("quantity");
				String discount = resultSet.getString("discount");

				String productInfo = "<h2>Name: " + name + "</h2>" + "<p><b>Price:</b> $" + price + "</p>"
						+ "<p><b>Category:</b> " + category + "</p>" + "<p><b>Brand:</b> " + brand + "</p>"
						+ "<p><b>SKU:</b> " + sku + "</p>" + "<p><b>Quantity:</b> " + quantity + "</p>"
						+ "<p><b>Discount:</b> " + discount + "</p>" + "<p><b>Description:</b> " + newprice + "</p>";

				out.println("<div class='product' data-id='" + id + "'>");
				out.println("<img src='" + imagePath + "' alt='" + name + "' class='product-image'>");
				out.println("<div class='product-info'>");
				out.println("<h2>" + name + "</h2>");
				out.println("<p>Price :&#x20B9;" + newprice + "</p>");
				out.println("<p>Quantity: " + quantity + "</p>");
				out.println("<button class='buy-button'><i class='fas fa-check-circle'></i></button>");
				out.println("<button class='Delete-button' onclick='Delete(\"" + id
						+ "\")'><i class='fas fa-trash'></i></button>");
				out.println("<span class='quantitiyproduct'>Quantity: &nbsp;</span>");
				out.println("<input type='number' class='numberInput' name='Quan' min='1' step='1' value='" + quantity
						+ "' " + "oninput='updateQuantity(this.value, \"" + id + "\", \"" + price + "\")'>");
				out.println("</div>");
				out.println("</div>");
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
				out.println("<p>Error: " + e.getMessage() + "</p>");
			}
			%>
		</div>

		<!-- 		order form  -->

		<div id="imageModal" class="modal">
			<div id="caption">
				<h4>if you don't like any products so please you deleted
					product from the add to cart which products are need you can add
					products in add to cart</h4>

				<div id="orderSection"></div>
				<form class="order-form" id="orderForm" action="PlaceOrderButton">
					<label for="name">Name:</label> <input type="text" id="name"
						name="name" required> <label for="address">Address:</label>
					<input type="text" id="address" name="address" required> <label
						for="mobile">Mobile:</label> <input type="tel" id="mobile"
						name="mobile" pattern="[0-9]{10}" required> <label
						for="state">State:</label> <input type="text" id="state"
						name="state" required> <label for="district">District:</label>
					<input type="text" id="district" name="district" required>
					<label for="local-address">Local Address:</label> <input
						type="text" id="local-address" name="local-address" required>
					<label for="payment">Payment</label> <input type="text"
						id="payment" name="amount" value="<%=total_count%>" required
						readonly>

					<button type="button" onclick="handlePayment()"
						style="background: blue">
						<b>Pay</b>
					</button>
					<button type="submit" id="placeOrderButton">Place Order
						Now</button>
					<button type="submit" id="placeOrderButton2">"First, fill
						in all the details, then make the payment, and after that, place
						the order."</button>
					 <button type="button" onclick="setFormActionAndSubmit('/SkyLadder/cancleorder')" id="cancleOrderno">
            Cancel Order Now
        </button>
				</form>

			</div>
		</div>

		<!-- 		order form end -->
	</div>

	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

	<script>
	
	
	
	function setFormActionAndSubmit(actionUrl) {
	    const form = document.getElementById('orderForm');
	    if (form) {
	        form.method = 'get'; // Ensure the method is GET
	        form.action = actionUrl;
	        form.submit();
	    } else {
	        console.error('Form not found');
	    }
	}

	 
	 
	 
function handlePayment() {
    event.preventDefault(); 
    
    const form = document.getElementById('orderForm');

    
    if (!form.checkValidity()) {
   
        alert('Please fill out all required fields.');
        return;
    }
    var amount = document.getElementById('payment').value;
    console.log('Amount:', amount);
    
    fetch('/SkyLadder/amountpay', { 
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: new URLSearchParams({
            'amount': amount
        })
    })
    .then(response => response.json()) 
    .then(data => {
        console.log('Server Response:', data);

        if (data.status === "created") {
            let options = {
                key: 'rzp_test_BBn94hDs3IeZne', 
                amount: data.amount, 
                currency: 'INR',
                name: 'Sky Contact Manager',
                description: 'Ladder Payment',
                order_id: data.id, // Order ID from server response
                handler: function(response) {
                    console.log('Payment ID:', response.razorpay_payment_id);
                    console.log('Order ID:', response.razorpay_order_id);
                    console.log('Signature:', response.razorpay_signature);
                    alert('Congratulations! Payment successful');
                    document.getElementById('placeOrderButton').style.display = 'block';
                    document.getElementById('placeOrderButton2').style.display = 'none';
                    document.getElementById('cancleOrdernow').style.display = 'block';


                },
                prefill: { // Prefill customer's contact information
                    name: "", // Customer's name
                    email: "",
                    contact: "" // Customer's contact number
                },
                notes: {
                    address: "Rahul Mauriya"
                },
                theme: {
                    color: "#F37254" // Customize button color
                }
            };

            var rzp = new Razorpay(options);
            rzp.open();
        } else {
            alert('Failed to create order.');
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('An error occurred while processing the payment.');
    });
}
	 //this is for delete 
       	function Delete(productId) {
       	    event.preventDefault(); 
       	    
       	    const formData = new FormData();
       	    formData.append('productId', productId);
       	    
                console.log(productId)
       	   
       	    fetch('/SkyLadder/deletecart', { 
       	        method: 'POST',
       	        headers: {
       	            'Content-Type': 'application/x-www-form-urlencoded'
       	        },
       	        body: new URLSearchParams({
       	            'productId': productId
       	        })
       	    })
       	    .then(response => response.text()) // Get the response as text
       	    .then(message => {
       	        alert("delete to cart successfully");
       	     location.reload();// Show the success message
       	    })
       	    .catch(error => {
       	        console.error('Error:', error);
       	      
       	    });
       	}
       	
	 //update quantityt products
	 
       	function updateQuantity(quan, id,price) {
       	  
       	    quan = Math.max(1, Number(quan));
       	  console.log(price)
       	  
       	    const formData = new FormData();
       	    formData.append('productId', id);
       	    formData.append('quantity', quan);
       	    formData.append('price',price)
            
       	    // Send the data to the server
       	     fetch('/SkyLadder/updatequantity', { 
       	        method: 'POST',
       	        headers: {
       	            'Content-Type': 'application/x-www-form-urlencoded'
       	        },
       	        body: new URLSearchParams({
       	            'productId': id,
       	            'quantity':quan,
       	            'price':price
       	        })
       	    })
       	    .then(response => response.text())
       	    .then(message => {
       	        console.log('Quantity updated:', message);
       	     location.reload();
       	    })
       	    .catch(error => {
       	        console.error('Error:', error);
       	        alert('An error occurred while updating the quantity.');
       	    });
       	}
	 // this is order ajax logic for orderplace
	 
//     	function orderproducts(productId) {
//        	    event.preventDefault(); 
       	    
//        	    const formData = new FormData();
//        	    formData.append('productId', productId);
       	    
//                 console.log(productId)
       	   
//        	    fetch('/SkyLadder/deletecart', { 
//        	        method: 'POST',
//        	        headers: {
//        	            'Content-Type': 'application/x-www-form-urlencoded'
//        	        },
//        	        body: new URLSearchParams({
//        	            'productId': productId
//        	        })
//        	    })
//        	    .then(response => response.text()) // Get the response as text
//        	    .then(message => {
//        	        alert("delete to cart successfully");
//        	     location.reload();// Show the success message
//        	    })
//        	    .catch(error => {
//        	        console.error('Error:', error);
       	      
//        	    });
//        	}
       	
  </script>

</body>
</html>
