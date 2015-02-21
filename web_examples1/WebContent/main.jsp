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
	<%@ include file = "/../fullcalendar-2.2.6/demos/agenda-views.html" %>	
	<jsp:include page="/footer.jsp"/>
</body>
</html>