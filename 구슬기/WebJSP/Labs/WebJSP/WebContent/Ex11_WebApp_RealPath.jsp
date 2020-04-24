<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 
    URI (Universal Resource Identifier)
- 인터넷상의 자원을 식별하기 위한 표기법 및 규약

- URL + URN = URI

- 인터넷 환경에서 URI는 대부분 URL을 의미, URN은 사용이 제한적


URL (Uniform Resource Locator)
- 물리적인 경로, 즉 자원의 위치 정보를 포함

- 프로토콜, 도메인, 아이피, 포트 등

- 컴퓨터로부터 접근 가능한 형태의 자원만 검색될 수 있어 제한적

- 우리가 흔히 보는 'http://test.com/test.jpg' 형태


URN (Uniform Resource Name)
- 독립적인 이름을 제공하기 위해 존재

- 자원에 대해 영속적이고 유일

- 자원의 위치와는 무관

- 예를들어 우리나라에서는 주민등록번호가 대표적




StringBuffer url = request.getRequestURL();    // URL : 전체주소 (프로토콜 + IP + 포트 + 상세경로)
 String uri = request.getRequestURI();            // URI : 프로젝트 이하 경로 (CP + SP)
 String cp = request.getContextPath();           // CP : 프로젝트 명
 String sp = request.getServletPath();            // SP : 패키지 + 파일명
 
 System.out.println("URL : " + url);
 System.out.println("URI  : " + uri);
 System.out.println("CP   : " + cp);
 System.out.println("SP   : " + sp);
 

-----------------------------------------------------------------

 URL : http://localhost:8080/TestBoard/JSPBoard/created.jsp
 URI  : /TestBoard/JSPBoard/created.jsp
 CP   : /WebJSP
 SP   : /WebJSP/채워넣으셈

-----------------------------------------------------------------
    
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String resourcepath ="/download/note.txt";
	out.print(resourcepath + "<br>");
	
	//http://192.168.0.25:8090/WebJSP/Ex11_WebApp_RealPath.jsp
	
	//  -----------------소스경로와 배포 경로--------------------
	
	//    /WebJSP 실경로(소스) : D:\bit155\WebJSP\Labs\WebJSP  
	//    /WebJSP 실경로 (배포(서비스)경로): D:\bit155\WebJSP\Labs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP	
	
	       
	//    /note.txt 실경로(소스) : D:\bit155\WebJSP\Labs\WebJSP\WebContent\download\note.txt
	//    /note.txt 실경로 (배포(서비스)경로):  D:\bit155\WebJSP\Labs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP\download\note.txt 
	
	// 실제 소스의 경로와 서비스경로는 다름 
	// 내가 파일을 업로드하면 서비스경로에 저장된다. 
	// 왜? 
    // 웹 서비스를 하기 위해서는 WAS(서버의 특정 경로에 )소스 배포
    // 이클립스에  WAS를 내장 했기때문에 경로가 길어짐
    // 실제로는 Linux 서버 구축   >> war(배포용압축파일) 또는 jar 를 만든다 >> 복사 후 붙여넣으면 >> 자동으로 압축이 풀린다. 
    // 현업에서는 배포서버로 Linux 를 쓴다. 
    
    //파일처리(실경로)
    //getRealPath(배포경로)
    
    
    //지금은 소스를 수정해서 run on server 하면 배포경로로 넘긴다. 우리가 실제로 보는건 배포경로다.  동기화라고 생각하면 됨 
    //  그래서 파일 처리를 할때 ( 실경로(배포경로가 필요함))
    //  근데 너무긴데?
    // 그럴땐 getRealPath() 를 쓰면된당
    
    String realContextPath =application.getRealPath(request.getContextPath());
    //  \WebJSP(가상경로제공)
    out.print("ContextPath real path : "+ realContextPath +"<br>");
    //D:\bit155\WebJSP\Labs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP\WebJSP
    
    String filePath= application.getRealPath(resourcepath);
    //  \download\note.txt
    out.print(" real path : "+ filePath +"<br>");
    //D:\bit155\WebJSP\Labs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\WebJSP\download\note.txt
    
     StringBuffer url = request.getRequestURL();      // URL : 전체주소 (프로토콜 + IP + 포트 + 상세경로)
	 String uri = request.getRequestURI();            // URI : 프로젝트 이하 경로 (CP + SP)
	 String cp = request.getContextPath();            // CP : 프로젝트 명
	 String sp = request.getServletPath();            // SP : 패키지 + 파일명
	 
	 System.out.println("URL : " + url);  //   http://192.168.0.25:8090/WebJSP/Ex11_WebApp_RealPath.jsp
	 System.out.println("URI  : " + uri); //   /WebJSP/Ex11_WebApp_RealPath.jsp
	 System.out.println("CP   : " + cp);  //   /WebJSP
	 System.out.println("SP   : " + sp);  //   /Ex11_WebApp_RealPath.jsp
 
    
    
    
			
	
%>


</body>
</html>














