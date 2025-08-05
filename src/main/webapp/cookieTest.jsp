<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 연습</title>
</head>
<body>

	<%
	 Cookie[] cookies =	request.getCookies();  // 쿠키 가져오기
	 if(cookies != null) {  // 쿠키 없을수도 있으니까 확인하기
	 	for(Cookie cookie : cookies){  // 순서가 어떨지 몰라 index로 가져올 수 없고 for문으로 하나씩 가져온다
	 		out.println(cookie.getName()+"<br>");  // 쿠키의 이름
	 		out.println(cookie.getValue()+"<br>");  // 쿠키의 값
	 		out.println(cookie.getMaxAge()+"<br>");  // -1(기본값),  쿠키의 유효시간 
	 	}
	 }
	
	%>


</body>
</html>