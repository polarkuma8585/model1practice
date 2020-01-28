<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arrayTest2.jsp</title>
</head>
<body>
<input type="text" id="no">
<input type="text" id="username">
<button type="button" id="btnAdd">추가</button>
<script>
	btnAdd.addEventListener("click", funcAdd);
	var arr = [];  // ArrayList
	function funcAdd(){
		let obj = {}; //객체 생성 = Dto
		obj.no = no.value;
		obj.username = username.value; 
		arr.push(obj);
		//[{no:1, username:'홍길동'},{},{}]
		console.dir(JSON.stringify(arr));
		//console.log(arr);
	}
</script>
</body>
</html>