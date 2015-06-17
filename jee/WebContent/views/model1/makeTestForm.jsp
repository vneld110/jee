<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>테스트 폼</title>
</head>
<body>
<!-- 
Get 방식 Post 방식 >> 전송 방식의 차이

get  : URL 뒷부분에 물음표(?)와 함께 파라미터를 붙여서 전송.
	    웹 브라우저, 웹 서버, 웹 컨테이너(WAS - 톰캣,제우스,..)에 따라 전송할 수 있는 파라미터 길이의 제한이 있다.
	   post보다 속도 빠름.
post : 데이터 영역을 이용하여 데이터를 전송.
	    웹 브라우저나 웹 서버 등에 상관없이 전송할 수 있는 파라미터 길이의 제한이 없다.
 -->
 	<div>
		폼에 데이터를 입력한 후 '전송'버튼을 클릭하세요.
		<form action="viewParameter.jsp" method="get">
			이 름 : <input type="text" name="name" size="10" /> <br />
			주 소 : <input type="text" name="address" size="30" /> <br />
			좋아하는 동물 : 
				<input type="checkbox" name="pet" value="dog"/>강아지
				<input type="checkbox" name="pet" value="cat"/>고양이
				<input type="checkbox" name="pet" value="pig"/>돼지 <br />
			<input type="submit" value="전송"/>
		</form>
	</div>
</body>
</html>