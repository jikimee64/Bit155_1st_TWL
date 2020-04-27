<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file 브라우저를 닫아도 영속적으로 클라이언트에 남아있음</title>
</head>
<body>
<!-- 
	1. 메모리 쿠키 ( 브라우저 쿠키) 라고도 함  : Client가 강제로 삭제하지 않는한 브라우저 닫기 전까지 유효.
									(소멸타임 : -1)
	
	2. 파일쿠키 ( 소멸시간을 가지고 있어요) : Client가 강제로 삭제하지 않는한  정해진 시간까지 유효
									(2020년 12월 25) 이렇게 
	setMaxage(60) >> 60초
	30일 
	(30 * 24 * 60 *60) 일 * 시 * 분 * 초 
	setMaxage(30 * 24 * 60 *60) 이렇게 해준다. 								
									
	
 -->

<%
	Cookie co = new Cookie("bit","hong");
	co.setMaxAge(30*24*60*60);
	response.addCookie(co);
%>


</body>
</html>








