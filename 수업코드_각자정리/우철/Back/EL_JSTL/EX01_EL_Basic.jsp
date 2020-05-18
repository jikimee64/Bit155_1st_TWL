<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");

	request.setAttribute("name", "korea");
	session.setAttribute("user", "bit");
	
	//request.getParameterValues(name) >> paramValues
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--
	EL(출력에 관련된 표현식) : JSP 페이지에서 사용되는 스크립트 언어(화면 출력 담당)
	이유 : 우리가 쓰는 코드가 스파게티(% 부분과 기존의 html이 혼재되는 코드) >> 유지보수, 코드의 해석(가독성)
	   문제를 해결(개선) 위해서 html하고도 잘 어울려야 되고 서버쪽 코드도 출력해야함] Script
	   EL & JSTL 탄생(단점 : JSP 페이지에서만 사용가능)
	  EL : JSP 페이지에서 화면 출력 목적으로  만든 script 언어 (% 없이 살자)
	  아파티 톰캣안에 el라이브러리가 들어있음
	 
	 
	 EL이 가지고 있는 객체(★중요한것)
		paramValues  :  요청 파라미터의 <파라미터이름, 값배열> 매핑을 저장한 Map 객체
		param        :  요청 파라미터의 <파라미터이름, 값> 매핑을 저장한 Map 객체
		requestScope :  request 기본 객체에 저장된 속성의 <속성,값> 매핑을 저장한 Map 객체
		sessionScope :  session 기본 객체에 저장된 속성의 <속성,값> 매핑을 저장한 Map 객체
		applicationScope : application 기본 객체에 저장된 속성의 <속성,값> 매핑을 저장한 Map 객체
	 
-->
	스크립트릿:<b><%=id%></b>
	<br> 스크립트릿:<%=request.getAttribute("name")%><br> 
	스크립트릿:<%=session.getAttribute("user")%><br>
	parameter : <%=request.getParameter("userid") %><br>
	<hr>
	EL request value : ${requestScope.name}<br> <!-- 현업에선 대부분 이코드 씀  -->
	EL request value : (requestScope 객체명 생략) : ${name}<br> <!-- 생략은 안좋은 방법, request에 들어있는지 session에 들어있는지 모름  -->
	<!-- 구분선  --> 
	EL session value : ${sessionScope.user}<br>
	EL session value : (sessionScope 객체명 생략)${user}
	<!-- 구분선  -->
	EL parameter : ${param.userid}<br>
			
	<h3>EL 기본 문법(출력)</h3>
	스크립트 릿 <%= 100 + 200 %><br>
	EL : ${100+200}<br>
	EL : ${"1"+1}<br> <!-- 문자형 숫자(자동 형변환) >> 숫자 >> 2 -->
	EL : ${1==1}<br>
	EL : ${false}<br>
	EL : ${!false}<br>
	EL : ${empty x}<br><!-- x라는 변수의 값이 비어있니-->
</body>
</html>