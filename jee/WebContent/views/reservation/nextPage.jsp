<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>넘어온 페이지</title>
</head>
<body>
	<div>
		영화 = <%= request.getAttribute("movie") %> <br />	
		상영관 = <%= request.getAttribute("theater") %> <br />	
		날짜 = <%= request.getAttribute("date") %> <br />	
		시간 = <%= request.getAttribute("time") %> <br />	
	<p></p>
	</div>
	 
	
</body>
</html>