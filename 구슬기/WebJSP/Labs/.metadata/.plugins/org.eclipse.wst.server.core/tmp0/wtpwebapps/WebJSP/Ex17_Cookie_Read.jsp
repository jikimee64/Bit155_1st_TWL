<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 읽어오기 </title>
</head>
<body>
<!-- 
	클라이언트 브라우저가 갖고 있는 Cookie 값들을 읽어올수 있다!!!!!!!  가지고 올수 있다!!!!
	내 domain 에 해당하는 cookie 값
		
 -->
 
 <%
 	Cookie[] cs = request.getCookies();        //cookies 인 이유는 내 서버에 접속한 도메인 모든 쿠키를다 가져옴 배열임.  
 	if(cs != null || cs.length>0){
 		for(Cookie c : cs){
 			out.print(c.getName() + "<br>");    //cname  이런식으로 나온다. 
 			out.print(c.getValue() + "<br>");  //1004
 			out.print(c.getMaxAge() +"<br>");  //-1
 			out.print(c.getDomain()+"<hr>");  //null
 		}
 	}
 %>
 
 
 

</body>
</html>