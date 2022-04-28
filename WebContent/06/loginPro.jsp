<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
		<%
		
		request.setCharacterEncoding("utf-8");
		
		
		//사용자 클라이언트에서 전달된 데이터
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//jdbc 드라이브 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//커넥션 객체 얻기
		String url ="jdbc:mariadb://localhost:3306/daendb";
		String user ="daen";
		String password ="1111";
		Connection con = DriverManager.getConnection(url, user, password);


		//sql문
		String sql = "insert into login(id, pwd) values(?, ?)";
		//Statement stmt = con.createStatement();//statement  -> sql -> o.o
		//ResultSet rs = stmt.executeQuery(sql);//rs = data
		
		//sql문 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		
		//Statement stmt = con.createStatement();
		//int i = stmt.executeUpdate(sql);
		int i = pstmt.executeUpdate();
		
		//연결해지
		pstmt.close();
		con.close();
		
		%>
    
    
<!DOCTYPE html>
	<html>
	<head>
	
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<title>Login_pro</title>
	
	</head>
	
	<body>
	
		<%=i %> 개의 데이터가 입력되었습니다
	
	</body>
	</html>