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
			String[] lan = request.getParameterValues("lan");
			String[] hobby = request.getParameterValues("hobby");
			
	
			for(int i=0; i<lan.length; i++){
				out.println(lan[i]+"");
				
				
			}
	%>
	<br>
			
	<%
			for(int i=0; i<hobby.length; i++){
				out.println(hobby[i]+"");
				
				
			}
			//for(String hobby:hobby){
			//	out.println()
				
			//}
		%>	
			<br>
			
		
</body>
</html>

<!-- 4장 연습 첫번째 문제 과제임 -->