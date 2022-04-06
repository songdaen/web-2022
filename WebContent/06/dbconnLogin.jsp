<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import = "java.sql.*"
%>
    
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Login Data</title>
</head>

<body>
<%

		//1. jdbc Driver
		Class.forName("org.mariadb.jdbc.Driver");

		//2. get connection
		String url = "jdbc:mariadb://localhost:3306/daendb";
		String user = "daen";
		String password ="1111";
		Connection con = DriverManager.getConnection(url, user, password);

		//3. sql connection set
		String sql = "select * from login";
		Statement stmt = con.createStatement();//statement  -> sql -> o.o
		ResultSet rs = stmt.executeQuery(sql);//rs = data
		
		//4. print refund data
		//using next method (cursor) to bring database. while => repeat the method to show all the database
		while(rs.next()){
			out.println(rs.getString("id"));
			out.println(rs.getString("pwd"));
			out.println("<br>");
		}
		
		//5. disconnect
		rs.close();
		stmt.close();
		con.close();

%>
</body>
</html>