<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 웹에서 필수적인 부분</title>
</head>
<body>

<!-- 

	session객체 : 브라우져(접속한 사용자) 마다 서버에서 부여하는 고유한 객체 
	
	session 값 : 웹 서버가 접속한 클라이언트(브라우져)에게 부여하는 고유한 ID 값(식별값)
	
	A사용자 : 웹 서버에 접속 : session 객체 생성 >> 고유한 ID 값을 부여 >> 그 ID 값을  Client 에게  response 해줌
	B사용자 : 웹 서버에 접속 : session 객체 생성 >> 고유한 ID 값을 부여 >> 그 ID 값을  Client 에게  response 해줌
	
	JSESSIONID : D5090FEE8545DEA3B6097D2BCE907D10  <<-- 이게 키 값이다  ,유일값 보장(같은값이 안나온다네?)
	
	session 객체 : 각 접속한 사용자의 [고유한 정보] >> 쇼핑몰 구매한 물건 정보, 로그인한 ID 정보, 처음 접속한 시간, 마지막 접속한 시간 
	중요한 정보들이라서 공유되면 안됨. 
	
 -->
 
 <%
 	Date time= new Date();
 	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 %>
 	<h3>세션 정보</h3>
 	session객체를 생성하고 객체 식별값을 만듦 
 	session 식별값 : <%= session.getId() %><br>
 	<hr>
 	
<%
	time.setTime(session.getCreationTime());
%> 	
	[session 생성된 시간] : <%= formatter.format(time) %>
	<hr>
		
<%
	time.setTime(session.getLastAccessedTime());
%>
	[session 마지막 접속 시간 (client)] : <%= formatter.format(time) %>
	
	<hr>
	페이지를 run 하고 새로고침 하면 마지막 접속 시간 만 변경된다. <br>
	로그인되는걸 세션처리 되었다 라고 한다.<br>
	로그아웃 이란? session객체 소멸(내 정보 소멸)   session.invalidate();
	<br>
	<br>
	세션 객체가 활용되는 부분 : <br>
	네이버는 로그인하면 세션객체에 사용자 정보를 담아오고, 게시판에서 글쓸대 정보를 가져온다. <br>
	
	
</body>
</html>



















