<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>board</title>
<script>
	$(document).on('click', '#btnSave', function(e) {
		e.preventDefault();
		$("#form").submit();
	});
	
	$(document)
			.on(
					'click',
					'#btnList',
					function(e) {
						e.preventDefault();
						location.href = "boardCustomEdit.do";
					});
	
</script>

<style>
body {
	padding-top: 70px;
	padding-bottom: 30px;
}
</style>

</head>

<body>
<c:set var="emp" value="${requestScope.emp}" />
<c:set var="hiredateformat" value="${emp.hiredate}"/>
<c:set var="hiredateformat2" value="${fn:replace(hiredateformat, '-', '')}" />



	<article>
		<div class="container" role="main">
			<h2>사원 등록</h2>
			<form name="form" id="form" role="form" method="post" 
				action="boardCustomEdit.do">
				<div class="mb-3">
					<label for="title">사원 번호</label> <input type="text"
						class="form-control" name="empno" id="empno"
						value="${emp.empno}" readonly>
				</div>

				<div class="mb-3">
					<label for="reg_id">사원 이름</label> <input type="text"
						class="form-control" name="ename" id="ename"
						value="${emp.ename}">
				</div>
				
				<div class="mb-3">
					<label for="reg_id">사원 직종</label> <input type="text"
						class="form-control" name="job" id="job"
						value="${emp.job}">
				</div>
				
				<div class="mb-3">
					<label for="reg_id">관리자 번호</label> <input type="text"
						class="form-control" name="mgr" id="mgr"
						value="${emp.mgr}">
				</div>

				<div class="mb-3">
					<label for="reg_id">입사일</label> <input type="text"
						class="form-control" name="hiredate" id="hiredate"
						value="${hiredateformat2}">
				</div>
				
				<div class="mb-3">
					<label for="reg_id">급여</label> <input type="text"
						class="form-control" name="sal" id="sal"
						value="${emp.sal}">
				</div>
				<div class="mb-3">
					<label for="reg_id">커미션</label> <input type="text"
						class="form-control" name="comm" id="comm"
						value="${emp.comm}">
				</div>
				<div class="mb-3">
					<label for="reg_id">부서번호</label> <input type="text"
						class="form-control" name="deptno" id="deptno"
						value="${emp.deptno}">
				</div>
			<%-- 	<div class="mb-3">
					<label for="reg_id">사원 사진</label> <input type="file"
						class="form-control" name="filename" id="filename"
						placeholder="사진 첨부">
						<img src="upload/${param.filename}">
				</div> --%>
			
			<div>
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
				<a href="EmpTable.do" type="button" class="btn btn-sm btn-primary">목록</a>
			</div>
			</form>
		</div>
		

	</article>

</body>

</html>



