<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		text-align:center;
	}
	a {
		color: blue;
	}
</style>


</head>
<body>
	<jsp:include page="/header.jsp"/>
	<a href = "<%=request.getContextPath() %>/FrontServlet?cmd=viewBoard">게시판 사용하기</a><br>
	<img width=1000px src="http://cfs15.tistory.com/original/16/tistory/2009/02/24/21/39/49a3ea934d631">

	<jsp:include page="/footer.jsp"/>
</body>
</html>