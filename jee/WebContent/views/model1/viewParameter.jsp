<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
/* 	request.setCharacterEncoding("UTF-8"); */
%>
<!-- 
request.getParameter() : 낱개 파라미터의 키값과 밸류값을 리턴
request.getParameterValues() : 키값 없이 밸류값만 리턴(체크박스)
request.getParameterNames() : 키값만 리턴(쓸모없음)
request.getParameterMap() : 파라미터 밸류가 복수인 경우(ex.로그인)
-->


<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>폼 값을 받은 페이지</title>
</head>
<body>
<div>
	<b> request.getParameter() 메소드 사용</b> <!-- bold체 --> <br />
	name 파라미터 = <%= request.getParameter("name") %> <br />	
	address 파라미터 = <%= request.getParameter("address") %> <br />	
	<p></p>
	<b> request.getParameterValues() 메소드 사용</b> <br />
	<%
		String[] values = request.getParameterValues("pet");
		if(values !=null){
			for(int i=0; i<values.length; i++){
				%>
			넘어온 밸류: <%= values[i] %> <br />
				<%
			}
		}
	%>
	<b> request.getParameterNames() 메소드 사용</b> <br />
	<%
		Enumeration paraEnum = request.getParameterNames();
	while(paraEnum.hasMoreElements()){
		String name = (String)paraEnum.nextElement();
		%>
		<%= name %> <br />
		<%
	}
	%> <br />
	<b> request.getParameterMap() 메소드 사용</b> <br />
	<%
		Map paramMap = request.getParameterMap();
		String[] nameParam = (String[])paramMap.get("name");
		if(nameParam !=null){
			%>
			이름 = <%= nameParam[0]%>
			<%
		}
	%>
</div>
	
</body>
</html>