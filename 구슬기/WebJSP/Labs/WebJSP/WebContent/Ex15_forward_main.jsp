<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/*
    	요청에 대한 흐름 제어
    	
    	include
    	forward
    	
    	공통점 : request 객체를 공유한다
    	차이점 : include 제어권을 가지고 있다. (내가 너 실행함 그담에 다시 나한테 와야함) 
    	      forward  제어권을 넘겨준다.  (POINT : 요청 주소는 동일한데 다른 page의 내용을 서비스 )
    	      why? 처음 요청했던 주소의 Buffer 를 그대로 사용 
    	      192.168.0.12:8090/WebJSP/login.jsp    이렇게 요청을 보내면 forward >> A.jsp ,B.jsp , C.jsp 
    		담는 그릇은 login.jsp 이지만 내용은 A.jsp , B.jsp ,C.jsp 중에 하나일수 있다. 
    		
    		인클루드는 자기 디자인 유지하면서 갖고 들어오는거고
    		포워드는 바뀐다. 
    		
    		http://192.168.0.25:8090/WebJSP/Ex15_forward_main.jsp?code=A
    		
    		코드의 값에 따라서 forward 되는 페이지를 달리할수 있다. 
    	      
    	*/
    	String code =request.getParameter("code");
    	String viewURI = null;
    	if(code.equals("A")){
    		viewURI="/forward/A.jsp";
    	}else if(code.equals("B")){
    		viewURI="/forward/B.jsp";
    	}else if(code.equals("C")){
    		viewURI="/forward/C.jsp";
    	}
    	
    	
    %>
<jsp:forward page="<%= viewURI %>"></jsp:forward> <!--  클라이언트의 브라우저에 써질때 서버쪽 코드가 해석되어서 들어간다.  -->
    
    
    <!--  아래 코드가 의미가 있을까??? -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward ..스프링까지 이어지는 개념</title>
</head>
<body>

 http://192.168.0.25:8090/WebJSP/Ex15_forward_main.jsp?code=A 이렇게 검색
    나는 forward 페이지 입니다 ^^ 
</body>
</html>




