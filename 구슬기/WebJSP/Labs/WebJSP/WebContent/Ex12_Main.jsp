<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include</title>
</head>
<body>

       SITE MAIN PAGE 상단 내용 출력
       <hr>
       
       <!-- 공통페이지 만들어놓고 불러오기       /  이게 WebContent 를 가리킴 -->
       <jsp:include page="/commonmodule/sub.jsp"></jsp:include>
       <!--  include 를 만나면 그곳으로감
                            쭉실행후 넘어옴
                            돌아옴
                            내꺼 마저 실행함 
        -->
       
       
       <hr>
       SITE MAIN PAGE 하단 내용 출력

</body>
</html>