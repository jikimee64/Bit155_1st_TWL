<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 CSS 추가하기 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!-- 커스텀 CSS 추가하기 -->
    <link rel="stylesheet" href="./css/custom.min.css">
    <title>전연규 자기소개페이지</title>
</head>

<body>
    <div id="home">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <div class="container">
            <a href="../../main.jsp" class="navbar-brand">Main</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navCollapse">
                <!-- toggler는 마우스를 클릭하면 나타나고 다시클릭시 나타나지 않는상태를 반복 -->
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navCollapse">
                <!-- 버튼을 눌렀을때 나오는 창 만들기(id 값은 위에있는 데이터 타겟이랑 같게하면됨) -->
                <ul class="navbar-nav ml-auto">
                    <!-- ▲ 네비게이션 요소들 (왼쪽 마진은 auto로 줫음) -->
                    <li class="nav-item">
                        <!-- item을 이용해서 네비게이션 요소들을 집어 넣어줌 -->
                        <a href="#" class="nav-link">메인</a>
                    </li>
                    <li class="nav-item">
                        <a href="#career" class="nav-link">경력</a>
                    </li>
                    <li class="nav-item">
                        <a href="#portfolio" class="nav-link">포트폴리오</a>
                    </li>
                    <li class="nav-item">
                        <a href="#etc" class="nav-link">etc</a>
                    </li>
                    <li class="nav-item">
                        <a href="#contact" class="nav-link">연락처</a>
                    </li>
                </ul>
            </div>

        </div>

    </nav>
    <section class="container mt-5">
        <div class="text-center">
            <img src="./img/me.jpg" class="img-fluid mb-3 mt-5 rounded-circle">
            <h2>전연규</h2>
            <img src="https://i.pinimg.com/originals/89/f1/18/89f118b018535766920063221945638c.gif"
                class="img-fluid mr-1" width="60px">
            <img src="https://file3.instiz.net/data/file3/2018/01/30/9/8/6/986ea5920c9b602c43920ced20530d46.gif"
                class="img-fluid mr-1" width="60px">
            <img src="https://file3.instiz.net/data/file3/2018/01/30/d/6/2/d620b8f725439b47b00def048e7968c6.gif"
                class="img-fluid mr-1" width="60px" id="career">

        </div>

    </section>

    <section class="bg-white text-dark mt-5 mb-3 pt-5 pb-4">
        <div class="text-center">
            <div class="container text-left mb-5" style="max-width: 480px;">
                <h2>활동 경력</h2>
                <ul>
                    <li>비트캠프 개발자 양성과정 20/02/17 ~ 진행중</li>
                    <li>주식 투자 ~ 진행중</li>
             
                </ul>

            </div>
        </div>

    </section>

    <section id="portfolio" class="mb-3 pt-4 pb-5">
        <div class="text-center">
            <h2>포트폴리오</h2>
        </div>
        <div class="container mt-3" style="max-width:1160px;">
            <hr>
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="./img/bit2.jpg">
                    <div class="card-body">
                        <h4 class="card-title">첫 프로젝트 준비</h4>
                        <p class="card-text" style="text-align: justify">
                            첫 프로젝트는 시간에 쫒겨 많은 부분을 놓치게 되었지만 덕분에 개발자에게 있어 시간이 얼마나 중요한지 배웠고 분배를 잘해야겠다고 느꼈다.
                        </p>
                    </div>
                </div>

                <div class="card">
                    <img class="card-img-top" src="./img/bit.jpg">
                    <div class="card-body">
                        <h4 class="card-title">비트캠프 1차 프로젝트 발표</h4>
                        <p class="card-text" style="text-align: justify">
                            개발자가 되기로 하고 첫 프로젝트를 진행해 보았다. 자바를 이용하여 [피시방 좌석 예약 & 관리자 페이지] 를 만들어 보았는데 개발자가 무엇인지 배우게 되었고 흥미를
                            느끼게 되었다.
                        </p>
                    </div>
                </div>



                <div class="card">
                    <img class="card-img-top" src="./img/bit4.jpg">
                    <div class="card-body">
                        <h4 class="card-title">비트캠프 2차 프로젝트 준비</h4>
                        <p class="card-text" style="text-align: justify">
                            1차 프로젝트보다 더 많은 것을 배웠기 때문에 부담감이 조금 있지만 열심히 할 계획이다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="row">
        <div class="col-md-4">
            <section class="pt-4 pb-5" id="etc">
                <div class="text-center">
                    <div class="container text-left mb-5" style="max-width: 480px;">
                        <h2>특기 취미</h2>
                        <br>
                        <h3>요리</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:80%">계란 잘 뒤집기, 라면 물 맞추기 자격증 보유</div>
                        </div>
                        <h3>운전</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:65%">운전을 좋아함</div>
                        </div>
                        <h3>게임</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:70%">못하는 게임이 없음</div>
                        </div>
                        <h3>음악, 영화감상</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:75%">영화는 600개 이상 시청 완료</div>
                        </div>
                        <h3>운동</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:40%">매주 풋살 하는 중이지만 제일 못함</div>
                        </div>
                        <h3>주식</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:45%">계속 투기중..</div>
                        </div>
                        <h3>코딩</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:20%">배우는 중..</div>
                        </div>
                        <h3>디자인</h3>
                        <div class="progress">
                            <div class="progress-bar" style="width:10%">초등이</div>
                        </div>
                    </div>

                </div>
            </section>
        </div>

        <hr>

        <div class="col-md-8">
            <section class="pt-4 pb-5" id="etc">
                <div class="text-center">
                    <div class="container text-left mb-5" style="max-width: 900px;">
                        <h2>연규의 영화추천</h2>
                        <div id="demo" class="carousel slide" data-ride="carousel">

                            <!-- Indicators -->
                            <ul class="carousel-indicators">
                                <li data-target="#demo" data-slide-to="0" class="active"></li>
                                <li data-target="#demo" data-slide-to="1"></li>
                                <li data-target="#demo" data-slide-to="2"></li>
                                <li data-target="#demo" data-slide-to="3"></li>
                                <li data-target="#demo" data-slide-to="4"></li>
                                <li data-target="#demo" data-slide-to="5"></li>
                            </ul>

                            <!-- The slideshow -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="./img1/toystory.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/sengua.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/walle.jpg"  width="290px" height="400px" style="float: left;">
                                    <div class="carousel-fade text-center">
                                        <h3 style="color: black;">애니메이션</h3>
                                        <p style="color: #EDE7F6;">.</p>
                                      </div>  
                                </div>
                                <div class="carousel-item">
                                    <img src="./img1/kingsman.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/killbill.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/trans.jpg"  width="290px" height="400px" style="float: left;">
                                    <div class="carousel-fade text-center">
                                        <h3 style="color: black;">액션</h3>
                                        <p style="color: #EDE7F6;">.</p>
                                      </div>  
                                </div>
                                <div class="carousel-item">
                                    <img src="./img1/inception.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/bladerun.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/edge.jpg"  width="290px" height="400px" style="float: left;">
                                    <div class="carousel-fade text-center">
                                        <h3 style="color: black;">SF</h3>
                                        <p style="color: #EDE7F6;">.</p>
                                      </div>  
                                </div>
                                <div class="carousel-item">
                                    <img src="./img1/greenbook.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/barstar.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/rogun.jpg"  width="290px" height="400px" style="float: left;">
                                    <div class="carousel-fade text-center">
                                        <h3 style="color: black;">드라마</h3>
                                        <p style="color: #EDE7F6;">.</p>
                                      </div>  
                                </div>
                                <div class="carousel-item">
                                    <img src="./img1/nocountry.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/thegame.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/dpart.jpg"  width="290px" height="400px" style="float: left;">
                                    <div class="carousel-fade text-center">
                                        <h3 style="color: black;">스릴러</h3>
                                        <p style="color: #EDE7F6;">.</p>
                                      </div>  
                                </div>
                                <div class="carousel-item">
                                    <img src="./img1/21jump.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/22jump.jpg"  width="290px" height="400px" style="float: left;">
                                    <img src="./img1/dead.jpg"  width="290px" height="400px" style="float: left;">
                                    <div class="carousel-fade text-center">
                                        <h3 style="color: black;">코미디</h3>
                                        <p style="color: #EDE7F6;">.</p>
                                      </div>  
                                </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </a>
                            <a class="carousel-control-next" href="#demo" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                            </a>
                        </div>
                    </div>
                

                </div>
            </section>
        </div>
    </div>



    <section id="contact" class="bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2 class="mt-5">연락처</h2>
                    <div class="d-flex flex-row">
                        <div class="p-3 align-self-start">
                            <img src="./img/check.svg">
                        </div>
                        <div class="p-3 align-self-end" style="text-align: justify">
                            address : 경기 하남시
                        </div>
                    </div>

                    <div class="d-flex flex-row">
                        <div class="p-3 align-self-start">
                            <img src="./img/check.svg">
                        </div>
                        <div class="p-3 align-self-end" style="text-align: justify">
                            birth &nbsp;&nbsp; &nbsp; : 1995-09-29
                        </div>
                    </div>

                    <div class="d-flex flex-row">
                        <div class="p-3 align-self-start">
                            <img src="./img/check.svg">
                        </div>
                        <div class="p-3 align-self-end" style="text-align: justify">
                            p.h &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 010-7777-7301
                        </div>
                    </div>
                    <div class="d-flex flex-row">
                        <div class="p-3 align-self-start">
                            <img src="./img/check.svg">
                        </div>
                        <div class="p-3 align-self-end" style="text-align: justify">
                            email &nbsp;&nbsp;&nbsp;&nbsp;: jyk6915@gmail.com
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="car text-center card-form mt-4 mb-4">
                        <div class="card-body">
                            <h2>간편 문의</h2>
                            <form>
                                <div class="form-group">

                                    <input type="text" class="form-control form-control-lg" placeholder="이름">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-lg" placeholder="이메일">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg" placeholder="연락처">
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control form-control-lg" placeholder="내용을 입력하세요"></textarea>
                                </div>
                                <button type="submit" class="btn btn-success">전송하기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="text-center bg-dark text-white">
        <div class="footer-above">
            <div class="container pt-4">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <a href="https://github.com/jeonyeonkyu" class="btn btn-dark m-2" target="_blank">
                            <img src="img/github.svg" alt="깃허브 주소" width="40px">
                        </a>
                        <h3 style="color:white;"></h3>

                        <p>Github</p>
                    </div>
                    <div class="footer-col col-md-4 mb-2">
                        <h3 style="color:white;">소셜미디어</h3>
                        <a href="https://www.instagram.com/jeonyeonkyu/?hl=ko" class="btn btn-dark m-2" target="_blank">
                            <img src="img/instagram.svg" alt="인스타그램" width="25px">
                        </a>
                        <a href="https://www.facebook.com/" class="btn btn-dark m-2" target="_blank">
                            <img src="img/facebook.svg" alt="페이스북" width="25px">
                        </a>
                        <a href="https://www.youtube.com/" class="btn btn-dark m-2" target="_blank">
                            <img src="img/youtube.svg" alt="유튜브 페이지" width="25px">
                        </a>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3 style="color:white;"></h3>
                        <p><br> 소통하는 개발자가 되겠습니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below pb-4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; 전연규 2020
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- 제이쿼리 자바스크립트 추가하기 -->
    <script src="./js/jquery-3.2.1.min.js"></script>
    <!-- Popper 자바스크립트 추가하기 -->
    <script src="./js/popper.min.js"></script>
    <!-- 부트스트랩 자바스크립트 추가하기 -->
    <script src="./js/bootstrap.min.js"></script>
</body>

</html>