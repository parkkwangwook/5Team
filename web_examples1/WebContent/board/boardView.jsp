<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<page import = "java.util.*, com.andy.mysite.entity.*;">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		font-size: 9pt;
	}
	body {
		text-align: center;
		margin: 10px 20px;
	}
</style>
</head>
<body>
	<table align = "center" border = "1" summary = "게시판 목록">
		<caption>게시판 목록</caption>
			<colgroup>
				<col width = "50" />
				<col width = "300" />
				<col width = "80" />
				<col width = "100" />
				<col width = "70" />
			</colgroup>
			<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록 일시</th>
				<th>조회수</th>
			</tr>
			</thead>
			<tbody>
				<c:if test="${empty comment }">
				<tr>
					<td align = "center" colspan="5">등록된 게시물이 없습니다.</td>
				</tr>
				</c:if>
				<c:if test = "${!empty comment }">
					<c:forEach var = "comments" items = "${comment }">
					<tr>
						<td align = "center">${comments.commentNumber}</td>
						<td><a href = "<%=request.getContextPath() %>/FrontServlet?cmd=contentView&value=${comments.commentNumber }">${comments.commentContent }
						<input type = "hidden" id = "value" name = "value" value = "${comments.commentNumber }" /></a></td>
						<td align = "center">${comments.id }</td>
						<td align = "center">${comments.regDate }</td>
						<td align = "center">0</td>
					</tr>
					</c:forEach>
				</c:if>
			</tbody>
			<tfoot>
				<tr>
					<td align = "center" colspan = "5">1</td>
				</tr>
			</tfoot>
		</table>
	<hr>
</body>
</html>