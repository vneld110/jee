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
		ID = <%= request.getAttribute("ID") %> <br />	
		Password = <%= request.getAttribute("Password") %> <br />	
		생년월일 = <%= request.getAttribute("Birth") %> <br />	
		상영중영화 = <%= request.getAttribute("Movie") %> <br />	
		상영관 = <%= request.getAttribute("Theater") %> <br />	
		날짜 = <%= request.getAttribute("Date") %> <br />	
		시간 = <%= request.getAttribute("Time") %> <br />	
		좌석수 = <%= request.getAttribute("Seat") %> <br />	
	<p></p>
	</div>
	 
	
</body>
</html>