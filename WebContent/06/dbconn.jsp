<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
    
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>DB connect</title>
</head>

<body>
<%

	//1. load jdbc driver
		Class.forName("org.mariadb.jdbc.Driver");

	//2. get connection
		
		String url = "jdbc:mariadb://localhost:3306/daendb";//connection info
		String user="daen";
		String password="1111";
		Connection con = DriverManager.getConnection(url, user, password);//announce using db -> using variable
	
	//3. connect DB
		Statement stmt = con.createStatement();
		out.println("connect");
		
	//4. disconnect
		stmt.close();
		con.close();

%>
</body>
</html>