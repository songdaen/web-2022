<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="insert_insert.jsp" flush="true"/>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">사용자 입력</h2>
		<hr/>
		<form action="insertPro.jsp" method="post">
		  <div class="form-group">
	      <label for="id">ID:</label>
	      <input type="text" class="form-control" id="id" name="id">
	    </div>
	    <div class="form-group">
	      <label for="name">NAME:</label>
	      <input type="text" class="form-control" id="name" name="name">
	    </div>
	    <div class="form-group">
	      <label for="pwd">PASSWORD:</label>
	      <input type="password" class="form-control" id="pwd" name="pwd">
	    </div>
	    <br>
	    <div class="text-center">
				<button  type="submit" class="btn btn-secondary">등록</button>
			</div>
		</form>
	</div>
</body>
</html>