<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 디렉티브 -->
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
	<!-- 선언부 -->
<%!
	public int multiply(int a, int b){
	int c = a*b;
	return c;
}
%>
	<!-- 스크립트릿 -->
<%
	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a");
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>chap02\now.jsp</title>
</head>
<body>
	현재 시간 : 
	<%= sdf.format(now)%> <%-- <%= sysout %>  --%>
	<!-- 표현식 -->
	10*25=<%= multiply(10, 25) %>
	
	<%-- ((jsp교재))
	
	JSP에서 제공하는 것들
	1. 디렉티브 : 설정정보를 지정, <%@ %>
	2. 스크립트
		1)스크립트릿 : 자바 코드를 실행한다. <% %>
		2)표현식 : 값을 출력한다, <%= %>
		3)선언부 : 자바 메소드를 만든다. p.81, <%! %>
	3. EL
	4. 기본객체
	5. JSTL --%>
	
</body>
</html>