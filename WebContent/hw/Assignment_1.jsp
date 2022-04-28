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
			double kor = Double.parseDouble(request.getParameter("kor"));			
			double eng = Double.parseDouble(request.getParameter("eng"));
			double math = Double.parseDouble(request.getParameter("math"));
			
			double sum = kor+eng+math;
			double avg = ((kor+eng+math)/3);
				
			if(kor == (long) kor) {
				out.println("국어 점수 : "+String.format("%d", (long)kor));
			}
			else {
				out.println("국어 점수 : "+String.format("%.2f", kor));
			}
	%>
	<br>
			
	<%
			if(eng == (long) eng) {
				out.println("영어 점수 : "+String.format("%d", (long)eng));
			}
			else {
				out.println("영어 점수 : "+String.format("%.2f", eng));
			}
	%>	
	<br>
	
	<%
			if(math == (long) math) {
				out.println("수학 점수 : "+String.format("%d", (long)math));
			}
			else {
				out.println("수학 점수 : "+String.format("%.2f", math));
			}
	%>	
	<br>
		
	<%
			if(sum == (long) sum) {
				out.println("총 점수 : "+String.format("%d", (long)sum));
			}
			else {
				out.println("총 점수 : "+String.format("%.2f", sum));
			}
	%>	
	<br>
	
	<%
			if(avg == (long) avg) {
				out.println("평균 점수 : "+String.format("%d", (long)avg));
			}
			else {
				out.println("평균 점수 : "+String.format("%.2f", avg));
			}
	%>	
	<br>
			
		
</body>
</html>