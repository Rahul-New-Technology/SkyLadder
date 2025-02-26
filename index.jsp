<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet"%>

<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<title>LadderSky</title>
<link rel="stylesheet" href="css/style.css?v=1" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<!-- Unicons -->
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
</head>
<body>
	<!-- Header -->
	<div class="headercont">

		<header class="header">
			<nav class="nav">
				<h6 class="nav_logo">

					<div class="waviy">
						<span style="--i: 1">Welcome to &nbsp;</span> <span style="--i: 2">L</span>
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
				<button class="button" id="form-open">Login</button>
				<%
				} else {
				%>


				<button class="logdesign">
					<a href="logout"><i class="fa-solid fa-right-from-bracket"></i></a>
				</button>


				<span> <a href="https://wa.me/6307795815" target="_blank">
						<i class="fab fa-whatsapp"></i>
				</a>
				</span> <span class="cart"> <i class="fa-solid fa-cart-shopping"></i>
				</span>
				<%
				}
				%>


			</nav>
		</header>

	</div>
	<!-- Home -->
	<section class="home">

		<div class="home-headingg">
			<h2>Discover your perfect purchas</h2>
		</div>


		<div class="form_container">
			<i class="uil uil-times form_close"></i>

			<!-- Login From -->
			<div class="form login_form">
				<form action="login" method="post">
					<p style="color: red">
						<%
						String vliad = request.getParameter("vliad");
						if (vliad != null && !vliad.isEmpty()) {
							out.print(vliad);
						} else {
							out.print("  "); // or simply leave it empty if you don't want to display anything
						}
						%>
						<%
						String update = request.getParameter("update");
						if (update != null && !update.isEmpty()) {
							out.print(update);
						} else {
							out.print("  "); // or simply leave it empty if you don't want to display anything
						}
						%>
						<%
						String Not_Update = request.getParameter("Not_Update");
						if (Not_Update != null && !Not_Update.isEmpty()) {
							out.print(Not_Update);
						} else {
							out.print("  "); // or simply leave it empty if you don't want to display anything
						}
						%>
					</p>
					<h2>Login</h2>
					<%
					String error = request.getParameter("error");
					if (error != null) {
						out.println("<div style='color: red;'><p>" + error + "</p></div>");
					}
					%>
					<div class="input_box">
						<input type="email" id="name" name="Lemail"
							placeholder="Enter your email" required /> <i
							class="uil uil-envelope-alt email"></i>
					</div>
					<div class="input_box">
						<input type="password" id="passowrd" name="Lpassword"
							placeholder="Enter your password" required /> <i
							class="uil uil-lock password"></i> <i
							class="uil uil-eye-slash pw_hide"></i>
					</div>

					<div class="option_field">
						<!-- 						<span class="checkbox"> <input type="checkbox" id="check" /> -->
						<!-- 							<label for="check">Remember me</label> -->
						</span> <a href="forget.jsp" class="forgot_pw">Forgot password?</a>
					</div>

					<button class="button" type="submit">Login Now</button>

					<div class="login_signup">
						Don't have an account? <a href="#" id="signup">Signup</a>
					</div>
				</form>
			</div>

			<!-- Signup From -->
			<div class="form signup_form">
				<form action="signup" method="post">

					</p>
					<h2>Signup</h2>


					<%
					String errorMessage = (String) request.getAttribute("errorMessage");
					if (errorMessage != null && !errorMessage.isEmpty()) {
						out.print(errorMessage);
					} else {
						out.print("  "); // or simply leave it empty if you don't want to display anything
					}
					%>
					<div class="input_box">
						<input type="email" id="signemail" name="email"
							placeholder="Enter your email" required /> <i
							class="uil uil-envelope-alt email"></i>
					</div>
					<div class="input_box">
						<input type="password" id="signuppass" name="password"
							placeholder="Create password" required /> <i
							class="uil uil-lock password"></i> <i
							class="uil uil-eye-slash pw_hide"></i>
					</div>
					<div class="input_box">
						<input type="password" id="signcpaas"
							placeholder="Confirm password" required /> <i
							class="uil uil-lock password"></i> <i
							class="uil uil-eye-slash pw_hide"></i>
					</div>



					<button type="submit" class="button">Signup Now</button>

					<div class="login_signup">
						Already have an account? <a href="#" id="login">Login</a>
					</div>

				</form>
			</div>
		</div>
	</section>
	<%-- 	<%@ include file="slider_home/index.html" %> --%>
	<section class="section3">
		<div class="sec3div1">
			<div class="shdiv1">
				<h3>Sky Ladder Manufacturing :-</h3>
				<p>
					"Sky Ladder Manufacturing creates high-quality ladders designed to
					reach new heights in safety and durability. We combine expert
					Craftsmanship with innovative materials to ensure our ladders meet
					the highest standards. Whether you need a ladder for home use or
					industrial purposes, Sky Ladder Manufacturing delivers reliable and
					sturdy solutions for all your climbing needs."<br> At Sky
					Ladder Manufacturing, we prioritize customer satisfaction and
					safety, ensuring that our ladders not only meet but exceed industry
					expectations.
				</p>
			</div>
		</div>

		<div class="sec3div2"><%@ include file="slider_home/index.html"%>
		</div>

	</section>
	<div class="section-heading-container">
		<h2 class="section-heading">Our Ladder Collection</h2>
		<p class="section-subheading">Featuring High-Quality Aluminum and
			Sky Ladders</p>
	</div>

	<div class="section4">
		<div class="child-div">
			<img src="image/aluminium.png" alt="Aluminum Ladder">
			<h3>Aluminum Ladder</h3>
			<p>
				Lightweight and durable, this ladder is perfect for both indoor and
				outdoor tasks. Made from high-quality aluminum, it’s resistant to
				rust and easy to carry, making it a versatile choice for any DIY
				project or professional job. <a
					href="mailto:rahulmauriya45@example.com" class="contact-icon">
					<i class="fas fa-envelope"></i> Contact &nbsp;
				</a><b class="mobile">Mo:- 6307795815<br> <span
					class="click_me">Contacts me</span></b>
			</p>
		</div>
		<div class="child-div">
			<img src="image/telescoping.webp" alt="Telescoping Ladder">
			<h3>Telescoping Ladder</h3>
			<p>
				Compact and portable, the telescoping ladder is ideal for those who
				need a ladder that’s easy to transport and store. Its extendable
				design allows you to adjust the height as needed, making it a
				flexible solution for various heights.<a
					href="mailto:rahulmauriya45@example.com" class="contact-icon">
					<i class="fas fa-envelope"></i> Contact &nbsp;
				</a><b class="mobile">Mo:- 6307795815 <br> <span
					class="click_me">Contacts me</span></b>
			</p>
		</div>
		<div class="child-div">
			<img src="image/single.jfif" alt="Step Ladder">
			<h3>Step Ladder</h3>
			<p>
				Perfect for home use, the step ladder offers stability and
				convenience. With wide steps and a sturdy frame, it’s great for
				reaching high shelves, changing light bulbs, or other household
				tasks.<br> <a href="mailto:rahulmauriya45@example.com"
					class="contact-icon"> <i class="fas fa-envelope"></i> Contact
					&nbsp;
				</a> <b class="mobile">Mo:- 6307795815 &nbsp <br> <span
					class="click_me">Contacts Me</span></b>
			</p>
		</div>
		<div class="child-div">
			<img src="image/extension.webp" alt="Extension Ladder">
			<h3>Extension Ladder</h3>
			<p>
				Reach new heights with the extension ladder. Designed for
				professional use, this ladder extends to great lengths, making it
				perfect for painting, cleaning gutters, or other high-reaching jobs.<a
					href="mailto:rahulmauriya45@example.com" class="contact-icon">
					<i class="fas fa-envelope"></i> Contact &nbsp;
				</a><b class="mobile">Mo:- 6307795815<br> <span
					class="click_me">Contacts Me</span></b>
			</p>
		</div>
		<div class="child-div">
			<img src="image/folding.webp" alt="Folding Ladder">
			<h3>Folding Ladder</h3>
			<p>
				Easy to store, the folding ladder is perfect for small spaces. Its
				compact design allows it to be folded and stored away when not in
				use, without compromising on stability or strength.<a
					href="mailto:rahulmauriya45@example.com" class="contact-icon">
					<i class="fas fa-envelope"></i> Contact &nbsp;
				</a><b class="mobile">Mo:- 6307795815<br> <span
					class="click_me">Contacts me</span></b>
			</p>
		</div>
		<div class="child-div">
			<img src="image/multipurpose.webp" alt="Multi-Purpose Ladder">
			<h3>Multi-Purpose Ladder</h3>
			<p>
				Versatile and adaptable, the multi-purpose ladder can be configured
				in various ways to suit different tasks. Whether you need a step
				ladder, extension ladder, or scaffold, this ladder can do it all.<br>
				<a href="mailto:rahulmauriya45@example.com" class="contact-icon">
					<i class="fas fa-envelope"></i> Contact &nbsp;
				</a><b class="mobileclick">Mo:- 6307795815<br> <span
					class="click_me">Contacts me</span></b>
			</p>
		</div>
	</div>
	<div class="usersay">
		<div class="userh1-container">
			<h1 class="userh1">"Check out the feedback from other users
				below:"</h1>
		</div>
		<p class="userp">"Add your review in the textarea and press
			'Submit Review' to display it.".</p>
	</div>
	<div class="section5">
		<div class="comment-form">
			<h2>
				Add Your Comment:- &nbsp; &nbsp; <i class="fas fa-thumbs-up likebuttonbyrahul"
					id="likeButton"></i> &nbsp; &nbsp; <span id="likeCount">0</span>

				&nbsp; &nbsp; &nbsp; &nbsp; <i id="focus-textarea"
					class="fas fa-comment"></i> &nbsp; &nbsp; &nbsp; <a
					href="https://wa.me/6307795815" target="_blank"
					title="Chat with us on WhatsApp"> <i class="fab fa-whatsapp"></i>
				</a>
			</h2>
			<form id="comment-form">
				<textarea id="comment-input" name="usercomment"
					placeholder="Enter your comment here..."></textarea>
				<br>
				<button type="submit">Submit Comment</button>
			</form>
		</div>
		<div class="comment-display">
			<h2>
				<i class="fas fa-comment"></i> &nbsp; &nbsp; &nbsp;All Comments
			</h2>
			<div id="comments-container"></div>
		</div>
	</div>

	<div class="section6">
		<div class="video-section">
			<div class="video-container">
				<video id="video1" src="image/video3.webm" autoplay muted></video>
			</div>
			<div class="video-container">
				<video id="video2" src="image/lightwork.webm" muted
					style="display: none;"></video>
			</div>
		</div>
		<div class="content-section">
			<h2>Why use ladder :-</h2>
			<p>Using a ladder is essential for tasks that require reaching
				heights beyond what you can comfortably or safely reach from the
				ground. Here are some reasons why ladders are commonly used:</p>
			<ol>
				<li><strong>Access:</strong> Ladders provide access to elevated
					areas such as rooftops, high shelves, or attic spaces that are
					otherwise difficult to reach.</li>
				<li><strong>Safety:</strong> For many tasks, using a ladder is
					safer than trying to improvise with other objects or methods. It
					helps maintain balance and stability while working at height.</li>
				<li><strong>Versatility:</strong> Ladders come in various types
					and sizes, such as step ladders, extension ladders, and folding
					ladders, each suited for different tasks and environments.</li>
			</ol>

			<!-- Add more content as needed -->
		</div>
	</div>



	<section class="footerblewo">
		<footer>
			<div class="main-content">
				<div class="left box">
					<h2>About us</h2>
					<div class="content">
						<p>Hi, Im Abdul Salaam, the proud owner of Ladder Sky. With a
							passion for [ Ladder Manufacturing ], I founded Ladder Sky to
							[briefly describe the mission or goal of Ladder Sky, e.g.,
							provide innovative solutions, deliver top-notch services, etc.].</p>


						<div class="social">
							<a href="https://facebook.com/coding.np"><span
								class="fab fa-facebook-f"></span></a> <a href="#"><span
								class="fab fa-twitter"></span></a> <a
								href="https://instagram.com/coding.np"><span
								class="fab fa-instagram"></span></a> <a
								href="https://youtube.com/c/codingnepal"><span
								class="fab fa-youtube"></span></a>
						</div>
					</div>
				</div>
				<div class="center box">
					<h2>Address</h2>
					<div class="content">
						<div class="place">
							<span class="fas fa-map-marker-alt"></span> <span class="text">Dilshad
								Restorent 90 Feet Road Sakinaka MetroStation</span>
						</div>
						<div class="phone">
							<span class="fas fa-phone-alt"></span> <span class="text">+91
								6307795815</span>
						</div>
						<div class="email">
							<span class="fas fa-envelope"></span> <span class="text">rahulmauriya54@gmail.com</span>
						</div>
					</div>
				</div>
				<div class="right box">
					<h2>Contact us</h2>
					<div class="content" id="content">
						<form action="contactsuser" method="Post">
							<div class="email">
								<div class="text">Email *</div>
								<input type="email" id="contactgmail" name="email">
							</div>
							<div class="msg">
								<div class="text">Message *</div>
								<textarea rows="2" cols="25" class="textareaffffff"
									id="contactstext" name="sms"></textarea>
							</div>
							<div class="btn">
								<button type="submit">Send</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="bottom">
				<center>
					<span class="credit">Created By <a
						href="https://www.codingnepalweb.com">Rahul Mauriya</a> |
					</span> <span class="far fa-copyright"></span><span> 2024 All
						rights reserved.</span>
				</center>
			</div>
		</footer>
	</section>


	<script>
	  window.onload = function() {
      
          var alertMessage = '<%=request.getAttribute("alertMessage")%>
		';

		};
	</script>
	<script src="javascript/validation.js"></script>
	<script src="javascript/script.js"></script>
	<script src="javascript/index.js"></script>
	<script src="javascript/like.js"></script>
	<script src="javascript/video.js"></script>


</body>
</html>