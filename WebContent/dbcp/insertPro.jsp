<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
<%
		
		request.setCharacterEncoding("utf-8");
		
		//사용자 클라이언트에서 전달된 데이터
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		//DBCP로 변경 (커넥션 얻기)
				//Context 객체 생성
				Context initCtx = new InitialContext();
				//JNDI에 등록된 Naming 자원들을 모두 가져옴
				Context envCtx = (Context)initCtx.lookup("java:comp/env");
				//DataSource 객체 얻어냄
				DataSource ds = (DataSource)envCtx.lookup("jdbc/findme");
				//Connection객체 얻어냄
				Connection con = ds.getConnection();

		//sql문
		String sql = "insert into login(id, name, pwd) values(?, ?, ?)";
		
		//sql문 실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		
		int i = pstmt.executeUpdate();
		
		//연결해지
		pstmt.close();
		con.close();
		
		response.sendRedirect("list.jsp");
		
%>
    
<jsp:include page="insert_insert.jsp" flush="true"/>

	<body>
	<%=i %> 개의 데이터가 입력되었습니다
	</body>
	
</html>