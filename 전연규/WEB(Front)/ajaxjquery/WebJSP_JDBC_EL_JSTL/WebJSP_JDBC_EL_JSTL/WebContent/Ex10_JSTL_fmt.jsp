<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!-- 굳이외울 필요는 없음-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Fmt 포맷관련</title>
</head>
<body>
 <h3>숫자관련</h3>
 변수선언 : <c:set var="price" value="1000000"></c:set><br>

 변수값 출력:${price}<br>
 <fmt:formatNumber value="${price}" type="number" /><br>
 <fmt:formatNumber value="50000000" type="currency" currencySymbol="$" /><br>
 <fmt:formatNumber value="0.13" type="percent"/>
 변수에 설정 <br>
 <fmt:formatNumber value="123456789" pattern="###,###,###" var="pdata" />
 변수에 설정한 값 : ${pdata}<br>
 <!-- 이부분은 currency, number부분만 기억하자  -->
 
 <hr>
 <h3>날짜 관련 format</h3>
 변수선언 : <c:set var="now" value="<%= new Date() %>" /><br>
 변수값 : ${now}<br>
 Basic Date : <fmt:formatDate value="${now}" type="date" /><br>
 DateStyle(full) : <fmt:formatDate value="${now}" type="date" dateStyle="full" /><br>
 DateStyle(short) : <fmt:formatDate value="${now}" type="date" dateStyle="short" /><br>
 시간:<fmt:formatDate value="${now}" type="time"/><br>
 날짜 + 시간:<fmt:formatDate value="${now}" type="both"/><br>
 혼합:<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br>
    혼합2:<fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short" /><br>
</body>
<!-- jstl도 formatting을 제공한다만 알고 그때그때 검색해서 사용해라  -->
</html>
