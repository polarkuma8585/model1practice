<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.BoardDto"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/elTest.jsp</title>
</head>
<body>
속성읽기<br>
session의 name 속성<br>
표현식 : <%=session.getAttribute("name") %><br>
EL : ${sessionScope.name}<br>
<hr>
application의 name <br>
표현식 : <%=application.getAttribute("name") %><br>
EL : ${applicationScope.name}<br>
<hr>
<!-- 표현식은 모두 형변환이 필수 -->
board의 제목<br>
표헌식 : <%=((BoardDto)request.getAttribute("board")).getSubject() %><br>
EL : ${board.subject }<br>
EL : ${board.getSubject() }<br>
<hr>
boardList의 첫번째 작성자<br>
<!-- 형변환후 .get()으로 배열의 인덱스 선택 -->
표헌식 : <%=((List<BoardDto>)request.getAttribute("boardList")).get(0).getPoster() %><br>
표현식2:	<%
		List<BoardDto> bl = (List<BoardDto>)request.getAttribute("boardList");
		BoardDto dto = bl.get(0);
		out.print(dto.getPoster());
		%><br>
EL : ${boardList[0].poster}<br>
<hr>
userInfo의 dept 키의 값<br>
표현식 : <%=((Map<String,Object>)request.getAttribute("userInfo")).get("dept")%><br>
EL : ${userInfo.dept}<br>
<hr>
쿠키정보<br>
표현식 : <% Cookie[] cookies = request.getCookies();%><br>
EL : ${cookie.openYn.value}<br>		
<hr>
파라미터(배열)<br>
<%-- 표현식 : <%=request.getParameterValues("hobby")[0]%><br> --%>
EL : ${paramValues.hobby[0] }<br>
파라미터<br>
표현식 : <%=request.getParameter("name")%><br>
EL : ${param.name}<br>
<hr>
헤더정보<br>
표현식 : <%=request.getHeader("User-Agent")%><br>
EL : ${header["User-Agent"]}<br>
<hr>
Request<br>
표현식 : <%=request.getContextPath() %><br>
EL : ${pageContext.request.contextPath }<br>
</body>
</html>