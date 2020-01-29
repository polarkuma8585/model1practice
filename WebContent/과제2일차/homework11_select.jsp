<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>homework1_select.jsp</title>
<script>
	window.addEventListener("load", function() {
		//확인 버튼 이벤트 		
		btn.addEventListener("click", function() {
			//선택과목 수와 선택과목명을 div에 출력(다중선택이 가능함)
			if (subject.selectedIndex > -1) {
				opt = subject.selectedOptions;
				result.innerHTML += "선택한 option 개수는 " + opt.length;
				opt.text = subject.selectedOptions.text;
				var len = opt.length;
				for(i=0; i < len; i++){
					result.innerHTML += "<br> 선택한 option 이름은 " + opt[i].text;	
				}
			}
		});
	});
</script>
</head>
<body>
	<select id="subject" multiple="multiple" size="5">
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">스프링
	</select>
	<button id="btn">확인</button>
	<div id="result"></div>
</body>
</html>