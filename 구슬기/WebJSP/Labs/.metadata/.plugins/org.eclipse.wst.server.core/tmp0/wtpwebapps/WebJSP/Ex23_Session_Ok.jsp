<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	//한글처리
	request.setCharacterEncoding("UTF-8");

	//데이터 받기
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	//확인하기 이거 확인하고 되면 다음 로직 들어가세여
	out.print(uid +"/"+pwd);
	
	//로직(비즈니스) 업무처리   (처음하는 사람들은 코드부터 짜지말고 뭐할지먼저 생각하세요, 플로우차트를 그리던지)
	//DB 연결 >select > 회원테이블 > id, pwd 존재  
	//지금은 id ,pwd 같으면 회원으로 인정 할래요
	boolean success = false;
	if(uid.equals(pwd)){
		//로그인 성공
		// **********************이제 엄청 중요 *****
		//session 객체 안에 변수를 만들어서 ID 를 담음
		session.setAttribute("memberid", uid);  
		//이 코드로 인해서 각 브라우저의 세션들마다 member 이름의 userid 값이 들어감 
		success = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session.setAttribute("memberid", uid);</title>
</head>

<body>
	<%
		if(success==true){
			out.print("<b>로그인 성공</b><br>");
			String user = (String)session.getAttribute("memberid"); 
			//object type 인 session  그래서 String 으로 다운 그레이드 해줌 
			out.print(user + "님 로그인 되었습니다.<br>");
			out.print("<a href='Ex23_Session_Member.jsp'>회원전용페이지</a>"); 
		}else{
	%>
		<script type ="text/javascript">
			alert("다시 로그인해 주세요");
			//location.href="Ex23_Session_Login.jsp";  틀렸으니까 다시 로긴페이지 보여줌
			window.history.go(-1); 
			//니가 방문했던거 바로 전꺼로가 . 하면 또  Ex23_Session_Login.jsp로 감
			//그래도 47 번 코드를 많이 쓴다 
		</script>
	<% 
			
		}
	%>
	<br>
웹 에서 배운것들을 내가 봤던 거랑 매치시키면 지식이 붕뜨지 않고 기억할 수있따. 
<br>
</body>
</html>




















