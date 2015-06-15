<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>리스트 태그 2</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/listTag2.css");
	</style>
</head>
<body>
	<h3>리스트형 태그 3가지 종류</h3>
	<div class="listTag">
		<h3>순서없는 리스트 태그</h3>
		<ul>
			<li>UL 목록 1</li>
			<li>UL 목록 2</li>
			<li>UL 목록 3</li>
		</ul>
	</div>
	<div class="listTag">
		<h3>순서있는 리스트 태그</h3>
		<!-- ol>li*3 -->
		<ol>
			<li>OL 목록 1</li>
			<li>OL 목록 2</li>
			<li>OL 목록 3</li>
		</ol>
	</div>
	<div class="listTag">
		<h3>집합 리스트 태그</h3>
		<!-- ol>li*3 -->
		<dl>
			<dt>DL 목록 1</dt>
			<dt>DL 목록 2</dt>
			<dt>DL 목록 3</dt>
		</dl>
	</div>
	
</body>
</html>