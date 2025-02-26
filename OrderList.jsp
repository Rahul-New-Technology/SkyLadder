<%@ page import="java.sql.*"%>
<%@ page import="DbConnection.*"%>
<html>
<head>
<title>Order List</title>
<style>
*{

padding:0px;
margin:0px;

}
table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid black;
	
}

th, td {
	padding: 8px;
	text-align: left;
	background: black;
	opacity:0.6;
	color: white;
	border-color: black;
}

.order {
  display:flex;
  justify-content:center;
  align-items:center;
  background:crimson;
  color:white;
  font-size:20px;
  
	
}
th{

background:crimson;
opacity:0.9;
}
</style>
</head>
<body>

	<div class="order">

		<h2>Order List</h2>

	</div>
	<table>
		<thead>

			<tr>
				<th>Product ID</th>
				<th>Name</th>
				<th>Address</th>
				<th>Mobile</th>
				<th>State</th>
				<th>District</th>
				<th>Local Address</th>
				<th>Amount</th>
				<th>Email</th>
				<!-- <th>Status</th>
				<th>Diliver</th> -->
			</tr>


		</thead>
		<tbody>
			<%
			ConnectionDb ConnDb = new ConnectionDb();
			Statement stmt = null;
			String query = "SELECT * FROM orders";
			ResultSet rs = null;

			try {
				stmt = ConnDb.OrderListGet();
				rs = stmt.executeQuery(query);

				while (rs.next()) {
					int id = rs.getInt("id");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String mobile = rs.getString("mobile");
					String state = rs.getString("state");
					String district = rs.getString("district");
					String localAddress = rs.getString("local_address");
					double amount = rs.getDouble("amount");
					String email = rs.getString("email");
			%>
			<tr>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=address%></td>
				<td><%=mobile%></td>
				<td><%=state%></td>
				<td><%=district%></td>
				<td><%=localAddress%></td>
				<td><%=amount%></td>
				<td><%=email%></td>
				<!-- <th>pending</th>
				<a href="###"><th>CONFIRM</th></a> -->
				
			</tr>
			<%
			}
			} catch (SQLException e) {
			e.printStackTrace();
			} finally {

			try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			} catch (SQLException e) {
			e.printStackTrace();
			}
			}
			%>
		</tbody>
	</table>
</body>
</html>
