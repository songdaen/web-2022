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
	
		String name = request.getParameter("name");	
		String gender  = request.getParameter("gender");	
		if (gender.equals("female")) { gender = "여성"; }
		else if (gender.equals("male")) { gender = "남성"; }
		String birth = request.getParameter("birth");	
		String phoneNum = request.getParameter("phoneNum");	
		String job = request.getParameter("job");
		if (job.equals("student")) { job = "학생"; }
		else if (job.equals("worker")) { job = "근로자"; }
		else if (job.equals("nerd")) { job = "무직"; }
			
	%>	
	<h1>회원가입을 축하드립니다. <%=name%>님!</h1>
	<p> 성함 : <%=name%><br></p>
	<p> 성별 : <%=gender%><br></p>
	<p> 생년월일 : <%=birth%><br></p>
	<p> 전화번호 : <%=phoneNum%><br></p>
	<p> 직업 : <%=job%><br></p>
		
</body>
</html>