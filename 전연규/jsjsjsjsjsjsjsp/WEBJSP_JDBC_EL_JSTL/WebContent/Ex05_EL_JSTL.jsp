<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    /* 
    	*<c:set>       : 변수 생성, 값을 저장, 자바객체 변수 value = "<%=객체>"
    	<c:remove>    : 변수 삭제
    	*<c:if>        : 조건문 (test="조건절(EL 구문)")
    	*<c:choose>    : 여러가지 조건에 따라서 처리 가능(if 보다 활용도가 높다)
    	**<c:forEach>   : 반복문(for...)
    	<c:forTokens> : for문과  split 과의 결합
    	<c:out>       : JSTL 출력 구문 (요놈보다 EL(표현식)이 ${}사용빈도가 높다)
    	<c:catch>     : 예외처리 
      */
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL parameter 받기</h3>
	${param.id} - ${param.pwd} <br />
	
	<h3>EL parameter 값을 변수에 저장</h3>
	<c:set var ="userid" value="${param.id}"></c:set>
	<!-- value값에 EL 표현식을 쓸 수 있따-->
	<c:set var ="userpwd" value="${param.pwd}"></c:set>
	<hr />
	<h3>JSTL 변수값 출력하기</h3>
	id:${userid } <br />
	pwd:${userpwd } <br />
	<hr />
	<c:if test="${!empty userpwd}">
		<h3>not empty userpwd</h3>
		<c:if test="${userpwd=='1004' }">
			<h3>welcome Admin page</h3>
		</c:if>
	</c:if>
	<!-- 중첩 if 문 가능하다  -->
	
	
	
</body>	
</html>