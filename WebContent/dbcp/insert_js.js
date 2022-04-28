/**
공백입력제거

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

특수문자 사용불가
var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

if( special_pattern.test(str.value) == true ){
  alert('특수문자는 사용할 수 없습니다.');
 return false;
 * 
 */

