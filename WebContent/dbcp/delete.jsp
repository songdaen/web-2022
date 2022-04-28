<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>

<%
		request.setCharacterEncoding("utf-8");
			
		// DB 연동 드라이버 로드
		//Class.forName("org.mariadb.jdbc.Driver");
		
		//DBCP로 변경 (커넥션 얻기)
		//Context 객체 생성
		Context initCtx = new InitialContext();
		//JNDI에 등록된 Naming 자원들을 모두 가져옴
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		//DataSource 객체 얻어냄
		DataSource ds = (DataSource) envCtx.lookup("jdbc/findme");
		//Connection객체 얻어냄
		Connection con = ds.getConnection();

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