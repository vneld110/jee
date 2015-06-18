<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>좌석 선택</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/reservation/reserveSeat.css");
	</style>
</head>
<body>
	<div >
	<form action="<%=request.getContextPath()%>/reservation/selectSeat.do">
		<div class="seatSelect">
			<!-- 좌석 열 , 행1~8 -->
		<fieldset>
			<legend>좌석 선택</legend>
			<ol> 
				<li class="dd">
					<label for="prod">아이디</label>
					<input id="id" type="text" name="id" size="25"
					placeholder="아이디를 입력하세요."/>
				</li>
				<li>
					<label for="num">열번호</label>
					<input id="floor" type="number" name="floor" min="1" max="3" value="1"/>
				</li>
				<li>
					<label for="num">행번호</label>
					<input id="row" type="number" name="row" min="1" max="5" value="1"/>
					<input type="submit" value="선택"/>
				</li>
			</ol>
		</fieldset>
	
	</form>
	
	<form action="<%=request.getContextPath()%>/reservation/cancleSeat.do">
		<fieldset class="deleteSelect">
			<legend>좌석 취소</legend>
			<ol> 
				<li>
					<label for="prod">아이디</label>
					<input id="id" type="text" name="id" size="25"
					placeholder="아이디를 입력하세요."/>
				</li>
				<li>
					<label for="num">열번호</label>
					<input id="floor" type="number" name="floor" min="1" max="3" value="1"/>
				</li>
				<li>
					<label for="num">행번호</label>
					<input id="row" type="number" name="row" min="1" max="5" value="1"/>
					<input type="submit" value="선택"/>
				</li>
			</ol>
		</fieldset>
		
		</div>
			<table class="valueView" ><!--테이블 - 영화 극장 날짜 시간 정보 -->
				<colgroup> 
					<col width="40%"/>
					<col width="60%"/>
				</colgroup>
				<tr>
					<td>영화</td>
					<td><%= request.getAttribute("movie") %></td>
				</tr>
				<tr>
					<td>극장</td>
					<td><%= request.getAttribute("theater") %></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><%= request.getAttribute("date") %></td>
				</tr>
				<tr>
					<td>시간</td>
					<td><%= request.getAttribute("time") %></td>
				</tr>
				
			</table>
		</fieldset>
		
	</form>
	</div>
	<div class="seatView"  style="text-align: center;">
		<img src="<%=request.getContextPath()%>/images/screen.png" alt=""/>
	<form action="<%=request.getContextPath()%>/reservation/seatComplete.do">

	${msg}
	<br />
		<%
		if(request.getAttribute("seat")==null){
			String[][] defaultSeat = new String[5][5]; 
			
			for (int i = 0; i < defaultSeat.length; i++) {
				for (int j = 0; j < defaultSeat[i].length; j++) {
					if (defaultSeat[i][j] == null) {
						%><!--  System.out.print("" + (i + 1) + "0" + (j + 1) + "호"
								+ " □\t" + "\t"); -->
						<%="□"%> <%=i+1%>-<%=j+1%>    <!-- 1을 A열로 바꿈 switch case로 -->
						<%
					} else {
						/* System.out.print("" + (i + 1) + "0" + (j + 1) + "호"
								+ " ■\t" + name[i][j] + "\t"); */
						%>
						<%="■"%> <%=i+1%>-<%=j+1%>  
						<%
					}
				}
				%>
				<br />
				<%
			}
		}else{
			String[][] seat = (String[][])request.getAttribute("seat"); // 투숙객 이름
			
			for (int i = 0; i < seat.length; i++) {
				for (int j = 0; j < seat[i].length; j++) {
					if (seat[i][j] == null) {
						%>
						<%="□"%> <%=i+1%>-<%=j+1%>  <!-- 1을 A열로 바꿈 switch case로 -->
						<%
					} else {
						%>
						<%="■"%> <%=i+1%>-<%=j+1%>  
						<%
					}
				}
				%>
				<br />
				<%
			}
		}
		%>
	<input type="submit" value="완료"/>	
	</form>	
	</div>
</body>
</html>