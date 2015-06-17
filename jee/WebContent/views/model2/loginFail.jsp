<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 실패 시 보여지는 페이지</title>
</head>
<body>
	<%= request.getAttribute("msg") %>
	<!-- 로그인 실패의 원인이 ID값인지 비번값인지 .. -->
	
</body>
</html>