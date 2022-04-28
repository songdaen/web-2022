<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>

<%
		//DB 연동 드라이버 로드
	  //Class.forName("org.mariadb.jdbc.Driver");
		
	//DBCP로 변경 (커넥션 얻기)
			//Context 객체 생성
			Context initCtx = new InitialContext();
			//JNDI에 등록된 Naming 자원들을 모두 가져옴
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			//DataSource 객체 얻어냄
			DataSource ds = (DataSource)envCtx.lookup("jdbc/findme");
			//Connection객체 얻어냄
			Connection con = ds.getConnection();
	  
	  //생성된 연결을 통해 SQL문 실행 의뢰 준비
	  String sql = "select * from login order by id";
	  
	  Statement stmt = con.createStatement();
	  ResultSet rs = stmt.executeQuery(sql);

%>


<jsp:include page="insert_insert.jsp" flush="true"/>
    

<body>

<div class="container">

<h2>list</h2>

   <table class="table table-striped">
   <tr>
      <th>id</th>
      <th>name</th>
      <th>pwd</th>
   </tr>
   
   <tr>
   
<%
   //반환데이터 출력하기
   while(rs.next()){
      String id = rs.getString("id");
      String name = rs.getString("name");
      String pwd = rs.getString("pwd");
%>

      <td><a href="updateForm.jsp?id=<%=id%>"><%=id %></a></td>
      <td><%=name %></td>
      <td><%=pwd %></td>
   </tr>
   
<%
   }
%>

   </table>
   <button type="submit" class="btn btn-primary" onclick="location.href='index.jsp'">MAIN</button>
      
   </div>
   
<%
   //객체 해지
   rs.close();
   con.close();
   stmt.close();
%>

   <!-- <script>alert("Connection Success");</script> -->
   
</body>
</html>