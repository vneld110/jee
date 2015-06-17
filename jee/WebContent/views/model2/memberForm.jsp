<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입 및 로그인 폼</title>
	<style>
		@import url("../../css/model2/kaup.css");
	</style>
	<script type="text/javascript">
		function searchId(){
			window.open("<%=request.getContextPath()%>/member/searchIdForm.do",
				 	"searchId",
					"scrollbars,toolbar=no, location=no,directories=no,status=no,menubar=yes,resizable=yes,width=600,height=500,top=200,left=400")
		} 
		function searchPass(){
			window.open("<%=request.getContextPath()%>/member/searchPassForm.do",
				"searchPass",
			"scrollbars,toolbar=no, location=no,directories=no,status=no,menubar=yes,resizable=yes,width=600,height=500,top=200,left=400")
		}
		function join(){
			<%-- location.href = "<%=request.getContextPath()%>/member/joinForm.do"; --%>
			document.frmJoin.submit();
		}
		function login(){
	/* 	 if(document.frmLogin.id.value.length ==0){
				alert("아이디를 써주세요.");
				frmLogin.id.focus(); /* 커서를 인풋텍스트 칸에 위치시킨다. 
			  return false;
			}
			if(document.frmLogin.password.value == ""){
				alert("비밀번호는 반드시 입력해야 합니다.");
				frmLogin.password.focus();
			return false;
			} 
			return true;
			
			 */
			document.frmLogin.submit();
		}
	</script>
</head>
<body>
	<form action=" <%=request.getContextPath()%>/model2/join.do" method="post" name="frmJoin"> 
		<fieldset>											<!-- 개인정보는 post로 보호 -->
		<legend>회원가입</legend>
		<table>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" id="name" name="name" placeholder="이름을 입력하세요."/>
				</td>
			</tr>
			<tr>
				<td>ID</td>
				<td>
					<input type="text" id="id" name="id"
						   placeholder="ID값을 입력하세요."/>
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>
					<input type="password" id="password" name="password"/>
				</td>
			</tr>
			<tr>
				<td>나이</td>
				<td>
					<input type="text" id="age" name="age" placeholder="나이를 입력하세요."/>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input type="text" id="address" name="address" placeholder="주소를 입력하세요."/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<!-- <input type="submit" value="회원가입"/> -->
					<img src="<%=request.getContextPath() %>/images/btnJoin.gif"
					style="cursor: pointer" alt=""  onclick="return join()"/>
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
	<form action=" <%=request.getContextPath()%>/model2/login.do" method="post" name="frmLogin">
		<fieldset>
		<legend>로그인</legend>
		<table>
			<tr>
				<td>ID</td>
				<td>
					<input type="text" id="id" name="id"
					placeholder="ID입력"/>
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>
					<input type="password" id="password" name="password"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<!-- <input type="submit" value="로그인"/> -->
					<img src="<%=request.getContextPath() %>/images/btnLogin.jpg"
					style="cursor: pointer" alt=""  onclick="return login()"/>
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
</body>
<span>
	<a href="#" onclick="searchId()">아이디 찾기</a>
</span>
<span>
	<a href="#" onclick="searchPass()">비밀번호 찾기</a>
</span>

</html>