<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/contact.css">

<title>Context Page</title>
<style>
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

				<span class="cart"> <i class="fa-solid fa-cart-shopping"></i>
				</span>
				<button id="logout">
					<a href="logout"><i class="fa-solid fa-right-from-bracket"></i></a>
				</button>

				<%
				}
				%>
			</nav>
		</header>
	</div>
	<section class="section-1">
		<h2>
			<marquee behavior="scroll" direction="up" scrollamount="2">MY
				WORKERS OF SKY LADDERS </marquee>
		</h2>
	</section>



	<section class="section-2">
		<div class="grid-container">
			<div class="grid-item">
				<img src="image/1.jpg" alt="Worker 1" class="grid-image">
				<p class="name">
					@(RAHUL MAURIYA)<BR>NO-: &nbsp 6307795815
				</p>
			</div>
			<div class="grid-item">
				<img src="image/1.jpg" alt="Worker 2" class="grid-image">
				<p class="name">
					@(SHAFEEK ANSARI)<BR>NO-: &nbsp 8707797598
				</p>
			</div>
			<div class="grid-item">
				<img src="image/1.jpg" alt="Worker 3" class="grid-image">
				<p class="name">
					@(HAIDER SHAIKH)<BR>NO-: &nbsp 8385790818
				</p>
			</div>
			<div class="grid-item">
				<img src="image/1.jpg" alt="Worker 4" class="grid-image">
				<p class="name">
					@(IMTIYAZ SHAIKH)<BR>NO-: &nbsp 9407495856
				</p>
			</div>
			<div class="grid-item">
				<img src="image/1.jpg" alt="Worker 5" class="grid-image">
				<p class="name">
					@(USAMA GANI)<BR>NO-: &nbsp 6707498815
				</p>
			</div>
			<div class="grid-item">
				<img src="image/1.jpg" alt="Worker 6" class="grid-image">
				<p class="name">
					@(AMIR BARBER)<BR>NO-: &nbsp 6307795815
				</p>
			</div>
		</div>
	</section>

	<section class="contact-section">
		<div class="address">
			<h2>Visit Sky Ladder</h2>
			<p><h3>Sky Ladder Address:-</h3> Gala No. 20, Nihal Compound, Pahelwan
				Estate, 90 Feet Road, Sakinaka, Mumbai - 400072 (Opp Dilshad Hotel)</p>
			

			<!-- Google Map embedded iframe -->
			<div class="map-container">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5290.290130441396!2d72.88793124694591!3d19.099969983288506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c9fa36741eb7%3A0xa42f2cad8dd93845!2sJeh&#39;s%20Nest%20Luxury%20A%2FC%20Dormitory!5e0!3m2!1sen!2sin!4v1737813190627!5m2!1sen!2sin"
					width="100%" height="300" frameborder="0" style="border: 0"
					allowfullscreen> </iframe>
			</div>
		</div>

		<div class="contact-form">
			<h2>Contact Us</h2>
			<form action="ContactSMS" method="POST">
				<label for="name">Your Name:</label> <input type="text" id="name"
					name="name" required> <label for="email">Your
					Email:</label> <input type="email" id="email" name="email" required>

				<label for="message">Message:</label>
				<textarea id="message" name="message" required></textarea>

				<button type="submit">Send Message</button>
			</form>
		</div>
	</section>
	<section class="footer">
		<div class="footer-row">
			<div class="footer-col">
				<h4>Info</h4>
				<ul class="links">
					<li><a href="#">About Sky Ladder</a></li>
					<li><a href="#">Compressions</a></li>
					<li><a href="#">Customers</a></li>
					<li><a href="#">Service</a></li>
					<li><a href="#">Sky Ladder Collection</a></li>
				</ul>
			</div>
			<div class="footer-col">
				<h4>Explore</h4>
				<ul class="links">
					<li><a href="#">Free Sky Designs</a></li>
					<li><a href="#">Latest Sky Designs</a></li>
					<li><a href="#">Themes</a></li>
					<li><a href="#">Popular Sky Designs</a></li>
					<li><a href="#">Artistic Sky Skills</a></li>
					<li><a href="#">New Sky Uploads</a></li>
				</ul>
			</div>
			<div class="footer-col">
				<h4>Legal</h4>
				<ul class="links">
					<li><a href="#">Sky Ladder Agreement</a></li>
					<li><a href="#">Privacy Policy</a></li>
					<li><a href="#">GDPR</a></li>
					<li><a href="#">Security</a></li>
					<li><a href="#">Customer Testimonials</a></li>
					<li><a href="#">Sky Ladder Media Kit</a></li>
				</ul>
			</div>
			<div class="footer-col">
				<h4>Newsletter</h4>
				<p>Subscribe to our newsletter for weekly updates on Sky Ladder
					news, creative sky designs, tips, and exclusive offers.</p>
				<form action="#">
					<input type="text" placeholder="Your email" required>
					<button type="submit">SUBSCRIBE</button>
				</form>
				<div class="icons">
					<i class="fa-brands fa-facebook-f"></i> <i
						class="fa-brands fa-twitter"></i> <i class="fa-brands fa-linkedin"></i>
					<i class="fa-brands fa-github"></i>
				</div>
			</div>
		</div>
	</section>
	<section class="footer section-6">
		<div class="footer-row">
			<div class="footer-col">
				<p>
					@Created by <strong>Rahul Mauriya</strong>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
