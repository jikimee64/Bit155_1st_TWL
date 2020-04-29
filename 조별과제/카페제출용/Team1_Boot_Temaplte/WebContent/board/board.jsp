<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./board.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
        integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <title>게시판 UI</title>
    <style>
        tr>th {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="container">
        <div style="margin-bottom:50px;">
            <h3>게시판</h3>
        </div>
        <div class="form-group">
            <div class="row ">
                <div class="col-sm-12 col-md-6 ">
                    <div class="form-group d-flex align-items-center">
                        <div class="col-sm-2" style="padding-left:0">
                            <select class="form-control">
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option value="15">15</option>
                                <option value="ALL">ALL</option>
                            </select>
                        </div>
                        <label for="" style="margin-bottom:0">개씩 보기</label>
                    </div>

                </div>
                <div class="col-sm-12 col-md-6">
                    <div class="d-flex justify-content-end">
                        <div class="col-sm-3" style="padding-left:25px;">
                            <select class="form-control">
                                <option value="제목">제목</option>
                                <option value="작성자">작성자</option>
                            </select>
                        </div>


                        <label for="">
                            <input type="search" class="form-control" placeholder="Search">
                        </label>
                    </div>
                </div>

            </div>

            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row ">
                        <div class="col-12">
                            <table id="order-listing" class="table text-center">
                                <thead>
                                    <tr class="text-center">
                                        <th class="text-center" style="width:25px;">번호</th>
                                        <th style="width:250px;">제목</th>
                                        <th style="width:25px;">작성자</th>
                                        <th style="width:30px;">작성일</th>
                                        <th style="width:25px;">조회</th>
                                        <th style="width:25px;">좋아요</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>3</td>
                                        <td>테스트3</td>
                                        <td>관리자</td>
                                        <td>2020-04-27</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>테스트2</td>
                                        <td>관리자</td>
                                        <td>2020-04-27</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>테스트1</td>
                                        <td>관리자</td>
                                        <td>2020-04-27</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-between">
                <div class="" style="visibility:hidden;">
                    <button type="button" class="btn btn-primary">
                        <i class="fas fa-pencil-alt pr-1"></i>글쓰기</button>
                </div> <!-- 공간차지용 -->
                <ul class="pagination" style="margin:0 auto">
                    <!-- justify-content-end -->
                    <li class="page-item"><a href="" class="page-link">
                            <i class="fas fa-arrow-left"></i>
                        </a>
                    </li>
                    <li class="page-item"><a href="" class="page-link">1</a></li>
                    <li class="page-item"><a href="" class="page-link">2</a></li>
                    <li class="page-item"><a href="" class="page-link">3</a></li>
                    <li class="page-item"><a href="" class="page-link">
                            <i class="fas fa-arrow-right"></i>
                        </a>
                    </li>
                </ul>
                <div class="">
                    <button type="button" class="btn btn-primary">
                        <i class="fas fa-pencil-alt pr-1"></i>글쓰기</button>
                </div>
            </div>
        </div>


</body>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>


</html>