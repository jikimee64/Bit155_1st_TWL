<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//http://192.168.0.169:8090/WEBJSP_JDBC_EL_JSTL/Ex04_EL_JSTL.jsp?ID=hong
		String id = request.getParameter("ID");
		if(id.equals("hong")){
	%>
		<%=id %><img src="images/1.jpg" alt="이미지" style="width:100px; height:100px;"/>
	<% 
		}
	%>
	
	<h3>EL과 JSTL로 전환하기</h3>
	 <c:if test="${param.ID == 'hong' }">
	 <!-- param객체는 request가 가지고있는 파라미터 값을 얻을수 있다 -->
		${param.ID }<%=id %><img src="images/1.jpg" alt="이미지" style="width:100px; height:100px;"/>
	</c:if> 
	
	<h3>JSTL IF</h3>
<!-- http://192.168.0.169:8090/WEBJSP_JDBC_EL_JSTL/Ex04_EL_JSTL.jsp?ID=hong&age=30 -->	
		<c:if test="${param.age > 20 }" var="result">
			param.value : ${param.age}
		</c:if>
		if 구문에서 만들었던 var 변수값은 : ${result}
		
</body>
</html>