<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//request.setCharacterEncoding("UTF-8");  9버전 이아니면 필요

//서버(객체 제공)
//아파치 톰켓: 웹 전용 객체를 제공 (request, response) : 내장객체(new 없이 사용가능)
//request 요청 객체 ( 클라이언트 정보 얻는다(입력한 데이터, 브라우저 버전,IP))
//response 응답 객체 (서버...클라이언트에게 write.... 할때 씀)

//클라이언트가 서버에 요청했을때
//Ex02_register.jsp 를 요청함
//Ex02_register.jsp?userid=hong&pwd=1004&hobby=baseball&hobby=soccer

	String uid = request.getParameter("userid"); //<input 태그의 name 값임
	String pwd = request.getParameter("pwd");
	
	//String hobby = request.getParameter("hobby"); 이거는 값을 하나만 받겠다랑 같은 말인데
	//hobby 는 배열의 형태로 넘어오기때문에 안된다.
	String[] hobby = request.getParameterValues("hobby");
	
	/*
		POST 방식은 무조건 request.setCharacterEncoding("UTF-8"); 해놓고
		GET 은 Tomcat 9버전 이하면 request.setCharacterEncoding("UTF-8"); 해줘야함 
	
	
		 한글처리.....(GET) (Tomcat9 버전(한글 출력 잘된당))
		 Tomcat 9 버전 이하
		 1. 페이지 상단에 인코딩 : request.setCharacterEncoding("UTF-8");
		 2. server.xml 63 라인   >>URIEncoding="UTF-8" 추가
		 <Connector URIEncoding="UTF-8" connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/>
		 
		한글처리 ...(POST)
		1.Tomcat 버전에 상관없이
		2. 받는 페이지 상단에 무조건  request.setCharacterEncoding("UTF-8");
		
		*****************
		JSP 페이지 상단에 무조건 
		request.setCharacterEncoding("UTF-8");
		쓰고보자. 헷갈리지 않게~~
		*****************
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버에서 응답<br>
	ID입력값 : <%= uid %><br>
	PWD입력값 : <%= pwd %><br>
	당신의 취미는 : 
	<% 
		for(String str : hobby){
	%>
		hobby:<%= str %><br>
	<%
	   }
	%>
	<br>
	

</body>
</html>