<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPEHTML>
<html>
<head>
<base href="<%=basePath%>">

<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body class="home-one">
	<div class="preloader"></div>
	<header class="header clearfix">
		<div class="main-header stricky bubble">
			<div class="container">
				<div class="logo pull-left">
					<a href="${pageContext.request.contextPath}/index.jsp"> <img
						src="${pageContext.request.contextPath}/images/logo/QQ图片20180709201919.png"
						alt="Awesome Image" style="height: 80px; width: 250px;">
					</a>
				</div>

				<div class="nav-outer">
					<div class="header-top">
						<div class="contact">
							<span class="icon fa fa-phone"></span>Call : +(62) 123 456 7890
						</div>
						<div class="register">
							<a href="${pageContext.request.contextPath}/Regist/regist.jsp">注册</a>
							<a href="${pageContext.request.contextPath}/Login/login.jsp">登陆
							</a>
						</div>

						<div id="polyglotLanguageSwitcher">
							<a>中</a>
						</div>
						<div id="top-search" class="top-search">
							<span class="flaticon-search search"></span>
							<ul class="search-box">
								<li>
									<form action="Search">
										<input type="text" placeholder="Search for something..." name="searchtext">
										<button type="submit">
											<i class="fa fa-search"></i>
										</button>
									</form>
								</li>
							</ul>
						</div>
					</div>
					<nav class="mainmenu-area">
						<div class="navbar" role="navigation">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>

							</div>

							<div class="navbar-collapse collapse text-center">
								<ul>
									<li><a href="${pageContext.request.contextPath}/Redirect?name=toIndex">首页</a></li>
									<li><a
										href="${pageContext.request.contextPath}/Redirect?name=toCourse">易趣学</a></li>
									<li><a
										href="${pageContext.request.contextPath}/Redirect?name=toForum">易趣聊</a></li>
									<li><a
										href="${pageContext.request.contextPath}/Redirect?name=toGame">易趣玩</a></li>
									<li><a 
										href="${pageContext.request.contextPath}/Redirect?name=toPerson">学员中心</a></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>

			</div>
		</div>
	</header>
	

	<section class="rev_slider_wrapper">
		<h2 class="hidden">rev slider</h2>
		<div id="slider1" class="rev_slider" data-version="5.0">
			<ul>
				<li class="gradient-overlay" data-transition="slotzoom-horizontal"
					data-slotamount="1" data-masterspeed="1000"
					data-thumb="${pageContext.request.contextPath}/images/main-slider/1.jpg"
					data-saveperformance="off" data-title="Awesome Title Here"><img
					src="${pageContext.request.contextPath}/images/main-slider/1.jpg"
					alt="" data-bgposition="center top" data-bgfit="cover"
					data-bgrepeat="no-repeat">

					<div class="tp-caption lfl sfb tp-resizeme start" data-x="left"
						data-hoffset="30" data-y="center" data-voffset="0"
						data-speed="1500" data-start="1000" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<img
							src="${pageContext.request.contextPath}/images/main-slider/7.png"
							alt="">
					</div>

					<div class="tp-caption lfl sfb tp-resizeme start" data-x="left"
						data-hoffset="245" data-y="center" data-voffset="-190"
						data-speed="1500" data-start="1000" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<img
							src="${pageContext.request.contextPath}/images/main-slider/1.png"
							alt="">
					</div>

					<div class="tp-caption lft sfb tp-resizeme start" data-x="center"
						data-hoffset="50" data-y="center" data-voffset="-110"
						data-speed="1500" data-start="1500" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<img
							src="${pageContext.request.contextPath}/images/main-slider/2.png"
							alt="">
					</div>

					<div class="tp-caption lfr sfb tp-resizeme start" data-x="right"
						data-hoffset="150" data-y="center" data-voffset="-40"
						data-speed="1500" data-start="2000" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<img
							src="${pageContext.request.contextPath}/images/main-slider/4.png"
							alt="">
					</div>

					<div class="tp-caption lfb sfb tp-resizeme start" data-x="center"
						data-hoffset="240" data-y="center" data-voffset="160"
						data-speed="1500" data-start="2500" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<img
							src="${pageContext.request.contextPath}/images/main-slider/3.png"
							alt="">
					</div></li>
				<li class="gradient-overlay overly"
					data-transition="slotzoom-horizontal" data-slotamount="1"
					data-masterspeed="1000"
					data-thumb="${pageContext.request.contextPath}/images/main-slider/2.jpg"
					data-saveperformance="off" data-title="Awesome Title Here"><img
					src="${pageContext.request.contextPath}/images/main-slider/2.jpg"
					alt="" data-bgposition="center top" data-bgfit="cover"
					data-bgrepeat="no-repeat">


					<div class="tp-caption lfl sfb tp-resizeme start" data-x="left"
						data-hoffset="0" data-y="center" data-voffset="0"
						data-speed="1500" data-start="1000" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<img
							src="${pageContext.request.contextPath}/images/main-slider/5.png"
							alt="">
					</div>

					<div class="tp-caption lft sfb tp-resizeme start" data-x="right"
						data-hoffset="0" data-y="center" data-voffset="0"
						data-speed="1500" data-start="1500" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<div class="outer-box">
							<p>EF-Study</p>
							<h3>
								In our School you can <br> learn how to explore new <br>
								Things
							</h3>
						</div>
					</div></li>

				<li class="gradient-overlay" data-transition="slotzoom-horizontal"
					data-slotamount="1" data-masterspeed="1000"
					data-thumb="${pageContext.request.contextPath}/images/main-slider/3.jpg"
					data-saveperformance="off" data-title="Awesome Title Here"><img
					src="${pageContext.request.contextPath}/images/main-slider/3.jpg"
					alt="" data-bgposition="center top" data-bgfit="cover"
					data-bgrepeat="no-repeat">


					<div class="tp-caption lfl sfb tp-resizeme start" data-x="left"
						data-hoffset="0" data-y="center" data-voffset="0"
						data-speed="1500" data-start="1000" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<img
							src="${pageContext.request.contextPath}/images/main-slider/6.png"
							alt="">
					</div>

					<div class="tp-caption lft sfb tp-resizeme start" data-x="left"
						data-hoffset="600" data-y="center" data-voffset="-100"
						data-speed="1500" data-start="1500" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<h2>
							Our goal is provide a complete <br> nurturing environments
						</h2>
					</div>

					<div class="tp-caption lfr sfr tp-resizeme start" data-x="left"
						data-hoffset="600" data-y="center" data-voffset="0"
						data-speed="1500" data-start="2000" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<p>
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem
							accusantium <br>doloremque laudantium, totam rem aperiam.
						</p>
					</div>

					<div class="tp-caption lfb sfb tp-resizeme start" data-x="left"
						data-hoffset="600" data-y="center" data-voffset="80"
						data-speed="1500" data-start="2500" data-easing="easeOutExpo"
						data-splitin="none" data-splitout="none" data-elementdelay="0.01"
						data-endelementdelay="0.3" data-endspeed="1200"
						data-endeasing="Power4.easeIn">
						<a href="#" class="theme-btn btn-style-one">Get Involved</a>
					</div></li>


			</ul>
		</div>
	</section>



	<section class="about">
		<div class="container">

			<div class="row">
				<div class="single-column col-md-6 col-sm-12">
					<div class="wow fadeIn" data-wow-duration="2s"
						data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<div class="post-content">
							<div class="section-title">
								<h2>
									Welcome TO <span>EF-Study</span>
								</h2>
							</div>
							<div class="text">
								<p>We're a childcare centre with an engaging curriculum
									backed by qualified, experienced and passionate teachers! By
									learning about those of differing social, cultural and
									perspectives, young people</p>
							</div>
							<ul class="list">
								<li>Educational field trips and school presentations</li>
								<li>Comprehensive reporting on individual achievement</li>
								<li>Individual attention in a small-class setting</li>
							</ul>
							<div class="link">
								<a href="#" class="read-more">Get Involved</a> <a href="#"
									class="read-more">Join Now</a>
							</div>
						</div>
					</div>


				</div>
				<div class="single-column col-md-6 col-sm-12">
					<div class="wow fadeInRight" data-wow-duration="2s"
						data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<figure class="img-box">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/resource/1.png"
								alt=""></a>
						</figure>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="call-out">
		<div class="container">
			<div class="row">

				<div class="column col-md-9 col-sm-12 col-xs-12">
					<div class="text-left clearfix">
						<h2>Join Now!</h2>
						<p>
							Nothing is more important than your child’s well-being. Join our
							seminars <br>and training and learn how to keep it.
						</p>
					</div>

				</div>

				<div class="column col-md-3 col-sm-12 col-xs-12">
					<div class="text-right padd-top-20">
						<a href="#" class="theme-btn btn-style-one">Get Involved</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="feature">
		<div class="container">
			<div class="section-title center pb-60">
				<h2>
					Our<span>Feature</span>
				</h2>
			</div>
			<div class="row">

				<div class="column col-md-4 col-sm-12">
					<div class="item right">
						<div class="icon">
							<span class="icon-food"></span>
						</div>
						<h4>
							<a href="#">Meals Provided</a>
						</h4>
						<p>Lorem ipsum dolor sit amet cotetur adipisicing elit mod
							tempor incididuntut labore</p>
					</div>
					<div class="item right">
						<div class="icon">
							<span class="icon-blocks"></span>
						</div>
						<h4>
							<a href="#">Language Lessons</a>
						</h4>
						<p>Lorem ipsum dolor sit amet cotetur adipisicing elit mod
							tempor incididuntut labore</p>
					</div>
					<div class="item right">
						<div class="icon">
							<span class="icon-school"></span>
						</div>
						<h4>
							<a href="#">Transportation</a>
						</h4>
						<p>Lorem ipsum dolor sit amet cotetur adipisicing elit mod
							tempor incididuntut labore</p>
					</div>

				</div>

				<div class="column col-md-4 col-sm-12">
					<div class="wow fadeIn" data-wow-duration="2s"
						data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<figure class="img-box">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/resource/2.png"
								alt=""></a>
						</figure>
					</div>

				</div>

				<div class="column col-md-4 col-sm-12">
					<div class="item left">
						<div class="icon">
							<span class="icon-library"></span>
						</div>
						<h4>
							<a href="#">Full Day Session</a>
						</h4>
						<p>Lorem ipsum dolor sit amet cotetur adipisicing elit mod
							tempor incididuntut labore</p>
					</div>
					<div class="item left">
						<div class="icon">
							<span class="icon-paint-1"></span>
						</div>
						<h4>
							<a href="#">Special Education</a>
						</h4>
						<p>Lorem ipsum dolor sit amet cotetur adipisicing elit mod
							tempor incididuntut labore</p>
					</div>
					<div class="item left">
						<div class="icon">
							<span class="icon-gestures"></span>
						</div>
						<h4>
							<a href="#">Qualified Teachers</a>
						</h4>
						<p>Lorem ipsum dolor sit amet cotetur adipisicing elit mod
							tempor incididuntut labore</p>
					</div>

				</div>

			</div>
		</div>
		<div class="see-more">
			<div class="container">
				<div class="text-center">
					<h2>See Our Kindergarten Special Features!</h2>
					<div class="link">
						<a href="#" class="theme-btn btn-style-one">Get Involved</a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="team">
		<div class="container">
			<div class="section-title center pb-60">
				<h2>
					our team <span>member</span>
				</h2>
			</div>

			<div class="team-list">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn"
						data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<div class="item">
							<div class="img-holder">
								<figure>
									<a href="#"><img
										src="${pageContext.request.contextPath}/images/team/1.jpg"
										alt="Awesome Image"></a>
								</figure>
								<div class="content">
									<h2>
										<a href="#">Daryl Dixon</a>
									</h2>
									<p>head teacher</p>
								</div>

							</div>

							<div class="overlay">
								<div class="inner">
									<div class="content">
										<h2>
											<a href="#">Daryl Dixon</a>
										</h2>
										<p>head teacher</p>
									</div>
									<ul class="social">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn"
						data-wow-duration="2s" data-wow-delay="0.6s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<div class="item">
							<div class="img-holder">
								<figure>
									<a href="#"><img
										src="${pageContext.request.contextPath}/images/team/2.jpg"
										alt="Awesome Image"></a>
								</figure>
								<div class="content">
									<h2>
										<a href="#">Jon Snow</a>
									</h2>
									<p>head teacher</p>

								</div>
							</div>
							<div class="overlay">
								<div class="inner">
									<div class="content">
										<h2>
											<a href="#">Jon Snow</a>
										</h2>
										<p>head teacher</p>
									</div>
									<ul class="social">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
							</div>
						</div>


					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn"
						data-wow-duration="2s" data-wow-delay="0.7s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<div class="item">
							<div class="img-holder">
								<figure>
									<a href="#"><img
										src="${pageContext.request.contextPath}/images/team/3.jpg"
										alt="Awesome Image"></a>
								</figure>
								<div class="content">
									<h2>
										<a href="#">Peter Parker</a>
									</h2>
									<p>head teacher</p>
								</div>
							</div>
							<div class="overlay">
								<div class="inner">
									<div class="content">
										<h2>
											<a href="#">Peter Parker</a>
										</h2>
										<p>head teacher</p>
									</div>
									<ul class="social">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn"
						data-wow-duration="2s" data-wow-delay="0.8s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<div class="item">
							<div class="img-holder">
								<figure>
									<a href="#"><img
										src="${pageContext.request.contextPath}/images/team/4.jpg"
										alt="Awesome Image"></a>
								</figure>
								<div class="content">
									<h2>
										<a href="#">Luck Walker</a>
									</h2>
									<p>head teacher</p>
								</div>
							</div>
							<div class="overlay">
								<div class="inner">
									<div class="content">
										<h2>
											<a href="#">Luck Walker</a>
										</h2>
										<p>head teacher</p>
									</div>
									<ul class="social">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>


		</div>
	</section>



	<section class="shop">
		<div class="container">
			<div class="section-title center pb-60">
				<h2>
					Our Latest <span>Products</span>
				</h2>
			</div>


			<div class="team-list row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="item wow fadeIn" data-wow-duration="2s"
						data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<figure class="img-holder">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/product/1.jpg"
								alt="Awesome Image"></a>
						</figure>
						<div class="content">
							<h2>
								<a href="#">Jigsaw box alphabets</a>
							</h2>
							<p>$ 85</p>
							<div class="cart">
								<a href="cart-page.html"><span class="flaticon-shop"></span></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="item wow fadeIn" data-wow-duration="2s"
						data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<figure class="img-holder">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/product/2.jpg"
								alt="Awesome Image"></a>
						</figure>
						<div class="content">
							<h2>
								<a href="#">Jigsaw box alphabets</a>
							</h2>
							<p>$ 85</p>
							<div class="cart">
								<a href="cart-page.html"><span class="flaticon-shop"></span></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="item wow fadeIn" data-wow-duration="2s"
						data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<figure class="img-holder">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/product/3.jpg"
								alt="Awesome Image"></a>
						</figure>
						<div class="content">
							<h2>
								<a href="#">Jigsaw box alphabets</a>
							</h2>
							<p>$ 85</p>
							<div class="cart">
								<a href="cart-page.html"><span class="flaticon-shop"></span></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="item wow fadeIn" data-wow-duration="2s"
						data-wow-delay="0.5s" data-wow-offset="0"
						style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
						<figure class="img-holder">
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/product/4.jpg"
								alt="Awesome Image"></a>
						</figure>
						<div class="content">
							<h2>
								<a href="#">Jigsaw box alphabets</a>
							</h2>
							<p>$ 85</p>
							<div class="cart">
								<a href="cart-page.html"><span class="flaticon-shop"></span></a>
							</div>
						</div>
					</div>
				</div>


			</div>

		</div>
	</section>



	<section class="footer">
		<div class="footer-upper">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6 col-xs-12 column">
						<div class="item center">
							<div class="icon">
								<span class="icon-location"></span>
							</div>
							<div class="content">
								<h4>
									<a href="#">Address</a>
								</h4>
								<p>
									EF-Study 09 First Floor Downtown <br> st, Victoria,
									Australia - 0078
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12 column">
						<div class="item center">
							<div class="icon">
								<span class="icon-technology-2"></span>
							</div>
							<div class="content">
								<h4>
									<a href="#">Phone number</a>
								</h4>
								<p>+(62) 123 456 7890</p>
								<p>+(62) 123 456 7893</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12 column">
						<div class="item center">
							<div class="icon">
								<span class="icon-interface"></span>
							</div>
							<div class="content">
								<h4>
									<a href="#">Email id</a>
								</h4>
								<p>Nashville@Support.com</p>
								<p>YourAddress@info.com</p>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="footer-bottom">
			<div class="footer-bottom-bg">
				<div class="container">
					<div class="pull-left">
						<figure>
							<a href="${pageContext.request.contextPath}/Redirect?name=toIndex"><img
								src="${pageContext.request.contextPath}/images/logo/QQ图片20180709201919.png"
								alt="" style="height: 80px; width: 250px;"></a>
						</figure>
					</div>
					<div class="pull-right">
						<div class="menu">
							<ul class="clearfix">
									<li><a href="${pageContext.request.contextPath}/Redirect?name=toIndex">首页</a></li>
									<li><a
										href="${pageContext.request.contextPath}/Redirect?name=toCourse">易趣学</a></li>
									<li><a
										href="${pageContext.request.contextPath}/Redirect?name=toForum">易趣聊</a></li>
									<li><a
										href="${pageContext.request.contextPath}/Redirect?name=toGame">易趣玩</a></li>
									<li><a 
										href="${pageContext.request.contextPath}/Redirect?name=toPerson">学员中心</a></li>
							</ul>
						</div>
						<div class="copy-right">Copyright &copy; 2017.Company name
							All rights reserved.</div>
					</div>
				</div>
			</div>

		</div>
	</section>


	<!--Scroll to top-->
	<div class="scroll-to-top">
		<i class="fa fa-long-arrow-up"></i>
	</div>

	<!-- jQuery js -->
	<script
		src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.3.min.js"></script>
	<!-- bootstrap js -->
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- jQuery ui js -->
	<script
		src="${pageContext.request.contextPath}/assets/jquery-ui-1.11.4/jquery-ui.js"></script>

	<!-- wow js -->
	<script src="${pageContext.request.contextPath}/assets/wow.js"></script>

	<!-- owl carousel js -->
	<script
		src="${pageContext.request.contextPath}/assets/owl.carousel-2/owl.carousel.min.js"></script>
	<!-- jquery.bxslider js -->
	<script
		src="${pageContext.request.contextPath}/assets/jquery.bxslider/jquery.bxslider.min.js"></script>
	<!-- jQuery validation -->
	<script
		src="${pageContext.request.contextPath}/assets/jquery-validation/dist/jquery.validate.min.js"></script>
	<!-- gmap.js helper -->
	<!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRvBPo3-t31YFk588DpMYS6EqKf-oGBSI"></script>-->
	<!-- gmap.js -->
	<!--<script src="assets/gmaps.js"></script>-->

	<!-- mixit u -->
	<script
		src="${pageContext.request.contextPath}/assets/jquery.mixitup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/jquery.countdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/masterslider/masterslider.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/SmoothScroll.js"></script>

	<!-- revolution slider js -->
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/revolution/js/extensions/revolution.extension.video.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/Polyglot-Language-Switcher-master/js/jquery.polyglot.language.switcher.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/fancyapps-fancyBox/source/jquery.fancybox.pack.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/scrollbar.js"></script>

	<!--<script src="js/default-map-script.js"></script>-->
	<script src="${pageContext.request.contextPath}/js/script.js"></script>








</body>
</html>
