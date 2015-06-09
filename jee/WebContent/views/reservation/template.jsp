<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@IMPORT url("template.css");	
</style>
</head>
<body>

<%-- 주석 --%>
<!-- html주석 -->
<% /* 주석 (ctrl+shift+/) */ %>

	<table class="tableClass"> 
	<% /* - css와 분리 
		  - {속성 : 값} */%>
		<tr class = "trClass">
			<td class="tdClass"> 필 드 </td>
			<td class="tdClass"> 입력값 </td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">ID</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">Password</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">생년월일</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">상영중영화</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">상영관</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">날짜</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">시간</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<tr class = "trClass">
			<td class="tdClass2">좌석수</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
		<% /* = <tr style="border: 1px solid black;height: 50px;">*/ %>
		<tr class = "trClass">
			<td class="tdClass2">관람연령</td>
			<td class="tdClass2">
				<input type="text" style="width: 350px">
			</td>
		</tr>
	
			
	</table>
</body>
</html>