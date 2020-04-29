<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="./style.css">
    <!-- <link rel="stylesheet" type="text/css" href="./history.css"> -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script> <!-- 아이콘 -->
    <title>김우철 자기소개</title>

    <style>
        @import url('https://fonts.googleapis.com/css?family=DM+Serif+Display|Karla:400,700&display=swap');
        @import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

        * {
            box-sizing: border-box;
        }

        body {
            color: var(--dark-violet);
            font-family: 'karla', sans-serif;
            margin: 0;
        }

        h1,
        h2,
        h3,
        h4 {
            font-family: 'DM Serif Display', 'Noto Sans KR', sans-serif;
        }

        h1,
        h2 {
            font-size: 3em;
        }

        @media screen and (min-width:768px) {
            #menu li>a {
                position: relative;
            }

            #menu li>a:before {
                content: " ";
                background-color: #A4A4A4;
                position: absolute;
                left: 0;
                right: 0;
                top: 0;
                height: 3px;
                border-bottom-left-radius: 3px;
                border-bottom-right-radius: 3px;
                margin: 0 100px;
                transition: margin 0.5s;
            }

            #menu li>a:hover {
                color: black;
            }

            #menu li>a:hover:before {
                margin: 0;
            }
        }

        /* 메뉴바 */

        /* .carousel-inner>.carousel-item>img {
            width: 100%;
        } */

        #social-list {
            /* ul */
            display: flex;
            text-align: center;
        }

        #social-list li {
            margin-right: 20px;
        }

        .about {
            display: flex;
        }

        #me-picture {
            margin-right: 50px;
        }

        @media (max-width:768px) {
            #about-media {
                display: block;
                text-align: center;
            }

            #media-card-deck {
                display: flex;
                flex-direction: column;
                margin: 0 auto;
            }
        }

        /* 왜 되는거지..? */

        /* @media (max-width:1000px) {
            #kwc2 {
                display: flex;
                flex-direction: column;
            }

            #card-list {
                flex-direction: column;
                margin: 0 auto;
            }

            #list-card4,
            #list-card5 {
                margin-bottom: 48px;
            }
        } */

        @media (max-width:1000px) {
            #card-wrapper {
                display: flex;
                flex-direction: column;
            }

            #card-list {
                display: flex;
                flex-direction: column;
                margin: 0 auto;
            }
        }

        @media (max-width:1000px) {
            #skill {
                display: flex;
                flex-direction: column;
            }

            #skill-row {
                display: flex;
                flex-direction: column;
                margin: 0 auto;
            }
        }

        .star:before,
        .star {
            background-size: auto 60px;
            background-image: url(images/star-sprite.png);
            width: 150px;
            height: 30px;
            overflow: hidden;
        }

        .star:before {
            content: " ";
            display: block;
            background-position: left bottom;
            width: 0;
        }

        .star_1:before {
            width: 20%;
        }

        .star_2:before {
            width: 40%;
        }

        .star_3:before {
            width: 60%;
        }

        .star_4:before {
            width: 80%;
        }

        .star_5:before {
            width: 100%;
        }

        .card-icon{
            transition: all 0.3s;
            opacity: 0.3;
        }

        .card-icon:hover{
            transform: scale(1.1);
            opacity: 1;
        }
    </style>

</head>

