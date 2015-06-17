<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>에러페이지</title>
</head>
<body>
	에러 타입 : <%= exception.getClass().getName() %> <br />
	에러 메시지 : <%= exception.getMessage() %> <br />
	<img src="<%=request.getContextPath() %>/images/errorImg.jpg" alt="" />
</body>
</html>