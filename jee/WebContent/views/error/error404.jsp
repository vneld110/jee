<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>404 에러 발생</title>
</head>
<body>
	<div>
		<img src="<%=request.getContextPath() %>/images/error404.gif" alt="" />
	<div>
<!-- 
	HTTP 프로토콜은 응답 상태 코드를 이용해서 서버의 처리 결과를 웹 브라우저에 알려준다.
	 - 주요 응답 상태 코드
	 	200 : OK
	 	307 : 임시 리다이렉트
	 	400 : 문법 에러
	 	401 : 접근 불가(관리자만 접근가능)
	 	404 : URL에 따른 페이지가 존재하지 않음
	 	405 : 요청된 메소드는 허용 불가(get방식,post방식)
	 	500 : 서버 내부 에러. JSP에서 Exception이 발생한 경우
	 	503 : 서버 부하 ex)디도스 
	 	
	 	JSP가 정상적으로 실행되는 응답코드로 200이 전송되며,
	 	response.sendRedirect()를 이용할 경우 응답코드로 307이 전송된다.
-->
</body>
</html>