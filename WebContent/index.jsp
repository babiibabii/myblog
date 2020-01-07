
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="colorlib">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Blogger</title>
<script>
	if (window.location.href != "http://localhost:8080/blog/index.jsp")
		window.location.href = "http://localhost:8080/blog/index.jsp";
</script>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
			CSS
			============================================= -->
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<!-- Start Header Area -->

	<header class="default-header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand" href="index.html"> <img
					src="img/logo.png" alt="">
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div
					class="collapse navbar-collapse justify-content-end align-items-center"
					id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li><a href="#home">Home</a></li>
						<li><a href="#news">News</a></li>
						<li><a href="#travel">Travel</a></li>
						<li><a href="#fashion">fashion</a></li>
						<li><a href="#team">team</a></li>
						<!-- Dropdown -->
						<li class="dropdown"><a class="dropdown-toggle" href="#"
							id="navbardrop" data-toggle="dropdown"> Pages </a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="content/postBlog.jsp">PostBlog</a>
								<a	class="dropdown-item"
									href="http://localhost:8080/blog/GetAllBlog">Refresh</a>
								<c:choose>
									<c:when test="${not empty sessionScope.currentUser  }">
										<a class="dropdown-item" href="content/login.jsp">Logout</a>
									</c:when>
									<c:otherwise>
										<a class="dropdown-item" href="content/login.jsp">Login</a>
									</c:otherwise>
								</c:choose>
							</div>
							</li>
							<li><a href="personalDetail.jsp">personal</a></li>
		
						<c:if
							test="${not empty sessionScope.currentUser and sessionScope.currentUser.userType == 1 }">
							<li class="dropdown"><a class="dropdown-toggle" href="#"
								id="navbardrop" data-toggle="dropdown"> Welcome
									${sessionScope.currentUser.userName } </a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="content/newCategory.jsp">AddCategory</a>
								</div></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End Header Area -->
	<!-- start banner Area -->
	<section class="banner-area relative" id="home" data-parallax="scroll"
		data-image-src="img/header-bg.jpg">
		<div class="overlay-bg overlay"></div>
		<div class="container">
			<div class="row fullscreen">
				<div
					class="banner-content d-flex align-items-center col-lg-12 col-md-12">
					<h1>
						A Discount Toner Cartridge <br> Is Better Than Ever.
					</h1>
				</div>
				<div
					class="head-bottom-meta d-flex justify-content-between align-items-end col-lg-12">
					<div class="col-lg-6 flex-row d-flex meta-left no-padding">
						<p>
							<span class="lnr lnr-heart"></span> 15 Likes
						</p>
						<p>
							<span class="lnr lnr-bubble"></span> 02 Comments
						</p>
					</div>
					<div
						class="col-lg-6 flex-row d-flex meta-right no-padding justify-content-end">
						<div class="user-meta">
							<h4 class="text-white">Mark wiens</h4>
							<p>12 Dec, 2017 11:21 am</p>
						</div>
						<img class="img-fluid user-img" src="img/user.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->


	<!-- Start category Area -->
	<section class="category-area section-gap" id="news">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Latest News from all categories</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
			<div class="active-cat-carusel">
				<div class="item single-cat">
					<img src="img/c1.jpg" alt="">
					<p class="date">10 Jan 2018</p>
					<h4>
						<a href="#">It S Hurricane Season Visiting Hilton</a>
					</h4>
				</div>
				<div class="item single-cat">
					<img src="img/c2.jpg" alt="">
					<p class="date">10 Jan 2018</p>
					<h4>
						<a href="#">What Makes A Hotel Boutique</a>
					</h4>
				</div>
				<div class="item single-cat">
					<img src="img/c3.jpg" alt="">
					<p class="date">10 Jan 2018</p>
					<h4>
						<a href="#">Les Houches The Hidden Gem Valley</a>
					</h4>
				</div>
			</div>
		</div>
	</section>
	<!-- End category Area -->

	<!-- Start travel Area -->
	<section class="travel-area section-gap" id="travel">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Hot topics from Travel Section</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 travel-left">
					<div class="single-travel media pb-70">
						<img class="img-fluid d-flex  mr-3" src="img/t1.jpg" alt="">
						<div class="dates">
							<span>20</span>
							<p>Dec</p>
						</div>
						<div class="media-body align-self-center">
							<h4 class="mt-0">
								<a href="#">Addiction When Gambling Becomes A Problem</a>
							</h4>
							<p>inappropriate behavior Lorem ipsum dolor sit amet,
								consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p>
									<span class="lnr lnr-heart"></span> 15 Likes
								</p>
								<p>
									<span class="lnr lnr-bubble"></span> 02 Comments
								</p>
							</div>
						</div>
					</div>
					<div class="single-travel media">
						<img class="img-fluid d-flex  mr-3" src="img/t3.jpg" alt="">
						<div class="dates">
							<span>20</span>
							<p>Dec</p>
						</div>
						<div class="media-body align-self-center">
							<h4 class="mt-0">
								<a href="#">Addiction When Gambling Becomes A Problem</a>
							</h4>
							<p>inappropriate behavior Lorem ipsum dolor sit amet,
								consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p>
									<span class="lnr lnr-heart"></span> 15 Likes
								</p>
								<p>
									<span class="lnr lnr-bubble"></span> 02 Comments
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 travel-right">
					<div class="single-travel media pb-70">
						<img class="img-fluid d-flex  mr-3" src="img/t2.jpg" alt="">
						<div class="dates">
							<span>20</span>
							<p>Dec</p>
						</div>
						<div class="media-body align-self-center">
							<h4 class="mt-0">
								<a href="#">Addiction When Gambling Becomes A Problem</a>
							</h4>
							<p>inappropriate behavior Lorem ipsum dolor sit amet,
								consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p>
									<span class="lnr lnr-heart"></span> 15 Likes
								</p>
								<p>
									<span class="lnr lnr-bubble"></span> 02 Comments
								</p>
							</div>
						</div>
					</div>
					<div class="single-travel media">
						<img class="img-fluid d-flex  mr-3" src="img/t4.jpg" alt="">
						<div class="dates">
							<span>20</span>
							<p>Dec</p>
						</div>
						<div class="media-body align-self-center">
							<h4 class="mt-0">
								<a href="#">Addiction When Gambling Becomes A Problem</a>
							</h4>
							<p>inappropriate behavior Lorem ipsum dolor sit amet,
								consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p>
									<span class="lnr lnr-heart"></span> 15 Likes
								</p>
								<p>
									<span class="lnr lnr-bubble"></span> 02 Comments
								</p>
							</div>
						</div>
					</div>
				</div>
				<a href="#"
					class="primary-btn load-more pbtn-2 text-uppercase mx-auto mt-60">Load
					More </a>
			</div>
		</div>
	</section>
	<!-- End travel Area -->
	<div class="tlinks">
		Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
	</div>
	<!-- Start fashion Area -->
	<section class="fashion-area section-gap" id="fashion">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Fashion News This Week</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 single-fashion">
					<img class="img-fluid" src="img/f1.jpg" alt="">
					<p class="date">10 Jan 2018</p>
					<h4>
						<a href="#">Addiction When Gambling Becomes A Problem</a>
					</h4>
					<p>inappropriate behavior ipsum dolor sit amet, consectetur.</p>
					<div class="meta-bottom d-flex justify-content-between">
						<p>
							<span class="lnr lnr-heart"></span> 15 Likes
						</p>
						<p>
							<span class="lnr lnr-bubble"></span> 02 Comments
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-fashion">
					<img class="img-fluid" src="img/f2.jpg" alt="">
					<p class="date">10 Jan 2018</p>
					<h4>
						<a href="#">Addiction When Gambling Becomes A Problem</a>
					</h4>
					<p>inappropriate behavior ipsum dolor sit amet, consectetur.</p>
					<div class="meta-bottom d-flex justify-content-between">
						<p>
							<span class="lnr lnr-heart"></span> 15 Likes
						</p>
						<p>
							<span class="lnr lnr-bubble"></span> 02 Comments
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-fashion">
					<img class="img-fluid" src="img/f3.jpg" alt="">
					<p class="date">10 Jan 2018</p>
					<h4>
						<a href="#">Addiction When Gambling Becomes A Problem</a>
					</h4>
					<p>inappropriate behavior ipsum dolor sit amet, consectetur.</p>
					<div class="meta-bottom d-flex justify-content-between">
						<p>
							<span class="lnr lnr-heart"></span> 15 Likes
						</p>
						<p>
							<span class="lnr lnr-bubble"></span> 02 Comments
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 single-fashion">
					<img class="img-fluid" src="img/f4.jpg" alt="">
					<p class="date">10 Jan 2018</p>
					<h4>
						<a href="#">Addiction When Gambling Becomes A Problem</a>
					</h4>
					<p>inappropriate behavior ipsum dolor sit amet, consectetur.</p>
					<div class="meta-bottom d-flex justify-content-between">
						<p>
							<span class="lnr lnr-heart"></span> 15 Likes
						</p>
						<p>
							<span class="lnr lnr-bubble"></span> 02 Comments
						</p>
					</div>
				</div>
				<a href="#"
					class="primary-btn load-more pbtn-2 text-uppercase mx-auto mt-60">Load
					More </a>
			</div>
		</div>
	</section>
	<!-- End fashion Area -->

	<!-- Start team Area -->
	<section class="team-area section-gap" id="team">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">About Blogger Team</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-lg-6 team-left">
					<p>inappropriate behavior is often laughed off as “boys will be
						boys,” women face higher conduct standards especially in the
						workplace. That’s why it’s crucial that, as women, our behavior on
						the job is beyond reproach. inappropriate behavior is often
						laughed off as “boys will be boys,” women face higher conduct
						standards especially in the workplace. That’s why it’s crucial
						that.</p>
					<p>inappropriate behavior is often laughed off as “boys will be
						boys,” women face higher conduct standards especially in the
						workplace. That’s why it’s crucial that, as women.</p>
				</div>
				<div class="col-lg-6 team-right d-flex justify-content-center">
					<div class="row active-team-carusel">
						<div class="single-team">
							<div class="thumb">
								<img class="img-fluid" src="img/team1.jpg" alt="">
								<div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
							<div class="meta-text mt-30 text-center">
								<h4>Dora Walker</h4>
								<p>Senior Core Developer</p>
							</div>
						</div>
						<div class="single-team">
							<div class="thumb">
								<img class="img-fluid" src="img/team2.jpg" alt="">
								<div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
							<div class="meta-text mt-30 text-center">
								<h4>Lena Keller</h4>
								<p>Creative Content Developer</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End team Area -->

	<!-- start footer Area -->
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-12">
					<div class="single-footer-widget">
						<h6>Top Products</h6>
						<ul class="footer-nav">
							<li><a href="#">Managed Website</a></li>
							<li><a href="#">Manage Reputation</a></li>
							<li><a href="#">Power Tools</a></li>
							<li><a href="#">Marketing Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6  col-md-12">
					<div class="single-footer-widget newsletter">
						<h6>Newsletter</h6>
						<p>You can trust us. we only send promo offers, not a single
							spam.</p>
						<div id="mc_embed_signup">
							<form target="_blank" novalidate
								action="#/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">

								<div class="form-group row" style="width: 100%">
									<div class="col-lg-8 col-md-12">
										<input name="EMAIL" placeholder="Enter Email"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter Email '" required=""
											type="email">
										<div style="position: absolute; left: -5000px;">
											<input name="b_36c4fd991d266f23781ded980_aefe40901a"
												tabindex="-1" value="" type="text">
										</div>
									</div>

									<div class="col-lg-4 col-md-12">
										<button class="nw-btn primary-btn">
											Subscribe<span class="lnr lnr-arrow-right"></span>
										</button>
									</div>
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-12">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instragram Feed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="img/i1.jpg" alt=""></li>
							<li><img src="img/i2.jpg" alt=""></li>
							<li><img src="img/i3.jpg" alt=""></li>
							<li><img src="img/i4.jpg" alt=""></li>
							<li><img src="img/i5.jpg" alt=""></li>
							<li><img src="img/i6.jpg" alt=""></li>
							<li><img src="img/i7.jpg" alt=""></li>
							<li><img src="img/i8.jpg" alt=""></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="row footer-bottom d-flex justify-content-between">

				<p class="col-lg-8 col-sm-12 footer-text">
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | made with Colorlib - More Templates <a
						href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
					- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
						target="_blank">网页模板</a>
				</p>

				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/main.js"></script>
</body>
</html>