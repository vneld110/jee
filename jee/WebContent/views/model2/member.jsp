<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원 정보관리 페이지</title>
</head>
<body>
		<fieldset>		
		<legend>회원가입</legend>
		<table>
			<tr>
				<td>이름</td>
				<td>
					<%-- <%= request.getAttribute("name") %> --%>
					${name}
				</td>
			</tr>
			<tr>
				<td>ID</td>
				<td>
					${id}
				</td>
			</tr>
			<tr>
				<td>나이</td>
				<td>
					${age}
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					${address}
				</td>
			</tr>

		</table>
		</fieldset>
</body>
</html>