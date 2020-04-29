<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">


	<title>Info</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
		<div class="container">
			<a href="../../../main.jsp" class="navbar-brand">Jang min bong</a>
			<button class="navbar-toggler" data-toggle="collapse" data-target="#navCollapse">
				<!-- toggler는 마우스를 클릭하면 나타나고 다시클릭시 나타나지 않는상태를 반복 -->
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navCollapse">
				<!-- 버튼을 눌렀을때 나오는 창 만들기(id 값은 위에있는 데이터 타겟이랑 같게하면됨) -->
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a href="../../../main.html" class="nav-link">Main</a>
					</li>
					<!-- ▲ 네비게이션 요소들 (왼쪽 마진은 auto로 줫음) -->
					<li class="nav-item">
						<!-- item을 이용해서 네비게이션 요소들을 집어 넣어줌 -->
						<a href="#info" class="nav-link">Info</a>
					</li>
					<li class="nav-item">
						<a href="#favor" class="nav-link">Oasis</a>
					</li>
				
				</ul>
			</div>

		</div>

	</nav>


	<div class="wrapper">

		<div class="header" id="info">
			
			<img class="profile" src="images/blue.png" alt="">
			<h1>Jang min bong</h1>
		</div>

		<div class="contents">
			<div class="section1">
					<h1 class="info">Basic Info</h1>
					<ul class="ul1">
						<li class="li1"><img src="images/avatar.png"
							width="20px" height="20px"
							>
							<p>Jangminbog</p></li>
							<li class="li2">
								<!-- <img  src="images/phone-call.png"
								width="20px" height="20px"> -->
								<p>Tel : 010-5652-4133</p>
								<p>Birth : Mar 22 1996</p></li>
								<li class="li3"><img src="images/house.png"
									width="20px" height="20px"
									><p>address : 79, Galsan-ro 136beon-gil, Icheon-si</p></li>
									<li class="li4"><img src="images/monitor.png"
										width="20px" height="20px">
										<p>Email : kiryuinh@gmail.com</p>
										<p><a href="https://github.com/Jangminbong/">github</a></p>

									</li>
									<li class="li5"><img src="images/star.png"
										width="20px" height="20px"
										></li>
									</ul>
									<!-- <div class="book" id="favor">
										<img class="h2" src="images/2.jpg" alt="">
										<img class="lol" src="images/lol.png" alt="">
										<img class="oasis" src="images/oasis.png" alt="">
									</div> -->
									
				
			</div>


			<div class="section2">

				
				<div class="" id="favor">
				<h1 style="text-align: center;">
					<img src="oasis image/oasis_logo.png" alt="">


					<!--여기야 여기-->
					<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="oasis image/member1.png" alt="Los Angeles" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="oasis image/member5.png" alt="Chicago" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="oasis image/member7.png" alt="New York" width="1100" height="500">
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


					<!-- <div id="slide">이이이이이이이이이이
						<input type="radio" name="pos" id="pos1" checked>
						<input type="radio" name="pos" id="pos2">
						<input type="radio" name="pos" id="pos3">
						<input type="radio" name="pos" id="pos4">
						<ul>
						  <li></li>
						  <li></li>
						  <li></li>
						  <li></li>
						</ul>
						<p class="pos">
						  <label for="pos1"></label>
						  <label for="pos2"></label>
						  <label for="pos3"></label>
						  <label for="pos4"></label>
						</p>
					  </div> -->




				</h1>
				<p class="logo">
					<a href="#target1">First Album</a></p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

				<p class="logo">
					<a href="#target2">Second Album</a></p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

				<p class="logo">
					<a href="#target3">Third Album</a></p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					
				<p class="logo">
					<a href="#target4">Fourth  Album</a></p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				
				<p class="logo">
					<a href="#target5">Fifth  Album</a></>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

				<p class="logo">
					<a href="#target6">Sixth   Album</a></p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

					<p class="logo">
					<a href="#target7">Seventh  Album</a></p>
				
			</div>
					<ul class="singer">
						<li class="album">
							<div class="oasis">
					<a name="target1">
							<img class="oasis-cover" src="oasis image/oasis_1.png" alt="">
					</a>
								<div class="oasis-contents">
									<h2>
										
									>1994.08
									<strong>Definitely Maybe</strong>
									</h2>
									<p>i aelbeom-eulo Oasis (oasiseu) joh-eun aelbeom-eun geoliga meolji anhda. "seullaideu eowei (mikkeuleoji da)"wa "laibeu po-ebeo (yeong-wonhi salda)"neun jeonche aelbeom-eul chaj-assseubnida. [hwagsilhi eojjeomyeon (bunmyeonghi amado)]neun keullaesig debwi aelbeom-euloi jangleuui beseuteu jung hanaid</p>
							
								</div>
							</div>
						</li>
						<li class="album">
							<div class="oasis">
								<a name="target2">
								<img class="oasis-cover" src="oasis image/oasis_2.png" alt="">
								</a>
								<div class="oasis-contents">
									<h2>
										1997.03.01
										
										<strong>Morning Glory?</strong>
									</h2>
									<p>All your dreams are made
										When you're chained to the
										mirror and the razor blade
										Today's the day that
										all the world will see
										Another sunny afternoon</p>
								</div>
								
							</div>
						</li>
						<li class="album">
							<div class="oasis">
								<a name="target3">
									<img class="oasis-cover" src="oasis image/oasis_3.png" alt="">
									</a>
									<div class="oasis-contents">
										<h2>
											1997.08.01
										<strong>Be Here Now</strong></h2>
										<p>Wash your face
											in the morning sun
											Flash your pan
											at the song that I'm singing
											Touch down bass
											living on the run
											Make no sweat of the hole</p>
									</div>
								
								
							</div>
						</li>
						<li class="album">
							<div class="oasis">
								<a name="target4">
								<img class="oasis-cover" src="oasis image/oasis_4.png" alt="">
								</a>
								<div class="oasis-contents">
									<h2><a name="target">
										1998.11.03
									</a>
										
									<strong>The Masterplan</strong>
								</h2>
								<p>Take the time to
									make some sense
									Of what you want to say
									And cast your words away
									upon the waves
									Sail them home with acquiesce
									On a ship of hope today
									And as they land upon the </p>
								</div>
								
							</div>
						</li>
						<li class="album">
							<div class="oasis">
								<a name="target5">
								<img class="oasis-cover" src="oasis image/oasis_5.png" alt="">
								</a>
								<div class="oasis-contents">
									<h2>
										2000.02.29
									<strong>Standing on the Shoulder of Giants</strong></h2>
									<p>Here's another sunday morning call
										You hear yer head a banging
										on the door Slip your shoes on
										and then out you crawl
										Into a day that couldn't
										give you more But what for
										And in your head Do you feel
										What you're not supposed to </p>
								</div>
								
							</div>
						</li>
						<li class="album">
							<div class="oasis">
								<a name="target6">
								<img class="oasis-cover" src="oasis image/oasis_6.png" alt="">
								</a>
								<div class="oasis-contents">
									<h2>2002.07.02
										<strong>Heathen Chemistry</strong>
									</h2>
									<p>Hold up
										Hold on
										Don't be scared
										You'll never change
										what's been and gone
										May your smile may your smile
										Shine on shine on</p>
								</div>
								
							</div>
						</li>
						<li class="album">
							<div class="oasis">
								<a name="target7">
								<img class="oasis-cover" src="oasis image/oasis_7.png" alt="">
								</a>
								<div class="oasis-contents">
									<h2>2015.05.27
										<strong>Don't Believe the Truth</strong>
									</h2>
									<p>i carry the madness everywhere i go
										over the border and back to the snow
										so if you see me and i look right through
										you shouldn’t take it as a reflection on you
										come on, turn up the sun
										turn it up for everyone
										love one another, love one another
									</p>
									
								</div>
								
							</div>
						</li>
					
					</ul>
				
			</div>
									

							<!-- <div class="section2" id="skill">
								<h1>Skills</h1>
								<img class="js" src="images/다운로드.png" alt="">
								<img class="html" src="images/html.png" alt="">
								<img class="css" src="images/css.png" alt="">
							</div> -->
		</div>

						<div class="section3">
							
						</div>
					</div>

				</body>
				</html>