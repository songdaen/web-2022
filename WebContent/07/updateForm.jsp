 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
%>
    
<%
		String id = request.getParameter("id");
%>

<%
		//jdbc 연동 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//커넥션 객체 얻기 => 연결 객체 생성
		String url ="jdbc:mariadb://localhost:3306/daendb";
		String user ="daen";
		String password ="1111";
		Connection con = DriverManager.getConnection(url, user, password);
		
		//sql문
		String sql = "select * from login where id=?";
		
		//sql문 실행
		PreparedStatement pstmt = con.prepareStatement(sql);

		
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();//rs = data
		String name ="";
		String pwd ="";
				
		if(rs.next()){
			name = rs.getString("name");
			pwd = rs.getString("pwd");
			
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
%>

<jsp:include page="insert_insert.jsp" flush="true"/>

<body>

<div class="container">

<h2>SIGN UP</h2>
   <form action="updatePro.jsp" method="get"> 
   
     <div class="form-group">
   	  ID :
      <input type="text" class="form-control" name="id" value="<%=id%>">
      </div>
      
      <div class="form-group">
      NAME :
      <input type="name" class="form-control" name="name" value="<%=name%>">
      </div>
      
      <div class="form-group">
      PASSWORD :
      <input type="password" class="form-control" name="pwd" value="<%=pwd%>">
      </div>
      
   		<button type="button" class="btn btn-primary" onclick="location.href='delete.jsp?id=<%=id%>'">DELETE</button>
   		<br>
      <button type="submit" class="btn btn-primary">CHANGE INFO</button>
      <br>
   		<button type="button" class="btn btn-primary" onclick="location.href='list.jsp'">GO BACK TO LIST</button>
   
   </form>
   
</div>

</body>
</html>