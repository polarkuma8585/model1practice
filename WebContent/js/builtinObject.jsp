<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>builtinObject.jsp</title>
<script type="text/javascript">
	window.onload = init; // 페이지가 모두 로드 된 이후에 실행.

	function init() {

		let btn = document.getElementById("btnCheck");
		// btn.onclick = function(){};
		btn.addEventListener("click", function() {
			//document.getElementById("result").innerHTML = "이벤트 발생";
			
			//입력값 길이 출력
			//var txtbigo = document.getElementById("bigo").value;
			//document.getElementById("result").innerHTML = txtbigo.length;
			var txtbigo = document.getElementById("bigo");
			var divResult = document.getElementById("result");
			//divResult.innerHTML = txtbigo.value.length;
			
			// http://yedam/model
			//divResult.innerHTML += "<br> 마지막경로 / 위치 " + txtbigo.value.lastIndexOf("/");
			//divResult.innerHTML += "<br> 마지막경로명 " + txtbigo.value.substring(txtbigo.value.lastIndexOf("/")+1);
			
			//split 키워드 : 모델, 객체, 스트링
			//var arr = txtbigo.value.split(",");
			//console.log(arr)
			//divResult.innerHTML += "<br>" + arr.length;
			//search, pattern - 정규표현식
			//divResult.innerHTML += "<br> 이메일 체크" + isEmail(txtbigo.value);
			
			//replace : 공백 제거
			txtbigo.value = txtbigo.value.replace(" ","");
			txtbigo.value = txtbigo.value.replace(\/s\g,"");
			
		})
	}
	
	function isEmail(asValue) {
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
	}
</script>
</head>
<body>
	<form>
		<input name="bigo" id="bigo" />
		<button type="button" id="btnCheck">입력값확인</button>
		<div id="result">결과확인</div>
	</form>

</body>
</html>