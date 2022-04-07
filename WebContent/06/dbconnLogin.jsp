<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import = "java.sql.*"
		
		
%>

 <%

		//1. jdbc Driver
		Class.forName("org.mariadb.jdbc.Driver");

		//2. get connection
		String url = "jdbc:mariadb://localhost:3306/daendb";
		String user = "daen";
		String password ="1111";
		Connection con = DriverManager.getConnection(url, user, password);

		//3. sql connection set
		String sql = "select * from login order by id";
		Statement stmt = con.createStatement();//statement  -> sql -> o.o
		ResultSet rs = stmt.executeQuery(sql);//rs = data
		
		%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Login Data</title>
</head>

<body>
<div class="container">
	<table class="table table-border">
		<tr>
		<th>id</th>
		<th>pw</th>
		</tr>

<tr>
		
<% 
		//4. print refund data
		//using next method (cursor) to bring database. while => repeat the method to show all the database
		while(rs.next()){
			String id = rs.getString("id");
			String pwd = rs.getString("pwd");
%>
			
			<td><%=id %></td>
			<td><%=pwd %></td>
		</tr>
<%
		}
		
%>
</table>
</div>
<%
		//5. disconnect
		rs.close();
		stmt.close();
		con.close();

%>
</body>
</html>