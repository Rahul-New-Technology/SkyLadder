<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/service.css">
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
	<section class="service-1">
		<section class="home-content">
			<div class="texts">
				<marquee behavior="scroll" direction="up">
					<h2 class="text">Our Services Of Ladder'S</h2>

					<h3 class="text">
						With a <span>Beautiful Working...</span>
					</h3>
				</marquee>
				<p>At "SKY LADDER", we provide top-tier ladder solutions
					designed to meet all your needs. Whether you are a homeowner,
					contractor, or industrial professional, we have the perfect ladder
					for you</p>
				<div class="button">
					<a href="#">Explore Me <i class="fas fa-location-arrow"></i></a>
				</div>
		</section>
	</section>
	<section class="service-2">
		<h2>VARIETY OF SERVICES RELATED TO LADDERS</h2>
	</section>

	<section class="service-3">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="service-item">
						<h3>Ladder Sales</h3>
						<p>Offering a variety of ladders for purchase, from step
							ladders to extension ladders and specialized models for
							commercial or industrial use.</p>
					</div>
				</div>
				<div class="col">
					<div class="service-item">
						<h3>Ladder Rentals</h3>
						<p>Renting ladders for temporary use in construction, home
							maintenance, or other projects, with flexible rental periods and
							different types of ladders available.</p>
					</div>
				</div>
				<div class="col">
					<div class="service-item">
						<h3>Ladder Inspection Services</h3>
						<p>Ensuring ladders are in proper working condition with
							thorough safety inspections, identifying wear and tear, and
							recommending necessary repairs or replacements.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="service-item">
						<h3>Ladder Repair and Maintenance</h3>
						<p>Repairing broken or damaged ladders, as well as routine
							maintenance to keep ladders functioning safely. This could
							include replacing parts like rungs, feet, or locking mechanisms.</p>
					</div>
				</div>
				<div class="col">
					<div class="service-item">
						<h3>Custom Ladder Solutions</h3>
						<p>Creating custom ladders tailored to specific needs, such as
							custom heights, special materials, or unique designs for
							particular industries or jobs.</p>
					</div>
				</div>
				<div class="col">
					<div class="service-item">
						<h3>Ladder Accessories for Home Services</h3>
						<p>When performing home services, such as maintenance,
							repairs, or renovations, having the right ladder accessories can
							make all the difference in terms of safety and efficiency. Key
							accessories to consider include:</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="service-item">
						<h3>Ladder Delivery and Setup</h3>
						<p>Offering delivery services for purchased or rented ladders
							and setting them up at the desired location, ensuring proper
							placement and safety precautions are in place.</p>
					</div>
				</div>
				<div class="col">
					<div class="service-item">
						<h3>Ladder Safety Training</h3>
						<p>Conducting safety workshops or training sessions to educate
							workers or homeowners on how to properly use ladders, reduce the
							risk of accidents, and follow safety standards.</p>
					</div>
				</div>
				<div class="col">
					<div class="service-item">
						<h3>Ladder Accessories for Return Services</h3>
						<p>In return services, where ladders are frequently used to
							access high places or perform detailed work, ensuring that you
							have the right accessories can help streamline the process,
							improve efficiency, and enhance safety. Some essential ladder
							accessories for return services include.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="service-4">
		<h1 class="Serheading">Features & Benefits</h1>
	</section>

	<section class="service-5">
		<h2>Our Features</h2>
		<!-- Heading added here -->
		<div class="row">
			<div class="column">Reduces the risk of falls or accidents, as
				they are designed with safety in mind, including wider rungs,
				stability features, and secure locking systems.</div>
			<div class="column">Provides access to hard-to-reach areas,
				whether in construction, maintenance, or household chores, making
				work more efficient.</div>
		</div>
		<div class="row">
			<div class="column">With easy adjustment options and a stable
				platform, users can work more quickly and comfortably at height,
				boosting productivity.</div>
			<div class="column">The lightweight design and compact size
				allow for easy transportation, ideal for professionals who need to
				move from site to site.</div>
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
      <p>
        Subscribe to our newsletter for weekly updates on Sky Ladder news, 
        creative sky designs, tips, and exclusive offers.
      </p>
      <form action="#">
        <input type="text" placeholder="Your email" required>
        <button type="submit">SUBSCRIBE</button>
      </form>
      <div class="icons">
        <i class="fa-brands fa-facebook-f"></i>
        <i class="fa-brands fa-twitter"></i>
        <i class="fa-brands fa-linkedin"></i>
        <i class="fa-brands fa-github"></i>
      </div>
    </div>
  </div>
</section>
<section class="footer section-6">
  <div class="footer-row">
    <div class="footer-col">
      <p>@Created by <strong>Rahul Mauriya</strong></p>
    </div>
  </div>
</section>

</body>
</html>