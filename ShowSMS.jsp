<%@ page import="java.sql.*"%>
<%@ page import="DbConnection.*"%>
<html>
<head>
<title>Order List</title>
<style>
* {
	padding: 0px;
	margin: 0px;
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
	opacity: 0.6;
	color: white;
	border-color: black;
}

.order {
	display: flex;
	justify-content: center;
	align-items: center;
	background: crimson;
	color: white;
	font-size: 20px;
}

th {
	background: green;
	opacity: 0.5;
}
</style>
</head>
<body>

	<div class="order">
		<h2>Show Contacts Message List</h2>
	</div>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Message</th>
			</tr>
		</thead>
		<tbody>
			<%
			ConnectionDb ConnDb = new ConnectionDb();
			Statement stmt = null;
			String query = "SELECT * FROM contactsms";
			ResultSet rs = null;

			try {
				stmt = ConnDb.OrderListGet();
				rs = stmt.executeQuery(query);

				while (rs.next()) {
					String name = rs.getString("name");
					String email = rs.getString("email");
					String Sms = rs.getString("SMS");
			%>
			<tr>

				<td><%=name%></td>
				<td><%=email%></td>
				<td><%=Sms%></td>
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
