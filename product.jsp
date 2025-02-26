<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Products</title>
<link rel="stylesheet" href="css/products.css?v=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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

				<span class="cart"> <a href="addCart.jsp"> <i
						class="fa-solid fa-cart-shopping"></i>
				</a></span>

				<button id="logout">
					<a href="logout"><i class="fa-solid fa-right-from-bracket"></i></a>
				</button>

				<%
				}
				%>


			</nav>
		</header>
	</div>

	<!-- 	product model design  -->
	<div class="container">
		<div class="products-grid">
			<%
			// MySQL database connection details
			String jdbcURL = "jdbc:mysql://localhost:3306/student_data";
			String jdbcUsername = "root";
			String jdbcPassword = "root";

			try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
				String sql = "SELECT * FROM products";
				try (PreparedStatement statement = conn.prepareStatement(sql)) {
					ResultSet resultSet = statement.executeQuery();
					int count = 0;
					while (resultSet.next()) {
				String id = resultSet.getString("id");
				String name = resultSet.getString("name");
				String price = resultSet.getString("price");
				String imagePath = resultSet.getString("image_path");
				String category = resultSet.getString("category");

				String brand = resultSet.getString("brand");
				String sku = resultSet.getString("sku");
				int quantity = resultSet.getInt("quantity");
				String discount = resultSet.getString("discount");
				String description = resultSet.getString("description");

				String productInfo = "<h2>" + name + "</h2>" + "<p><b>Price:</b> " + price + "</p>"
						+ "<p><b>Category:</b> " + category + "</p>" + "<p><b>Brand:</b> " + brand + "</p>"
						+ "<p><b>SKU:</b> " + sku + "</p>" + "<p><b>Quantity:</b> " + quantity + "</p>"
						+ "<p><b>Discount:</b> " + discount + "</p>" + "<p><b>Description:</b> " + description + "</p>";

				/* if (count % 5 == 0) {
					out.println(count > 0 ? "</div>" : ""); // Close previous row
					out.println("<div class='products-row'>");
				} */

				out.println("<div class='product' data-id='" + id + "'>");
				out.println("<img src='" + imagePath + "' alt='" + name
						+ "' class='product-image' onclick='showModal(this, \"" + productInfo + "\")'>");
				out.println("<div class='product-info'>");
				out.println("<h2> " + name + "</h2>");
				out.println("<p>Price: " + price + "</p>");
                
				out.println("<button class='buy-button' onclick='addtocart(\"" + id + "\")'>Add To Cart</button>");

				out.println("</div>");
				out.println("</div>");

				/* count++; */
					}

				}
			} catch (SQLException e) {
				e.printStackTrace();
				out.println("<p>Error: " + e.getMessage() + "</p>");
			}
			%>
		</div>


		<div id="imageModal" class="modal">
			<span class="close" onclick="closeModal()"><i
				class="fa-solid fa-xmark"></i></span> <img class="modal-content"
				id="modalImage">
			<div id="caption">
				<h4>Click on the image to view detailed information about the
					product.</h4>
			</div>
			<div id="modalInfo" class="modal-info"></div>
		</div>

	</div>


	<script>

	 var isLoggedIn = <%= session.getAttribute("name") != null %>;
	
	
	function addtocart(productId) {
	    event.preventDefault(); 
	    
        if (!isLoggedIn) {
            alert('Please log in to add items to the cart. for login go home page');
            return;
        }
	    
	    const formData = new FormData();
	    formData.append('productId', productId);
	    
         console.log(productId)
	   
	    fetch('/SkyLadder/addCart', { 
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
	        alert("Added to cart successfully"); // Show the success message
	    })
	    .catch(error => {
	        console.error('Error:', error);
	        alert('An error occurred while adding to the cart.');
	    });
	}

	
   
		function showModal(image, productInfo) {
			const modal = document.getElementById("imageModal");
			const modalImage = document.getElementById("modalImage");
			const caption = document.getElementById("caption");
			const modalInfo = document.getElementById("modalInfo");

			modal.style.display = "block";
			modalImage.src = image.src;
			caption.innerHTML = image.alt;
			modalInfo.innerHTML = productInfo;
		}

		function closeModal() {
			const modal = document.getElementById("imageModal");
			modal.style.display = "none";
		}
		
		
		
	</script>
</body>

</html>





