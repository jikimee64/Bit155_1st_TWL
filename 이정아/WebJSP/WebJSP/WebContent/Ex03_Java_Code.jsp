<%@page import="java.util.Calendar"%>
<%@page import="kr.or.bit.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   	Emp e = new Emp();
    e.setEmpno(1000);
    e.setEname("이정아");
    
    //캘린더 객체 선언 만들고
    //화면에(클라이언트) 년, 월, 일 출력
    
    Calendar cal = Calendar.getInstance();
    int year = cal.get(Calendar.YEAR);
    int month = cal.get(Calendar.MONTH)+1;
    int date = cal.get(Calendar.DATE);
   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
출력 표현식은 <br>
사번 : <%= e.getEmpno() %><br>
이름 : <%= e.getEname() %><br>
전체는 <%= e.toString() %><br>

<hr>
현재 날짜 : <%=year %>년 <%=month %>월 <%=date %>일

</body>
</html>