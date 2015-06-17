<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예약 폼</title>
</head>
<body>

	<div>
		<form action="">
			<fieldset>
				<legend>예약일</legend>
				<ol>
					<li>
						예약 취소는 영화 시작 20분 전까지 가능합니다.
					</li>
					<li>
						<label for="wanted">원하는 예약일</label>
						<input type="date" id="wanted" name="wanted"/>
						<!-- date month week time datetime -->
						<input type="time" id="time" name="time"/>
					</li>
				</ol>
			</fieldset>
			<input type="submit" value="전송" />
		</form>
	
	</div>
	<hr style="width: 400px; height=20px; border-color: black;" />
	<div style="text-align: center;">
	${msg}
	<br />
		<%
		if(request.getAttribute("seat")==null){
			String[][] defaultSeat = new String[3][5]; // 투숙객 이름
			
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
	</div>
	<div>
	<form action=" <%= request.getContextPath()%>/reservation/checkIn.do"> 
		<fieldset>
			<legend>주문 내용</legend>
			<ol> <!-- 순서 -->
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
				</li>
			</ol>
		</fieldset>
		
		
		<input type="submit" value="등록" />
		
	</form>
	</div>
	
		<div>
	<form action=" <%= request.getContextPath()%>/reservation/checkOut.do"> 
		<fieldset>
			<legend>취소 내용</legend>
			<ol> <!-- 순서 -->
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
				</li>
			</ol>
		</fieldset>
		
		
		<input type="submit" value="등록" />
		
	</form>
	</div>
</body>
</html>