<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup.jsp</title>
<script>
	window.addEventListener("load", function() {
		document.addEventListener("click", function(e) {
			if (e.target.tagName == 'SPAN') {
				e.preventDefault();
				console.dir(e.target);
				//console.dir(this);
				var src = e.target.parentNode;
				var addr = src.getElementsByTagName("span");
				console.log(addr[0].innerHTML);
				console.log(addr[1].innerHTML);
// 				console.log(e.target.innerHTML);
				var param = {addr1: addr[0].innerHTML,
							 addr2: addr[1].innerHTML};
				// 부모창에 접근해 부모창의 값 변경 (직접)
// 				opener.frm.addr.value = e.target.innerHTML;
				// 부모창에 접근해 부모창의 값 변경 (함수호출)
				opener.setAddr(param);
// 								 window.close();
				// 				 opener window self
			}
		});
	});
</script>
</head>
<body>
	<div id="a">
		<a href="#"><span>대구</span><span>중구</span></a>
		<a href="#"><span>서울</span><span>강남구</span></a> 
		<a href="#"><span>부산</span><span>연산구</span></a>
	</div>
</body>
</html>
