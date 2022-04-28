<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	
	<%
			request.setCharacterEncoding("utf-8");
	
			String writer = request.getParameter("writer");	
			String gender = request.getParameter("gender");
			if(gender.equals("female")) {	gender = "여성";	} 
			else { gender = "남성"; }
			String content = request.getParameter("content");
			
			out.println("작성자 : "+writer);
	%>
	<br>
	
	<%
			out.println("성별 : "+gender);
	%>
	<br>
	
	<%
			out.println("내용 : "+content);
	%>
	<br>
			
		
</body>
</html>