<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<%
		
		request.setCharacterEncoding("utf-8");
		
		//jdbc 드라이브 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//커넥션 객체 얻기
		String url ="jdbc:mariadb://localhost:3306/daendb";
		String user ="daen";
		String password ="1111";
		Connection con = DriverManager.getConnection(url, user, password);

		//생성된 연결을 통해 SQL문 실행 의뢰 준비
		String sql = "update login set name=?, pwd=? where id=?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("name"));
		pstmt.setString(2, request.getParameter("pwd"));
		pstmt.setString(3, request.getParameter("id"));
		
		// SQL 문 실행
		int i = pstmt.executeUpdate();
		
		//연결해지
		pstmt.close();
		con.close();
		
%>
    
<jsp:include page="insert_insert.jsp" flush="true"/>

	<body>
		
		<script>
			let ans = alert("변경완료");
			if(!ans){
				location.href="list.jsp";
			}
		</script>
		
	</body>
	</html>