<body style="padding-top:55px;">
    <nav id="navbar-example" class="navbar fixed-top navbar-expand-md bg-light navbar-light ">
        <!-- <img src="./images/me.jpg" class="rounded-circle mr-1" width="50" height="50"> -->
        <ul class="mr-auto mb-0 pl-3" id="social-list">
            <li class="nav-item d-flex">
                <a href="https://www.facebook.com/woocheol.kim.353" target="_blank">
                    <img src="./images/facebook.svg" alt="A magnifying glass with one eye" class="card-icon">
                </a>
            </li>
            <li class="nav-item d-flex">
                <a href="https://github.com/jikimee64?tab=repositories" target="_blank">
                    <img src="./images/github.svg" alt="A magnifying glass with one eye" class="card-icon">
                </a>
            </li>
            <li class="nav-item d-flex">
                <a href="https://dncjf64.tistory.com/" target="_blank">
                    <img src="./images/tistory.svg" alt="A magnifying glass with one eye" class="card-icon">
                </a>
            </li>
        </ul>
        <!-- 페이스북, 깃허브 
                    부족한점 : hover (자율)
            -->

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#alt" aria-controls="alt"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="alt">
            <ul class="navbar-nav ml-auto" id="menu">
                <!-- ml-auto 오른쪽 정렬 -->
                <li class="nav-item">
                    <a href="#section1" class="nav-link">ABOUT</a>
                </li>
                <li class="nav-item">
                    <a href="#section2" class="nav-link">HISTORY</a>
                </li>
                <li class="nav-item">
                    <a href="#section3" class="nav-link">EXPERIENCE</a>
                </li>
                <li class="nav-item">
                    <a href="#section4" class="nav-link">SKILLS</a>
                </li>
                <li class="nav-item">
                    <a href="#section5" class="nav-link">COMMUNICATION</a>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
                        Members
                    </a>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">이정아</a>
                        <a href="#" class="dropdown-item">구슬기</a>
                        <a href="#" class="dropdown-item">전연규</a>
                        <a href="#" class="dropdown-item">장민봉</a>
                        <a href="../main.jsp" class="dropdown-item">메인</a>
                    </div>
                </li>
            </ul>
            <!-- <form action="" class="form-inline">
                    <input type="text" class="form-control mr-sm-2" placeholder="Search">
                </form>
                <button class="btn btn-success" type="submit">Search</button> -->
        </div>
    </nav> <!-- 메뉴바 end -->

    <div id="kwc" class="container-fluid" style="padding:0">
        <div id="demo" class="carousel slide carousel-fade" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active "></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./images/project3.jpg" alt="Los Angeles" style="width:100%; opacity: 0.8;">
                    <div class="carousel-caption">
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#project1-slide">
                            상세 보기
                        </button>
                    </div>
                </div>
                <div class="modal fade" id="project1-slide">
                    <div class="modal-dialog modal modal-dialog-centered">
                        <!-- <div class="modal-dialog modal-dialog-scrollable">
                            :본문 내용 많을시 모덜 내부에서만 스크롤 가능 -->
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">IoT 단말기 스트리밍 침해방지 솔루션</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <!-- Modal body -->
                            
                            <div class="modal-body">
                                IoT 단말기 중 하나인 IP 카메라의 보안성 향상을 위해 웹 보안, 컨테이너 보안, 코드 보안을 기반으로 웹 스트리밍 서비스를 이용한 침해방지 솔루션.
                            </div>
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div> <!-- prject1 Modal end -->
                <div class="carousel-item">
                    <img src="./images/project2.png" alt="Chicago" style="width:100%; opacity: 0.8;">
                    <div class="carousel-caption">
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#project2-slide">
                            상세 보기
                        </button>
                    </div>
                </div>
                <div class="modal fade" id="project2-slide">
                    <div class="modal-dialog modal modal-dialog-centered">
                        <!-- <div class="modal-dialog modal-dialog-scrollable">
                            :본문 내용 많을시 모덜 내부에서만 스크롤 가능 -->
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">열화상 카메라 시스템</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <!-- Modal body -->
                            <div class="modal-body">
                                공장에서 운영되는 배터리의 온도를 라즈베리파이와 연동한 열화상카메라에서 감지하여 특정 온도를 초과하면 경고 및 전원을 차단하는 스마트 팩토리 시스템
                            </div>
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div> <!-- prject2 Modal end -->
                <div class="carousel-item">
                    <img src="./images/project1.png" alt="New York" style="width:100%; opacity: 0.8;">
                    <div class="carousel-caption">
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#project3-slide">
                            상세 보기
                        </button>
                    </div>
                </div>
                <div class="modal fade" id="project3-slide">
                    <div class="modal-dialog modal modal-dialog-centered">
                        <!-- <div class="modal-dialog modal-dialog-scrollable">
                            :본문 내용 많을시 모덜 내부에서만 스크롤 가능 -->
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">차량번호 인식 시스템</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <!-- Modal body -->
                            <div class="modal-body">
                                차량 번호판을 인식하여 추출한 데이터를 경찰행정망과 공유하여 차량 추적 및 벌금부과 자동화 시스템
                            </div>
                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div> <!-- prject2 Modal end -->
            </div>
            <a href="#demo" class="carousel-control-prev " data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>

            <a href="#demo" class="carousel-control-next" data-slide="next" >
                <span  class="carousel-control-next-icon"></span>
            </a>
        </div> <!-- 슬라이드 end -->

        <div id="section1" style="
        background-color: rgb(45,38,64);padding-top:50px;padding-bottom:50px">
            <div class="container">
                <div class="about" id="about-media">
                    <img id="me-picture" src="./images/me.jpg" style="width:180px" ;
                        class="rounded-circle img-thumbnail" alt="프로필 사진">
                    <div>
                        <h1 style="color:rgb(250,250,250)">Kim Woo cheol</h1>
                        <!-- <p style="color:rgb(131,125,135); font-weight: bold;">I'm a full-stack developer specialised in
                            frontend and backend development for complex scalable web apps. I write about web
                            development on my blog and regularly speak at various web conferences and meetups. Want to
                            know how I may help your project? Check out my project case studies and resume.
                        </p> -->
                        <p style="color:rgb(131,125,135); font-weight: bold;">
                            안녕하세요. 웹 개발자를 꿈꾸는 26살 청년입니다.<br>
                            본가는 청주이고 현재 서울 관악구에서 자취하고 있습니다.<br>
                            현재 비트학원 155기 수강생으로서 열심히 학업과 취업준비에 매진하고 있습니다.<br>
                            취미는 게임인데 특히 오버워치를 좋아합니다. 주 캐릭터는 애쉬입니다.<br>
                            가장 후회하는 일은 고등학교와 대학생때 노력을 게을리 한 것입니다.<br>
                            현 시점을 인생의 전환점이라 생각하고 절대 포기하지 않고 꿈을 위해 달려가겠습니다. 감사합니다.<br>
                        </p>
                    </div>
                </div>
            </div>
        </div> <!-- section1(about) end -->

        <div id="section2" class="" style="padding-top:50px;padding-bottom:50px">
            <div style="text-align: center; margin-bottom:15px;">
                <h2 style="color:#434E5E">HISTORY</h2>
            </div>
            <div class="container">
                <br>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <!-- data-toggle : "tab" 탭을 토글 가능하게 해줌 -->
                        <a href="#home" class="nav-link active" data-toggle="tab">2014</a>
                    </li>
                    <li class="nav-item">
                        <a href="#menu1" class="nav-link" data-toggle="tab">2015 ~ 2016</a>
                    </li>
                    <li class="nav-item">
                        <a href="#menu2" class="nav-link" data-toggle="tab">2017</a>
                    </li>
                    <li class="nav-item">
                        <a href="#menu3" class="nav-link" data-toggle="tab">2018</a>
                    </li>
                    <li class="nav-item">
                        <a href="#menu4" class="nav-link" data-toggle="tab">2019</a>
                    </li>
                    <li class="nav-item">
                        <a href="#menu5" class="nav-link" data-toggle="tab">2020</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="home" class="container tab-pane active"><br>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">2014.03&emsp;공주대학교 입학</li>
                            <li class="list-group-item">2014.06&emsp;기숙사 퇴출</li>
                            <li class="list-group-item">2014.09&emsp;첫 알바</li>
                            <li class="list-group-item">2014.12&emsp;군입대 3개월전</li>
                        </ul>
                    </div>
                    <div id="menu1" class="container tab-pane fade"><br>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">2015.02&emsp;군입대 전 부산 여행</li>
                            <li class="list-group-item">2015.03&emsp;37사단 군 입대</li>
                            <li class="list-group-item">2015.08&emsp;인생 첫 흡연</li>
                            <li class="list-group-item">2016.12&emsp;병장 만기 전역</li>
                        </ul>
                    </div>
                    <div id="menu2" class="container tab-pane fade"><br>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">2017.03&emsp;대학 복학</li>
                            <li class="list-group-item">2017.05&emsp;자바 포기</li>
                            <li class="list-group-item">2017.07&emsp;자격증 2개 취득</li>
                        </ul>
                    </div>
                    <div id="menu3" class="container tab-pane fade"><br>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">2018.02&emsp;MSI 노트북 구매</li>
                            <li class="list-group-item">2018.03&emsp;네트워크 보안 연구실 가입</li>
                            <li class="list-group-item">2018.06&emsp;첫 협업 프로젝트</li>
                            <li class="list-group-item">2018.09&emsp;도서관 근로 장학생</li>
                            <li class="list-group-item">2018.11&emsp;인생 위기</li>
                        </ul>
                    </div>
                    <div id="menu4" class="container tab-pane fade"><br>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">2019.02&emsp;첫 외주 경험</li>
                            <li class="list-group-item">2019.10&emsp;팔꿈치 인대 부분파열</li>
                            <li class="list-group-item">2019.11&emsp;베트남 여행</li>
                        </ul>
                    </div>
                    <div id="menu5" class="container tab-pane fade"><br>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">2020.02&emsp;대학 졸업</li>
                            <li class="list-group-item">2020.02&emsp;비트 155기 과정 등록(진행중)</li>
                        </ul>
                    </div>

                </div>
            </div>

        </div> <!-- section2(HISTORY) end -->

        <div id="section3" style="padding-top:50px;padding-bottom:50px; background-color:#ebedf2;">
            <div style="text-align: center; margin-bottom:15px;">
                <h2 style="color:#434E5E">EXPERIENCE</h2>
            </div>
            <div class="container" id="card-wrapper">
                <div id="card-list">
                    <div class="card-deck" id="media-card-deck">
                        <div class="card shadow mb-5" style="width:300px">
                            <img class="card-img-top" alt="Card image" style="width:100%;" src="./images/2018IT.jpg">
                            <div class="card-body">
                                <h4 class="card-title">2018 월드 IT쇼</h4>
                                <p>전자, 정보통신 용품 및 기기 전시회 등 첨단미래기술을 간접적으로 체험할 수 있었습니다.</p>
                            </div>
                        </div> <!-- 1번째 카드 -->
                        <div class="card shadow mb-5" style="width:300px">
                            <img class="card-img-top" alt="Card image" style="width:100%; " src="./images/2018논문.jpg">
                            <div class="card-body">
                                <h4 class="card-title">2018 대학생 논문경진대회</h4>
                                <p>연구실 소속으로 첫 논문 발표를 맡았습니다. 비록 수상에 실패했지만
                                    프로젝트에 있어 협업과 논리적인 내용 전달의 중요성을 느낄 수 있었던 값진 경험이였습니다.
                                </p>
                            </div>
                        </div> <!-- 2번째 카드 -->

                        <div class="card shadow mb-5" style="width:300px">
                            <img class="card-img-top" alt="Card image" style="width:100%" src="./images/2018e브레인.jpg">
                            <div class="card-body">
                                <h4 class="card-title">2018 교내 공모전</h4>
                                <p>교내 e브레인 아이디어 공모전에 참가한 모습입니다. 여러모로 아쉬움이 많은 기억으로 
                                    남아있지만 이때를 계기로 한층 더 성장할 수 있었습니다.
                                </p>
                            </div>
                        </div> <!-- 3번째 카드 -->
                    </div> <!-- 1번째 카드행 -->

                    <div class="card-deck" id="media-card-deck">
                        <div id="list-card4" class="card shadow" style="width:300px">
                            <img class="card-img-top" alt="Card image" style="width:100%" src="./images/2019캡스톤.jpg">
                            <div class="card-body">
                                <h4 class="card-title">2019 캡스톤 학술제</h4>
                                <p>학부 캡스톤 학술제에서 조장으로서 발표를 맡았습니다. 노력 끝에 은상을 취득하여
                                    행복한 경험으로 남아있습니다.
                                </p>
                            </div>
                        </div> <!-- 4번째 카드 -->

                        <div id="list-card5" class="card shadow" style="width:300px">
                            <img class="card-img-top" alt="Card image" style="width:100%" src="./images/2019논문.jpg">
                            <div class="card-body">
                                <h4 class="card-title">2019 대학생 논문경진대회</h4>
                                <p> 2018년에 이어 논문 발표를 맡았습니다. 논문경진대회보단 끝난 뒤 대학원 회식에서 만난
                                    석,박사님과의 교류가 즐거웠습니다.
                                </p>
                            </div>
                        </div> <!-- 5번째 카드 -->

                        <div class="card shadow" style="width:300px">
                            <img class="card-img-top" alt="Card image" style="width:100%" src="./images/bit1차.jpg">
                            <div class="card-body">
                                <h4 class="card-title">2020 비트 프로젝트</h4>
                                <p>비트 학원에서 첫 프로젝트 발표 후 기념으로 찍은 사진입니다.
                                    이후 자바를 더욱 열심히 공부해야겠다는 생각을 가진 계기가 되었습니다.
                                </p>
                            </div>
                        </div> <!-- 6번째 카드 -->
                    </div> <!-- 2번째 카드행 -->
                </div>
            </div>
        </div> <!-- section3(experience) end -->

        <div id="section4" style="padding-top:50px;padding-bottom:50px;">
            <div style="text-align: center; margin-bottom:15px;">
                <h2 style="color:#434E5E;">SKILL</h2>
            </div>
            <div id="skill" class="container">
                <div class="row" id="skill-row">
                    <div class="col-lg-4">
                        <h3 class="mt-1">Frontend</h3>
                        <hr>
                        <div class="d-flex flex-row">
                            <div class="p-3 align-self-auto-start">
                                <img src="./images/html5.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_3">
                                    3
                                </div>
                            </div>
                        </div>
                        <div class="d-flex flex-row" style="height:62px;">
                            <div class="pb-2 pl-3 pr-3 pt-1 align-self-auto-start">
                                <img src="./images/css.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_2">
                                    2
                                </div>
                            </div>
                        </div>
                        <div class="d-flex flex-row" style="height:62px;">
                            <div class="pb-2 pl-3 pr-3 pt-1 align-self-auto-start">
                                <img src="./images/js.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_1">
                                    1
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <h3 class="mt-1">Backend</h3>
                        <hr>
                        <div class="d-flex flex-row">
                            <div class="p-3 align-self-auto-start">
                                <img src="./images/java.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_2">
                                    2
                                </div>
                            </div>
                        </div>
                        <div class="d-flex flex-row" style="height:62px;">
                            <div class="pb-2 pl-3 pr-3 pt-1 align-self-auto-start">
                                <img src="./images/oracle.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_3">
                                    3
                                </div>
                            </div>
                        </div>
                        <div class="d-flex flex-row" style="height:62px;">
                            <div class="pb-2 pl-3 pr-3 pt-1 align-self-auto-start">
                                <img src="./images/mysql.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_3">
                                    3
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <h3 class="mt-1">Others</h3>
                        <hr>
                        <div class="d-flex flex-row">
                            <div class="p-3 align-self-auto-start">
                                <img src="./images/unit.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_1">
                                    1
                                </div>
                            </div>
                        </div>
                        <div class="d-flex flex-row" style="height:62px;">
                            <div class="pb-2 pl-3 pr-3 pt-1 align-self-auto-start">
                                <img src="./images/msppt.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_1">
                                    3
                                </div>
                            </div>
                        </div>
                        <div class="d-flex flex-row" style="height:62px;">
                            <div class="pb-2 pl-3 pr-3 pt-1 align-self-auto-start">
                                <img src="./images/msword.svg">
                            </div>
                            <div class="p-3 align-self-center" style="text-align: justify;">
                                <div class="star star_2">
                                    3
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- section4(skill) end -->


        <div id="section5" style="padding-top:50px;padding-bottom:50px; background-color:#ebedf2;">
            <div style="text-align: center; margin-bottom:15px;">
                <h2 style="color:#434E5E;">COMMUNICATION</h2>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="d-flex flex-row">
                            <div class="media border p-3 mt-4">
                                <img src="./images/thank-you.svg" alt="coffee" class="mr-3 mt-3" style="width:60px">
                                <div class="media-body">
                                    <h4>후원하기<small><i>&nbsp취업준비생이라 돈이없어요..</i></small></h4>
                                    <p class="mt-3"><b>302-0785-9074-51 농협 김우철</b><br> 감사합니다!!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--전체 12 중 6 할당-->
                    <div class="col-lg-6">
                        <div class="card text-center shadow card-form mt-4 mb-4">
                            <div class="card-body">
                                <h3>문의 사항</h3>
                                <hr>
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
                                        <textarea class="form-control form-control-lg"
                                            placeholder="내용을 입력하세요"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-outline-secondary">전송</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div> <!-- section5(INQUIRY) end -->



        <div id="footer" style="background-color:#434E5E; padding: 1px 0; font-size:16px;"
            class="container-fluid text-center">
            <small class="" style="color:rgb(255,255,255)">
                "Bit155 Copyright ©"
            </small>

        </div> <!-- footer end -->
    </div> <!-- 가장 바깥의 레이아웃 -->

</body>


<script> $('.carousel').carousel({
        interval: 10000 //기본 10초 
    }) 
</script>


</html>