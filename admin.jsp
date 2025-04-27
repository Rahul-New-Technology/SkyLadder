<%@ page import="java.sql.*"%>
<%@ page import="DbConnection.*"%>
<!DOCTYPE html>
<!-- Coding by CodingNepal | www.codingnepalweb.com -->
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link rel="stylesheet" href="css/admin.css">
<!-- Boxicons CDN Link -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="sidebar">
		<div class="logo-details">
			&nbsp &nbsp &nbsp &nbsp &nbsp<span class="logo_name">SKY
				Ladder</span>
		</div>
		<ul class="nav-links">
			<li><a href="" class="active"> <i class='bx bx-grid-alt'></i>
					<span class="links_name">Dashboard created by  rahul</span>
			</a></li>
			<li><a href="addproduct"> <i class='bx bx-box'></i> <span
					class="links_name">Add Product</span>
			</a></li>
			<li><a href="OrderList"> <i class='bx bx-list-ul'></i> <span
					class="links_name">Order list</span>
			</a></li>

			<li><a href="OrderList.jsp"> <i class='bx bx-book-alt'></i> <span
					class="links_name">Total order</span>
			</a></li>

			<li><a href="ShowSMS.jsp"> <i class='bx bx-message'></i> <span
					class="links_name">Messages</span>
			</a></li>

			<li><a href="#"> <i class='bx bx-trash'></i> <span
					class="links_name">Delete Product</span>
			</a></li>
			<li class="log_out"><a href="#"> <i class='bx bx-log-out'></i>
					<span class="links_name">Log out</span>
			</a></li>
		</ul>
	</div>
	<section class="home-section">
		<nav>
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i> <span class="dashboard">Dashboard</span>
			</div>
			<div class="search-box">
				<input type="text" placeholder="Search..."> <i
					class='bx bx-search'></i>
			</div>
			<!-- <div class="profile-details">
				<img src="images/profile.jpg" alt=""> <span class="admin_name">Prem
					Shahi</span> <i class='bx bx-chevron-down'></i>
			</div> -->
		</nav>

		<div class="home-content">
			<div class="overview-boxes">
				<div class="box">
					<div class="right-side">


						<div class="box-topic">Total Order</div>
						<%
						ConnectionDb ConnDb = new ConnectionDb();
						Statement stmt = null;
						String query = "select count(*) id from orders";

						try {
							stmt = ConnDb.OrderListGet();
							ResultSet rs = stmt.executeQuery(query);
							while (rs.next()) {

								int total = rs.getInt("id");
								int profit = total * 34	;
						%>
						<div class="number"><%=total%></div>
						<%-- <%
						}
						} catch (SQLException e) {
						e.printStackTrace();
						}
						%> --%>



						<div class="indicator">
							<i class='bx bx-up-arrow-alt'></i> <span class="text">Up
								from yesterday</span>
						</div>
					</div>
					<i class='bx bx-cart-alt cart'></i>
				</div>
				<div class="box">
					<div class="right-side">
						<div class="box-topic">Total Sales</div>
						<div class="number"><%=total%></div>

						<div class="indicator">
							<i class='bx bx-up-arrow-alt'></i> <span class="text">Up
								from yesterday</span>
						</div>
					</div>
					<i class='bx bxs-cart-add cart two'></i>
				</div>
				<div class="box">
					<div class="right-side">
						<div class="box-topic">Total Profit</div>
						<div class="number"><%=profit%></div>

						<%
						}
						} catch (SQLException e) {
						e.printStackTrace();
						}
						%>
						<div class="indicator">
							<i class='bx bx-up-arrow-alt'></i> <span class="text">Up
								from yesterday</span>
						</div>
					</div>
					<i class='bx bx-cart cart three'></i>
				</div>
				<!-- <div class="box">
					<div class="right-side">
						<div class="box-topic">Total Return</div>
						<div class="number">11,086</div>
						<div class="indicator">
							<i class='bx bx-down-arrow-alt down'></i> <span class="text">Down
								From Today</span>
						</div>
					</div>
					<i class='bx bxs-cart-download cart four'></i>
				</div> -->
			</div>

			<div class="sales-boxes">
				<div class="recent-sales box">
					<div class="title">Recent Sales</div>
					<div class="sales-details">
						<ul class="details">
							<li class="topic">PRODUCT</li>
							<li><a href="#">EXTENSION</a></li>
						</ul>
						<ul class="details">
							<li class="topic">Customer</li>
							<li><a href="#">Tiana Loths</a></li>
						</ul>
						<ul class="details">
							<li class="topic">Sales</li>
							<li><a href="#">Delivered</a></li>
						</ul>
						<ul class="details">
							<li class="topic">Total</li>
							<li><a href="#">$46.52</a></li>
						</ul>
					</div>
					<!-- <div class="button">
						<a href="#">See All</a>
					</div> -->
				</div>
				<!-- <div class="top-sales box">
					<div class="title">Top Seling Product</div>
					<ul class="top-sales-details">
						<li><a href="#"> <img src="images/sunglasses.jpg" alt="">
								<span class="product">Vuitton Sunglasses</span>
						</a> <span class="price">$1107</span></li>
						<li><a href="#"> <img src="images/jeans.jpg" alt="">
								<span class="product">Hourglass Jeans </span>
						</a> <span class="price">$1567</span></li>
						<li><a href="#"> <img src="images/nike.jpg" alt="">
								<span class="product">Nike Sport Shoe</span>
						</a> <span class="price">$1234</span></li>
						<li><a href="#"> <img src="images/scarves.jpg" alt="">
								<span class="product">Hermes Silk Scarves.</span>
						</a> <span class="price">$2312</span></li>
						<li><a href="#"> <img src="images/blueBag.jpg" alt="">
								<span class="product">Succi Ladies Bag</span>
						</a> <span class="price">$1456</span></li>
						<li><a href="#"> <img src="images/bag.jpg" alt="">
								<span class="product">Gucci Womens's Bags</span>
						</a> <span class="price">$2345</span>
						<li><a href="#"> <img src="images/addidas.jpg" alt="">
								<span class="product">Addidas Running Shoe</span>
						</a> <span class="price">$2345</span></li>
						<li><a href="#"> <img src="images/shirt.jpg" alt="">
								<span class="product">Bilack Wear's Shirt</span>
						</a> <span class="price">$1245</span></li>
					</ul>
				</div> -->
			</div>
		</div>
	</section>

	<script>
		let sidebar = document.querySelector(".sidebar");
		let sidebarBtn = document.querySelector(".sidebarBtn");
		sidebarBtn.onclick = function() {
			sidebar.classList.toggle("active");
			if (sidebar.classList.contains("active")) {
				sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
			} else
				sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
		}
	</script>

</body>
</html>