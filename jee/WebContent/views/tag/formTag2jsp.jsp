<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Form 태그 2</title>
</head>
<body>
	<form action="">
		<fieldset> <!-- 박스 - legend 는 박스 윗줄 내용 -->
			<legend>체크박스 / 라디오 버튼</legend>
			어벤저스 캐릭터를 모두 고르시오. <br /> <!-- name 값이 같아야함 -->
			<input type="checkbox" name="avengers" value="iron" checked="checked" />아이언맨
			<input type="checkbox" name="avengers" value="hulk"/> 헐 크
			<input type="checkbox" name="avengers" value="captain"/> 캡 틴
			<input type="checkbox" name="avengers" value="batman"/> 배트맨
			<input type="checkbox" name="avengers" value="hawk"/> 호크 <br />
			
			성별을 선택하시오. <br />
			<input type="radio" name="gender" value="male" checked="checked"/>남자
			<input type="radio" name="gender" value="female"/>여자 <br />
			
			거주지를 선택하시오. <br />
			<select name="city" id="city" size="1">
				<option value="seoul">서울</option>
				<option value="gyeonggi">경기</option>
				<option value="incheon">인천</option>
				<option value="suwon">수원</option>
			</select> <br />
			<input type="submit" value="전 송"/>
			<input type="reset" value="취 소"/>
		</fieldset>
	</form>
	
</body>
</html>