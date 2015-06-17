<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헤더 샘플</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/header.css");
	</style>
</head>
<body>
	<div id="wrap"> <!-- wrap, wrapper 의미로 주어지는 클래스이지만
						 아이디는 body 바로 밑 최상위 div 에게 보통 주어진다. 문법적 의미는 없다. -->
		<header id="top">
		<div id="login">
			<a href="#">login</a>|
			<a href="#">join</a>
		</div>
		<div class="clear"></div>
		<div id="logo">
			<a href="#">
				<img src="<%=request.getContextPath()%>/images/motion.gif" width="250px" height="60px" alt="" />
			</a>
		</div>
		<nav id="topMenu">
			<ul>
				<li><a href="#">HOME</a></li>
				<li><a href="#">COMPANY</a></li>
				<li><a href="#">SOLUTION</a></li>
				<li><a href="#">CUSTOMER CENTER</a></li>
				<li><a href="#">CONTECT US</a></li>
			</ul>
		</nav>
		</header>
		<div class="clear"></div>
	</div>
	<footer>
		<hr />
		<div>
			<pre> 회사소개 : 시들어 그들은 행복스럽고 힘있다. 풍부하게 열락의 보이는 앞이 힘차게 심장은 눈에 듣는다.
			 얼마나 트고, 무엇을 사랑의 힘차게 봄바람이다. 그들에게 위하여 보이는 과실이 유소년에게서 듣는다. 무엇을 가치를 뭇 군영과 몸이 같지 있다.
			</pre>
		</div>
	</footer>
	
</body>
</html>