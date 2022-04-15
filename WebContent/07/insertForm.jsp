<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<jsp:include page="insert_insert.jsp" flush="true"/>

<script type="text/javascript">
//자바스크립트 인서트 폼에 공백 학인하는 부분!
function check(){
var str = document.getElementById('id','name','pwd');

if( str.value == '' || str.value == null ){
    alert('공백 입력됨');
    return false;
}

var blank_pattern = /^\s+|\s+$/g;
if( str.value.replace( blank_pattern, '' ) == "" ){
    alert('공백 입력!');
    return false;
}

var blank_pattern = /[\s]/g;
if( blank_pattern.test( str.value) == true){
  alert('공백은 사용불가');
  return false;
}

//특수문자 사용불가
//var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

//if( special_pattern.test(str.value) == true ){
//  alert('특수문자는 사용할 수 없습니다.');
// return false;
}


}

</script>

<body>

<div class="container">

<h2>LOGIN</h2>
   <form action="insertPro.jsp" method="post"> 
   
     <div class="form-group">
   	  ID :
      <input type="text" class="form-control" name="id" id="id">
      </div>
      
      <div class="form-group">
      NAME :
      <input type="name" class="form-control" name="name" id="name">
      </div>
      
      <div class="form-group">
      PASSWORD :
      <input type="password" class="form-control" name="pwd" id="pwd">
      </div>
      
      <button type="submit" class="btn btn-primary" onclick="check()">Submit</button>
      
   </form>
</div>
   
</body>
</html>