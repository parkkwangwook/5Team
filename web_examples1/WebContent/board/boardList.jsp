<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<style>
	body{
		text-align:center;
	}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	
	<%-- $(document).ready(function() {
		var xhr = new XMLHttpRequest();
		var murl = "<%=request.getContextPath()%>/FrontServlet?cmd=viewBoard"
		setInterval(function() {
			$.ajax({
				url:murl,
				type:"get",
				success:function(responseTxt, statusTxt, xhr) {
					document.querySelector("#drophere").innerHTML += xhr.responseText + "<br>";
				}	
			});	
		}, 1000*5);
		
		$("#send").click(function(){
			$.ajax({
			url:murl,
			type:"post",
			data:{message:$("#board").val()},
			contentType:"application/x-www-form-urlencoded; charset=UTF-8",
			
	 		success:function(responseTxt, statusTxt, xhr) {
					document.querySelector("#drophere").innerHTML += xhr.responseText + "<br>";	
					alert("전송 완료");				
		 		}
		 	});
		});
	});  --%>

</script>
</head>
<body>
	<jsp:include page="/header.jsp"/>
	좋은 글 많이 보고 가세요.<hr>

	<jsp:include page="/board/boardView.jsp"/>
	<form method="post" action="<%=request.getContextPath() %>/FrontServlet">
		<fieldset>
			<legend>게시글 작성</legend>
			<textarea rows = "20" cols = "150" id = "board" name = "board"></textarea>
			<input type = "hidden" id = "cmd" name = "cmd" value = "addBoard"/>
			<input type = "submit" id = "send" value = "전송"/>
		</fieldset>
	</form>
		<jsp:include page="/footer.jsp"/>
</body>
</html>