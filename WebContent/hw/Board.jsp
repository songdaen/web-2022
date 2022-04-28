<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
	
		<form action="Board_1.jsp" method="get">
				
		    <p>작성자
		    	<input type="text" name="writer"><br>
		    </p>
		    
		    <p>성별<br>
				    &nbsp;&nbsp;&nbsp;여성 <input type="radio" name="gender" value="female">
				    &nbsp;&nbsp;&nbsp;남성 <input type="radio" name="gender" value="male"><br>
			  </p>
			  
				<p>내용<br>
			  	<textarea name="content" rows="20" cols="50"></textarea>
			  </p>
		    <input type="submit" value="확인"> 
		</form>
		
	</body>
</html>