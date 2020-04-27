<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
ID , PWD , CHK 값 받아서

1. id, pwd 같다면 로그인 성공 (if(id.equals(pwd)...
   chk 값이 체크되어있다면
   >쿠키를 생성해서 사용자의 id값을 쿠키에 담으세요 : 유효타임(24시간)
   >쿠키 쓰기 완료

2. id, pwd 같다면 로그인 성공
   chk 값이 체크되어 있지 않으면
   >기존 생성했던 쿠키 삭제 :setMaxAge(0)
   쿠키를 지우는 함수가 없고, 쿠키의 유효기간을 0으로 하면 소멸됨 
   
3. id ,pwd 같지 않다면
   response.sendRedirect() >> Ex20_LoginOk.jsp       
-->

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("uid");
    String pwd = request.getParameter("pwd");
    String chk = null;
    chk = request.getParameter("chk"); //value 없이 쓰면 on이 뜸 그거로 해도됨 
    
            
 	
 			 
 			if(id.equals(pwd)){
 				if(chk != null){
 				if(chk.equals("on")){
 					Cookie co = new Cookie("UID",id);
 					co.setMaxAge(1*24*60*60);
 					response.addCookie(co);
 				    }
 				}else {
 					Cookie delco = new Cookie("UID","");
 					delco.setMaxAge(0); //소멸
 					response.addCookie(delco);	
 					
 					
 				}
 				out.print("<script>location.href='Ex19_Login.jsp'</script>");
 			}else {
 				response.sendRedirect("Ex19_Login.jsp");
 			}
 		
 	
    
    
    
%>



</body>
</html>


















