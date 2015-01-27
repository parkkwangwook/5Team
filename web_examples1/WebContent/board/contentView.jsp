<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		var xhr = new XMLHttpRequest();
		var murl = "<%=request.getContextPath() %>/FrontServlet?cmd=addReply"
		$("#send").click(function(){
			alert("값 : "+$("#addReply"));	
			/* alert("확인좀해보자" + $("#count")) */
			$.ajax({
			url:murl,
			type:"post",
			data:{message:$("#ReplySpace").val()},
			contentType:"application/x-www-form-urlencoded; charset=UTF-8",
			
	 		success:function(responseTxt, statusTxt, xhr) {
					$("#content").append(xhr.responseText + "<hr>"); 
					/* alert(document.querySelector("#content").innerHTML); */
					alert("전송 완료");				
		 		}
		 	});
		});
	});
	</script>
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<table align = "center" border = "1" summary = "게시판 내용">
		<caption>게시판 내용</caption>	
		<colgroup>
			<col width = "100" />
			<col width = "500" />
		</colgroup>
		<tbody>
			<tr>
				<th align = "center">제목</th>
				<td>제목~~~</td>
			</tr>
			<tr>
				<th align = "center">작성자</th>
				<td>${PersonBoard.id}</td>
			</tr>
			<tr>
				<td colspan = "2" align = "center">	${PersonBoard.commentContent}</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td align = "left" colspan = "2">댓글내용.</td>
			</tr>
				<%-- <c:if test="${empty reply }">
				<tr>
					<td align = "center" colspan="2">등록된 댓글이 없습니다.</td>
				</tr>
				</c:if>
				<c:if test = "${!empty reply } " > --%>
				<%
					int count = 1;
				%>
					<c:forEach var = "replys" items = "${reply }">
					<tr>
						<td colspan = "2">${replys.replyContent }-----------${replys.id }
						<input type = "hidden" id = "value" name = "value" value = "${comments.commentNumber }" />
						<a href = "<%=request.getContextPath() %>/FrontServlet?cmd=deleteReply&replyNo=${replys.replyNo }&commentNumber=${PersonBoard.commentNumber }" >
						<input type = "button" id = "deleteB" name = "deleteB" value = "삭제" />
						</a>
						<%-- <input type = "hidden" id = "countNo" name = "countNo" value = "<%=count%>"/> --%>
						</td>
					</tr>
					</c:forEach>
					
				<%-- </c:if> --%>
				<!--대체 왜 .... c:if가안먹히냐?  -->
				<%-- <c:if test = "${!empty addReply }"> --%>
					

				<tr>
					<td colspan = "2"><div id = "content"></div>
					<a href = "<%=request.getContextPath() %>/FrontServlet?cmd=deleteReply&replyNo = ${replys.id }">
					<input align = "right" type = "button" id = "deleteB" name = "deleteB" value = "삭제" />
					</a>
					</td>						
				</tr>
					
				<%-- </c:if> --%>
			<!-- </tr> -->
<!-- 			<tr>
				<td align = "center" colspan = "2"><input type = "text" id = "inputReply" name = "inputReply"></td>
			</tr> -->
		</tfoot>
		</table>
		<center>
<%-- 		<form method="post" action="<%=request.getContextPath() %>/FrontServlet"> --%>
			<h3>댓글 작성</h3>			
				<textarea rows = "3" cols = "60" id = "ReplySpace" name = "ReplySpace"></textarea>
				<input type = "hidden" id = "cmd" name = "cmd" value = "addReply"/>
				<input type = "button" id = "send" value = "전송"/>
		<!-- </form> -->
		</center>
		<p>
			<input type="button" value="목록" onclick="goUrl('boardList.jsp');" />
			<input type="button" value="수정" onclick="goUrl('boardModifyForm.jsp');" />
			<input type="button" value="삭제" onclick="goUrl('boardProcess.jsp');" />
		</p>
	<jsp:include page="/footer.jsp"/>
</body>
</html>