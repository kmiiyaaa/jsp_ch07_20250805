<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>

	<%
		String mid;
		String mpw;
	%>
	<% 
		request.setCharacterEncoding("utf-8");
	
		mid =request.getParameter("id");
		mpw = request.getParameter("pw");
		
		
		if(mid.equals("tiger") && mpw.equals("12345")) {  // 참이면 로그인 성공
				session.setAttribute("sid", mid);  // 세션에 아이디갑 저장 -> 로그인 성공
				Cookie cookie = new Cookie("cid", mid);  // 쿠키생성 ,  cookie는 기본생성자는 없다 : new Cookie()불가
				response.addCookie(cookie);  // 생성한 쿠키 클라이언트한테 전송  / 서버-> 클라리언트로 보냄 : response에 싣고 보내준다.
				response.sendRedirect("welcome.jsp");
		} else {
				response.sendRedirect("login.jsp");
		}
	
	%>

</body>
</html>