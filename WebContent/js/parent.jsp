<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>parent.jsp</title>
<script>
 window.addEventListener("load",function(){
	 btnAddr.addEventListener("click", function(){
		 window.open("popup.jsp","addr","width=500,height=200");
		 // 이름 지정시 _blank 기본으로 새로운 창으로 띄우고 새로운 창을 계속해서 생성하지 않음.
	 })
 })
 function setAddr(p){
	 document.frm.addr.value = p.addr1 + p.addr2;
 }
</script>
</head>
<body>
	<form id="frm" name="frm">
		주소 <input name="addr">
		<button type="button" id="btnAddr">주소검색</button>
		
	</form>
</body>
</html>