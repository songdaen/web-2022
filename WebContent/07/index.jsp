<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
		import = "java.sql.*"
%>

<jsp:include page="insert_insert.jsp" flush="true"/>

<body>

<div class="container">
	<h2>member program</h2>
	<hr>
	
	<button type="button" class="btn btn-primary" onclick="location.href='list.jsp'">member list</button>
	<button type="button" class="btn btn-primary" onclick="location.href='insertForm.jsp'">member insert</button>
</div>

</body>
</html>