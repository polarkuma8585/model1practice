<%@page import="co.yedam.app.board.BoardDto"%>
<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.BoardDao"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*"  %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>

<html> 
<head> <title>�Խ���</title> </head>

<body>
<my:page></my:page>
<my:boardType></my:boardType>
<table width="80%" border=0 > 
     <tr><td align="center" > JDBC �Խ��� </td></tr>
</table><br>

<table width="80%" border=1 cellspacing=0 >
	<tr height=30 bgcolor="#FFFF99" >
	  <th>��ȣ</th><th>����</th><th>�۾���</th><th>�����</th><th>��ȸ</th>
	</tr>

<c:forEach items="${list}" var="dto">
<tr height=28 align=center>
	<td>${dto.getNo()}</td>
	<td><a href=view.jsp?c_no=${dto.getNo()}>${dto.getSubject()}</a></td>
	<td>${dto.getPoster()}</td>
	<td>${dto.getLastpost()}</td>
	<td>${dto.getViews()}</td>
</tr>
</c:forEach>
<c:if test="${empty list}">
	<tr align="center"><td colspan="5">no data</td></tr>
</c:if>
</table>

<table width="80%" border=0 >
	<tr><td align="right"><a href="boardCreateForm"> �۾���</a> </td> </tr>
</table>
<%=application.getRealPath("/") %> <br>
<%=request.getHeader("User-Agent") %><br>
<%=request.getContextPath() %><br>
<img src="<%=request.getContextPath() %>/ing/a.jpg"/>

</body>
</html>