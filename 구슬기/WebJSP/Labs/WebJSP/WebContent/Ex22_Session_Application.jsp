<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TODAY POINT</title>
</head>
<body>

<!-- 
	TODAY POINT
	서버 자원( WAS : memory 사용하기)
	
	-Application 객체 (전역자원) >> 접속하는 모든 사용자가 다룰 수 있는 자원
	-Session객체  >> 접속하는 브라우져 마다(SessionID 마다) 고유하게 부여되는 객체  (고유한 자원)
					(접속한  사용자마다 고유하게 부여되는 자원)
	
	사이트 접속(전체 접속자 수 : 100000명) 
	application.setAttribute("count",0);    count 변수는 application객체 안에 들어있음  전역자원임
	사이트에 접속하는 모든 session는 count 라는 변수에 접근이 가능하다. 
	길동이도, 유신이도, 아무개도 들어와서 +1 씩 사용자 수 증가 시킬수 있음
	
	
	[session]
	자기꺼에다가 자기변수를 쓰겠다.  길동이도, 유신이도, 아무개도 각자의 아이디 변수를 각각의 본인세션에 갖고 있음 
	session.setAttribute("ID","kglim") //ID 변수는  session 객체안에 생성  
	접속한 모든 사용자 마다 고유하게 부여되는 객체..그 안에 생성된다. 
	
	
	------------------------------------------------------------------
	A 라는  사용자가 웹 서버에 접속을 시도합니다. 
	서버가 고유한 session 객체 자동 생성하고 그 객체에 식별값을 부여함 (A001) 
	그 식별값을 접속한 client 에게  response 한다.
	(A001) key에 해당하는 session객체를 가지고 논다. 
	
	B 라는 사용자가  웹 서버에 접속을 시도합니다. 
	서버가 고유한 session 객체 자동 생성하고 그 객체에 식별값을 부여함 (B001) 
	그 식별값을 접속한 client 에게  response 한다.
	(B001) key에 해당하는 session객체를 가지고 논다. 
	
	
	
 -->
 
 <h3>세션정보</h3>
 웹 서버가 부여하는 고유한 sessionID : <%= session.getId() %><br>
 
 <h3>세션 변수값</h3>
 <%
	String userid = request.getParameter("userid");
 	session.setAttribute("id", userid); // id 가 session변수 
 %>
 
 <h3>세션 변수값</h3>
 <%
 	String id= (String)session.getAttribute("id");
 	out.print("당신의 ID는  <b>" + id + "<br>");
 %>
 

 세션객체라는건 클라이언트 브라우저 마다 부여되는 고유한 객체다. <br>
 그 객체마다 브라우저 사용자의 고유한 정보를 담고 있다   <br>

</body>
</html>




















