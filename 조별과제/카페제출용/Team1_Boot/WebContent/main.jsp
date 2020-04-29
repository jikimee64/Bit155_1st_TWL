<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1조 메인페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans+KR:wght@100;400&display=swap');

        #sideNav {
            /* text-align: center; */
            position: fixed;
            top: 0;
            left: 0;
            display: block;
            width: 17rem;
            height: 100vh;
        }

        #sideNav .navbar-nav .nav-item .nav-link {
            font-weight: 800;
            letter-spacing: 0.05rem;
            text-transform: uppercase;
        }

        #sideNav .navbar-brand .img-profile {
            max-width: 4rem;
            max-height: 4rem;
            border: 0.5rem solid rgba(255, 255, 255, 0.2);
            margin-left: 10px;
        }

        #sideNav .navbar-collapse {
            display: flex;
            align-items: flex-start;
            flex-grow: 0;
            width: 100%;
            margin-bottom: auto;
        }

        #sideNav .navbar-collapse .navbar-nav {
            flex-direction: column;
            width: 100%;
        }

        #logoText {
            margin-left: 10px;
        }

        .carousel-inner img {
            width: 100%;
            height: 100%;
        }

        h4 {
            font-family: 'Nanum Gothic', sans-serif;
            font-weight: bold;
        }

        p {
            font-family: 'Nanum Gothic', sans-serif;
        }

        .wrapper {
            position: relative;
            /* width: 50%; */
        }

        #image {
            opacity: 1;
            display: block;
            width: 100%;
            height: auto;
            transition: .5s ease;
            backface-visibility: hidden;
        }

        .middle {
            transition: .5s ease;
            opacity: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            text-align: center;
            width: 100%;
        }

        .wrapper:hover #image {
            filter: brightness(18%);
            /* opacity: 0.3; */
            /* color:black; */
            /* background-color:black; */
            transform: scale(1.2);
        }

        /* .wrapper:hover .ptag{
            width:250px;
        } */

        .wrapper:hover .middle {
            opacity: 1;
        }

        .text {
            /* background-color: #4CAF50; */
            color: white;
            font-size: 19px;
            /* padding: 16px 32px; */
        }

        td {
            text-align: center;

        }

        th {
            text-align: center;
        }
    </style>
</head>

