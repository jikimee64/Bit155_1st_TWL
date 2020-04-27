<%@page import="javax.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>저장...</title>
</head>
<body>
<!-- 
	정보(데이터) > where 저장	                                                         클라이언트 (개인 로컬 PC 브라우저)    :    서버(웹 서버 또는 DB 서버)
	정보? 아이디 패스웓, 이메일 확인유무, 팝업창 오늘 본다 안본다등등
	이 정보가 어디 저장되는게 맞을까?
	 
	
	정보(데이터, 자료)  >> 어디에 저장(보관)
	고민 : 보안  요소 (정보의 중요성) , 소멸 ( 일시적, 영속적 ) 
	
	---------------------------------------Client (Local PC : 웹 브라우져)---보안이 좋지않다.----------------------------------------------------
	1. Cookie ( 메모리 쿠키, 파일 쿠키(Local txt 파일 저장: 암호화))    --해커들이 가장 많이 노리는 파일
	                                                        --메모리 브라우저가 떠잇는 동안 유효 닫으면 사라짐 session
	                                                      	--파일 브라우저를 닫아도 남아잇음 
	                                                      	
	                                                      	메모리쿠키(session), 파일쿠키의 구분기준은 소멸시기 
                                                                                                                                        내피씨에 이 기간까지 저장하는것. 이걸 지울수 있다. 내 로그인정보가 담긴 쿠키를 지울수 있음 내 피씨니까 내가 관리할수 있따. 
                                                                                                                                        근데 재접속하면 다시 생기기도 함 
	                                                      	
	2. Local storage (저장소 : key, value)  
	
	---------------------------------------Server(WebServer : Tomcat)---보안이 좋다 --------------------------------------------------------
	1.server memory : session 객체  (접속유저당 하나씩 만들어지는데, 접속한 사용자의 식별값, 개인정보, 접속시간 등이 들어가있음) >> 서버가 꺼지거나, 리부팅 하면 소멸된다   안전하지만 영속적이지 않다.
	2.server memory : Application 객체(접속한 모든 사용자가 공유하는 객체) >> 서버 꺼지거나, 리부팅 소멸
	3.server 영속적 : 파일 >> login.txt 이렇게 관리하기. >> 영속적이긴한데.. 관리가 어려워! 
	4.DB server : 보안적인 측면, 영속적으로 데이터 관리하기도 편하다.     단점 : 개발자가 더 많은 걸 해야함 
	
	
	
 -->
<%
  Cookie mycookie= new Cookie("cname","1004");    // 이름, 밸류값 생성
  //만든 쿠키를 client 브라우저에게 전달 해야함 >> response
	response.addCookie(mycookie); //웹서버에서 쿠키 객체를 마들고 그걸 클라이언트가 씀 
%>

<a href="Ex17_Cookie_Read.jsp">Cookie read</a><br>
서버에서 설정한 쿠키이름 : <%= mycookie.getName() %> <br>
서버 설정한 값 : <%= mycookie.getValue() %><br>
서버 설정한 쿠키 소멸설정 : (session 소속  -1 이 리턴되면 브라우저가 닫히면 같이 사라져~로 보면됨) : <%= mycookie.getMaxAge() %>

</body>
</html>








