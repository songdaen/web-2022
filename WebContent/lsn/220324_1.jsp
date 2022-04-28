<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Multiply test _1</title>
</head>

<body>

		<%
			request.setCharacterEncoding("utf-8");
			String[] hobby = request.getParameterValues("hobby");
		
				//out.println(hobby[0]);
				//out.println(hobby[1]);
				//out.println(hobby[2]);
		
			for(int i=0; i<hobby.length; i++){
				out.println(hobby[i]);
				
			}
			
			for(String s : hobby){
				out.println(s);
			}
		
		%>										

</body>
</html>


