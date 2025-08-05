<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 유효시간 설정</title>
</head>
<body>

	<%
		Cookie[] cookies =	request.getCookies();
		for(Cookie cookie : cookies){
			cookie.setMaxAge(60*60*24*7);  // 쿠키 유효시간 세팅 (초단위) -> 7일로 설정
			response.addCookie(cookie);
		}
		
		for(Cookie cookie : cookies){  // 모든 쿠키 삭제
			cookie.setMaxAge(0);  // 유효시간:0 -> 쿠키 삭제
			response.addCookie(cookie);  // 클라이언트에게 변경된 쿠키 다시 보내기!! 잊지말기!
		}
		

	
	
	%>

</body>
</html>