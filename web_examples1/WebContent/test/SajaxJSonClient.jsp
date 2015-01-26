<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
/* id : realwooks87, pass : tiger8768! */
var key = "ntNeSJuBHCgIW%2F91Owp3ur5RRwUab24jiwlDscYnHakM%2BkOrWynSu8yFHXKuZZBRHSkYtgXO6lgAyLxsn4DeQw%3D%3D";
	$(document).ready(function() {
		var dropHere = $("#drophere");
		$("#getOpenData").click(function(){
			var murl = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?";
				/* murl+="?_type=json&MobileOS=ETC&MobileApp=AppTesting&ServiceKey="+key;
				murl+="&areaCode=35"; */
				murl += "_type=json&ServiceKey="+key;
				murl += "&areaCode=1&MobileOS=ETC&numOfRows=20&pageNo=2&MobileApp=AppTesting";
				alert(murl);
			$.ajax({
				url:murl,
				type:"get",
				success:function(responseTxt, statusTxt, xhr){
					//alert(responseTxt);
					//dropHere.html(JSON.stringify(responseTxt));
					 var itemarr = responseTxt["response"]["body"]["items"]["item"];
					var itemarr = responseTxt.response.body.items.item;
					$.each(itemarr, function(index, item){
						dropHere.append("주소1: "+item.code+" , 주소2: "+item.name+" : <img src='"+item.rnum+"'><br>"); 
					});  
				}
			});
		})
	});
</script>
</head>
<body>
	<h1>한국관광공사 OpenAPI</h1>
	<input type="button" id="getOpenData" value="전송" />
	<div id="drophere"></div>
</body>

</html>