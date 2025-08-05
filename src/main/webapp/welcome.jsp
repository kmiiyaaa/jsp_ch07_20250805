<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		//쿠키에서 쿠키에 저장된 값 가져오기, 서버->클라이언트 이미 보낸상태, 그 클라이언트(컴퓨터)안에 있는 쿠키 서버가 받아와서 쓰려는상황
		// 쿠키 배열에서 각각의 쿠키에 저장된 값 가져오기
		Cookie[] cookies = request.getCookies();  // 반환타입 : cookie의배열 -> Cookie[]
		
		for(Cookie cookie : cookies){  // 여러개 오기 때문에 하나씩 빼서 쓰려면 for문
			String cValue	= cookie.getValue();  // 쿠키의 값 가져오기
			if(cValue.equals("tiger")) {
				out.println(cValue + "님 로그인 성공 하셨습니다. <br>");
			}
			
		}
		

	
	%>

</body>
</html>