<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<script type="text/javascript">
		function checkForm() {
			var form = document.form;
			
			var name = form.name.value;
			var gender = form.gender.value;
			var birth = form.birth.value;
			var phoneNum = form.phoneNum.value;
			var job = form.job.value;
			
			if ((name || birth || phoneNum) == "") {
				alert("빈칸을 채워주세요.")
			} 
			else if(gender == "") {
				alert("성별을 선택해주세요.")	
			}
			else if((isNaN(birth) || isNaN(phoneNum)) == true) {
				
				if(isNaN(birth) == true) {
					alert("생년월일은 숫자만 입력 가능합니다.")
					document.getElementById('birth').focus();
				}
				else if(isNaN(phoneNum) == true) {
					alert("전화번호는 숫자만 입력 가능합니다.")
					document.getElementById('phoneNum').focus();
				}
			}
			else if(job == '--')
			{
				alert("직업을 선택해주세요.")
				document.getElementByName('job').focus();
			}
			else {
				form.submit();
			}
		}
	
	</script>
	<body>
	
		<form action="Sign_1.jsp" method="post" name="form">
				
		    <p>성함
		    	<input type="text" name="name"><br>
		    </p>
		    
		    <p>성별<br>
				    &nbsp;&nbsp;&nbsp;여성 <input type="radio" name="gender" value="female">
				    &nbsp;&nbsp;&nbsp;남성 <input type="radio" name="gender" value="male"><br>
			  </p>
			  
			  <p>생년월일<br>
				    <input type="text" name="birth" id="birth"><br>
			  </p>
			  
			  <p>전화번호<br>
				    <input type="text" name="phoneNum" id="phoneNum"><br>
			  </p>
			  
				<p>직업<br>
			  	<select name="job">
			  		<option>--
			  		<option value="student">학생
			  		<option value="worker">근로자
			  		<option value="nerd">무직
			  	</select>
			  </p>
			  
		    <input type="button" value="회원가입" onclick="checkForm()"> 
		</form>
		
	</body>
</html>