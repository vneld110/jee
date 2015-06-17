<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예매 페이지</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/projectReservation.css");
	</style>
</head>
<body>
	<div>
	<form action="<%=request.getContextPath()%>/reservation/input.do">
	<fieldset>
		<legend> [RESERVATION] </legend>
		<table class="reserveTable" summary="예매테이블">
		<colgroup> <!-- column 한 셀에 대한 가로값을 입력 -->
			<col width="30%"/>
			<col width="15%"/>
			<col width="30%"/>
			<col width="25%"/>
		</colgroup>
		<thead > <!-- table head : 테이블 속 컬럼명을 지정 -->
			<tr >
				<th>영화</th>
				<th>극장</th>
				<th>날짜</th>
				<th>시간</th>
			</tr>
		</thead>
		<tbody class="tbodyOption"> 
			<tr>
				<td>
					<select name="movie">
					  <option value="jurassicWorld">쥬라기공원</option>
					  <option value="madMax">매드맥스</option>
					  <option value="sanAndreas">샌안드레아스</option>
					</select>
				</td>
				<td>
					<select class="theaterSelect" name="theater">
					  <option value="ATheater">A관</option>
					  <option value="BTheater">B관</option>
					  <option value="CTheater">C관</option>
					  <option value="DTheater">D관</option>
					  
					</select>
				</td>
				<td>
					<input type="date" id="date" name="date" min="2015-06-17" max="2015-06-24"/>
				</td>
				<td>
					<select class="timeSelect" name="time" >
					  <option value="first">10:00</option>
					  <option value="second">12:00</option>
					  <option value="third">15:00</option>
					</select>
				</td>
			</tr>
		</tbody>
	</table>
	
	<p>영화, 극장, 날짜, 시간을 선택하셨으면 >>> <input type="submit" value="좌석 선택" /></p>
	</fieldset>
	</form>
	</div>
</body>
</html>