<body style="background-color:#E0E6F8 ;">
    <nav class="navbar navbar-dark fixed-top" id="sideNav" style="background-color: #3b5998;">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <!-- <span class="d-lg-none"></span> -->
            <div class="d-flex ">
                <img class="img-fluid  ml-5 mb-2 mt-3" src="./images/thumbs.svg" alt="">
                <div class="d-flex align-items-center" id="logoText">
                    <h3 class="mt-3">26.8조</h3>
                </div>
            </div>
        </a>

        <div class="navbar-collapse">
            <ul class="navbar-nav nav-item">
                <li class="nav-item mx-auto">
                    <a class="nav-link js-scroll-trigger mb-2" href="./우철/index.jsp">KIM WOOCHEOL</a>
                </li>
                <li class="nav-item mx-auto">
                    <a class="nav-link js-scroll-trigger mb-2" href="./정아/introduce/index.jsp">LEE JUNGAH</a>
                </li>
                <li class="nav-item mx-auto">
                    <a class="nav-link js-scroll-trigger mb-2" href="./슬기/seulki.jsp">KU SEULKI</a>
                </li>
                <li class="nav-item mx-auto">

                    <a class="nav-link js-scroll-trigger mb-2" href="./연규/introduction/index.jsp">JEON YEONKYU</a>
                </li>
                <li class="nav-item mx-auto">
                    <a class="nav-link js-scroll-trigger mb-2" href="./민봉/자기소개/Index/index.jsp">JANG MINBONG</a>
                </li>
                <li class="nav-item mx-auto">
                    <a class="nav-link js-scroll-trigger mb-2" data-toggle="modal" data-target="#myModal"
                        href="#interests">RANK</a>
                </li>


            </ul>
        </div>
    </nav> <!-- nav -->

    <div class="modal fade" id="myModal">
        <div class="modal-dialog modal modal-dialog-centered">
            <!-- <div class="modal-dialog modal-dialog-scrollable">
        :본문 내용 많을시 모덜 내부에서만 스크롤 가능 -->
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">
                        <img class="mr-2" src="./images/crown.svg">
                        <span>우리 조의 랭킹</span>
                        <img class="ml-2" src="./images/crown.svg"></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->

                <div class="modal-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th colspan="2">이름</th>
                                <th>조장기준 총애 순위</th>
                                <th>영타 순위</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>김우철</td>
                                <td></td>
                                <td><img src="./images/Crown_1.png" alt=""></td>
                                <td><img src="./images/Crown_1.png" alt=""></td>
                            </tr>
                            <tr>
                                <td>이정아</td>
                                <td></td>
                                <td><img src="./images/Crown_4.png" alt=""></td>
                                <td><img src="./images/Crown_2.png" alt=""></td>
                            </tr>
                            <tr>
                                <td>구슬기</td>
                                <td></td>
                                <td><img src="./images/Crown_2.png" alt=""></td>
                                <td><img src="./images/Crown_5.png" alt=""></td>
                            </tr>
                            <tr>
                                <td>전연규</td>
                                <td></td>
                                <td><img src="./images/Crown_5.png" alt=""></td>
                                <td><img src="./images/Crown_3.png" alt=""></td>
                            </tr>
                            <tr>
                                <td>장민봉</td>
                                <td></td>
                                <td><img src="./images/Crown_3.png" alt=""></td>
                                <td><img src="./images/Crown_4.png" alt=""></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div> <!-- Modal end -->


    <div class="container p-0">
        <section class="resume-section p-3 p-lg-5" style="margin-left:225px; margin-top:-48px;margin-right:-48px">
            <div id="demo" class="carousel slide carousel-fade" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./images/식당3.jpg" alt="Los Angeles">
                        <div class="carousel-caption">
                            <h3>2020.04.21</h3>
                            <p>와촌에서 한컷....!</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./images/교실4.jpg" alt="Chicago">
                        <div class="carousel-caption">
                            <h3>2020.04.23</h3>
                            <p>조장님한테 혼나기 1분전!!</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./images/회의1.jpg" alt="New York">
                        <div class="carousel-caption">
                            <h3>2020.04.23</h3>
                            <p>조장한테 혼나는중....</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </section>
        <div style="margin-left:270px;">
            <hr>
        </div>
    </div> <!-- 슬라이드 -->

    <section class="section3 mb-3">
        <div class="row" style="width:80%; margin-left:400px;">
            <div class="card-deck">
                <div class="col">
                    <div class="card mx-auto" style="width:250px; height:400px;">
                        <div class="wrapper">
                            <img class="card-img-top" id="image" alt="Card image" style="width:100%"
                                src="./images/우철카드.JPG">
                            <div class="middle">
                                <div class="text">
                                    <p class="ptag">정아 : 산소같은 우철..<br>
                                        슬기 : 우철이 웃는거 너무 웃겨~~<br>
                                        민봉 : 많이 알려줘서 고마워!!<br>
                                        연규 : 우철아 이좀 그만닦아 이에서 피나겠다!!<br>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">김우철</h4>
                            <p class="card-text">
                                역할 : 조장<br>
                                포부 : 후회하며 살아온 인생. 이번에는 후회하지 말자
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mx-auto" style="width:250px; height:400px;">
                        <div class="wrapper">
                            <img class="card-img-top" id="image" alt="Card image" style="width:100%"
                                src="./images/연규카드.jpg">
                            <div class="middle">
                                <div class="text">
                                    <p class="ptag">정아 : 연규야 연규야 연규야..<br>
                                        슬기 : 연규 눈이 이뻐^.^<br>
                                        민봉 : 의외의 실력!!<br>
                                        우철 : 주식 대박나길 바래!!<br>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">전연규</h4>
                            <p class="card-text">
                                역할 : 요리사<br>
                                포부 : 크게 잃어본 사람이 떼돈 번다
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mx-auto" style="width:250px; height:400px;">
                        <div class="wrapper">
                            <img class="card-img-top" id="image" alt="Card image" style="width:100%"
                                src="./images/슬기카드.jpg">
                            <div class="middle">
                                <div class="text">
                                    <p class="ptag">정아 : 슬기로운 슬기야~<br>
                                        연규 : 누나는 다 이뻐!!<br>
                                        민봉 : 웃음소리가 호탕하다!!<br>
                                        우철 : 마들렌 맛있었어ㅎㅎ<br>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <h4 class="card-title">구슬기</h4>
                            <p class="card-text">
                                역할 : 서기<br>
                                포부 : 1도 모르고 왔지만 수료할땐 1등으로 나가겠습니다!!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mx-auto" style="width:250px; height:400px;">
                        <div class="wrapper">
                            <img class="card-img-top" id="image" alt="Card image" style="width:100%"
                                src="./images/정아카드.jpg">
                            <div class="middle">
                                <div class="text">
                                    <p class="ptag">우철 : 지식으로 저좀 혼내주세요..<br>
                                        연규 : 우철이좀 지식으로 때려줘!!<br>
                                        슬기 : 언니 내가 잘할께 때리지마..<br>
                                        민봉 : 불러줘서 고마워..<br>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <h4 class="card-title">이정아</h4>
                            <p class="card-text">
                                역할 : 부조장<br>
                                포부 : 하루에 잠을 6시간 이상 자지 않겠습니다. 어길 시...
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mx-auto" style="width:250px; height:400px;">
                        <div class="wrapper">
                            <img class="card-img-top" id="image" alt="Card image" style="width:100%"
                                src="./images/민봉카드.jpg">
                            <div class="middle">
                                <div class="text">
                                    <p class="ptag">슬기 : 의외의 귀염성<br>
                                        정아 : 의외의 귀염성22<br>
                                        연규 : 모두 민봉이한테 민봉아 라고 해주세요.<br>
                                        우철 : 형이 많이 생각하는거 알지? <br>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <h4 class="card-title">장민봉</h4>
                            <p class="card-text">
                                역할 : 총무<br>
                                포부 : 2차 프로젝트에서 제 몫 다하기
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> <!-- 각자 자기소개 -->


    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>


</body>

<script> $('.carousel').carousel({
        interval: 5000 //슬라이드 기본 5초 
    }) 
</script>

</html>