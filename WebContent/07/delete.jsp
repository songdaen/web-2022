<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>

<%
		request.setCharacterEncoding("utf-8");
			
		// DB 연동 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		// 연결 객체 생성
		String url ="jdbc:mariadb://localhost:3306/daendb";
		String user ="daen";
		String password ="1111";
		Connection con = DriverManager.getConnection(url, user, password);
		
		// 생성된 연결을 통해 SQL 문 실행 의뢰 준비
		String sql = "delete from login where id=?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		
		// SQL 문 실행
		int i = pstmt.executeUpdate();
		
		// 객체 해제
		pstmt.close();
		con.close();

%>    

<jsp:include page="insert_insert.jsp" flush="true"/>

<body>
	
	<script>
		 let ans = alert("삭제됨");
		 if (!ans){
			 location.href="list.jsp";
		 }
	</script>

</body>
</html>