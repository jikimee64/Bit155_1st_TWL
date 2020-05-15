
<%@page import="kr.or.bit.action.Action"%>
<%@page import="kr.or.bit.service.EmpListService"%>
<%@page import="kr.or.bit.dto.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	
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
						location.href = "boardCustomList.do";
					});
</script>	
<title>Sufee Admin - HTML5 Admin Template</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<link rel="stylesheet"
	href="vendors/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="vendors/themify-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">
<link rel="stylesheet" href="vendors/jqvmap/dist/jqvmap.min.css">


<link rel="stylesheet" href="assets/css/style.css">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- 게시판 디자인 -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">



<style>
tr>th {
	text-align: center;
}
.divtag{
	padding-top: 70px;
	padding-bottom: 30px;
}
</style>

</head>

<body>

	<!-- Left Panel -->
	<jsp:include page="/WEB-INF/common/LeftMenu.jsp"></jsp:include>

	<!-- /Left Panel -->

	<!-- Right Panel -->



	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<jsp:include page="/WEB-INF/common/TopMenu.jsp"></jsp:include>
		<!-- /Header -->

		<c:set var="pagesize" value="${pagesize}" />
		<c:set var="cpage" value="${cpage}" />
		<c:set var="pagecount" value="${pagecount}" />
		<div class="breadcrumbs">
			<div class="col-sm-4">
				<div class="page-header float-left">
					<div class="page-title">

						<h1>회원 관리 테이블</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active">회원 관리 테이블</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!DOCTYPE html>
		<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>

	<form name="list">
		<div class="container">
			<div class="form-group">
				<div class="row ">
					<div class="col-sm-12 col-md-6 ">
						<div class="form-group d-flex align-items-center">
							<div class="col-sm-2" style="padding-left: 0">
								<select name="ps" class="form-control" onchange="submit()">
									<c:forEach var="i" begin="5" end="20" step="5">
										<c:choose>
											<c:when test="${pagesize == i }">
												<option value="${i}" selected>${i}</option>
											</c:when>
											<c:otherwise>
												<option value="${i}">${i}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</select>
							</div>
							<label for="" style="margin-bottom: 0">개씩 보기</label>
						</div>

					</div>
					<div class="col-sm-12 col-md-6">
						<div class="d-flex justify-content-end">
							<div class="col-sm-3" style="padding-left: 25px;">
								<select class="form-control">
									<option value="제목">제목</option>
									<option value="작성자">작성자</option>
								</select>
							</div>


							<label for=""> <input type="search" class="form-control"
								placeholder="Search">
							</label>
						</div>
					</div>

				</div>
			</div>
	</form>

	<%-- ${requestScope.list} --%>
	<div class="main-panel">
		<div class="content-wrapper">
			<div class="row ">
				<div class="col-12">
					<table id="order-listing" class="table text-center">
						<thead>
							<tr class="text-center">
								<th class="text-center" style="width: 50px;">사원번호</th>
								<th style="width: 30px;">이름</th>
								<th style="width: 30px;">직급</th>
								<th style="width: 30px;">부서번호</th>
								<th style="width: 50px;">고용일자</th>
								<th style="width: 20px;">수정삭제</th>

							</tr>
						</thead>
						<tbody>
							<c:set var="list" value="${requestScope.list}" />
							<c:forEach var="list2" items="${list}">
								<tr onmouseover="this.style.backgroundColor='gray'"
									onmouseout="this.style.backgroundColor='white'">
									<td align="center">${list2.empno}</td>
									<td align="center"><a
										href="detailView.do?empno= ${list2.empno}">${list2.ename}</a>
									</td>
									<td align="center">${list2.job}</td>
									<td align="center">${list2.deptno}</td>
									<td align="center">${list2.hiredate}</td>
									<td align="center">
									<a href="boardCustomEdit.do?empno=${list2.empno}" type="button"
											class="btn btn-sm btn-primary">수정</a>
										<a href="delete.do?empno=${list2.empno}" type="button"
											class="btn btn-sm btn-warning">삭제</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="d-flex justify-content-between">
		<!-- 공간차지용 -->
		<ul class="pagination" style="margin: 0 auto">
			<!-- justify-content-end -->
			<c:if test="${cpage>1 }">
				<li class="page-item"><a
					href="boardlist.jsp_2?cp=${cpage-1}&ps=${pagesize}"
					class="page-link"> <i class="fas fa-arrow-left"></i>
				</a></li>
			</c:if>
			<c:forEach var="i" begin="1" end="${pagecount}" step="1">
				<c:choose>
					<c:when test="${cpage == i }">
						<li class="page-item"><a href="" class="page-link">${i}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a
							href="boardlist_2.jsp?cp=${i}&ps=${pagesize}" class="page-link">${i}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${cpage < pagecount}">
				<li class="page-item"><a
					href="boardlist_2.jsp?cp=${cpage+1}&ps=${pagesize}"
					class="page-link"> <i class="fas fa-arrow-right"></i>
				</a></li>
			</c:if>
		</ul>
		<div class="">
			<a href="boardCustomWrite.jsp" type="button"
				class="btn btn-sm btn-primary"> <i class="fas fa-pencil-alt pr-1"></i>사원 등록하기</a> 
		</div>
	</div>





	<!-- .content -->

	<!-- /#right-panel -->

	<!-- Right Panel -->

	<script src="vendors/jquery/dist/jquery.min.js"></script>
	<script src="vendors/popper.js/dist/umd/popper.min.js"></script>
	<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/js/main.js"></script>


	<script src="vendors/chart.js/dist/Chart.bundle.min.js"></script>
	<script src="assets/js/dashboard.js"></script>
	<script src="assets/js/widgets.js"></script>
	<script src="vendors/jqvmap/dist/jquery.vmap.min.js"></script>
	<script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script>
		(function($) {
			"use strict";

			jQuery('#vmap').vectorMap({
				map : 'world_en',
				backgroundColor : null,
				color : '#ffffff',
				hoverOpacity : 0.7,
				selectedColor : '#1de9b6',
				enableZoom : true,
				showTooltip : true,
				values : sample_data,
				scaleColors : [ '#1de9b6', '#03a9f5' ],
				normalizeFunction : 'polynomial'
			});
		})(jQuery);
	</script>
</body>

		</html>