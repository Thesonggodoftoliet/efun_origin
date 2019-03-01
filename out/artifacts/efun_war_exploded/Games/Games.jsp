<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import= "servlet.CourseServlet"  %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>易趣玩</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common-style.css">
    <link href="${pageContext.request.contextPath}/css/coursepage.css" rel="stylesheet" type="text/css"/>
   <!-- <link type="text/css" rel="stylesheet" href="../course/css/login.css"> --> 

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
									<form action="#">
										<input type="text" placeholder="Search for something...">
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
									<li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
									<li><a href="${pageContext.request.contextPath}/coursepage/coursepage2.jsp">易趣学</a></li>
									<li><a href="${pageContext.request.contextPath}/Forum?name=getAll">易趣聊</a></li>
									<li><a href="${pageContext.request.contextPath}/Games/Games.jsp">易趣玩</a></li>
									<li><a href="${pageContext.request.contextPath}/Person">学员中心</a></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>

			</div>
		</div>
	</header>

<section class="page-title center">
    <div class="container">
        <h2>Games</h2>
        <ul>
            <li><a href="${pageContext.request.contextPath}/Games/Games.jsp">Games</a></li>
        </ul>
    </div>
</section>

<section class="event style-2">
    <div class="container">

        <div class="row">
            <div class="col-md-4 col-sm-6 col-xsw-12 item wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                <div class="img-holder">
                    <figure><a href="${pageContext.request.contextPath}/Games/snake.jsp"><img src="${pageContext.request.contextPath}/Games/snake/Snake.png" alt="Awesome Image" style="height:200px;width:400px"></a></figure>
                    <div class="content bg-color-1">
                        <div class="inner-box">
                            <h4><a href="#">Snake</a></h4>
                        </div>
                    </div>
                    
                </div>

            </div>
            <div class="col-md-4 col-sm-6 col-xsw-12 item wow fadeIn" data-wow-duration="2s" data-wow-delay="0.6s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                <div class="img-holder">
                    <figure><a href="${pageContext.request.contextPath}/Games/html5gamePk/runningman.jsp"><img src="${pageContext.request.contextPath}/Games/html5gamePk/RunningMan.png" alt="Awesome Image" style="height:200px;width:400px"></a></figure>
                    <div class="content bg-color-2">
                        <div class="inner-box">
                            <h4><a href="#">Running Man</a></h4>
                        </div>
                            
                    </div>
                    
                </div>
                
            </div>
  

        </div>

    </div>
</section>


	<section class="footer">

		<div class="footer-bottom">
			<div class="footer-bottom-bg">
				<div class="container">
					<div class="pull-left">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/images/logo/QQ图片20180709201919.png"
								alt="" style="height: 80px; width: 250px;"></a>
						</figure>
					</div>
					<div class="pull-right">
						<div class="menu">
							<ul class="clearfix">
									<li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
									<li><a href="${pageContext.request.contextPath}/coursepage/coursepage2.jsp">易趣学</a></li>
									<li><a href="${pageContext.request.contextPath}/Forum?name=getAll">易趣聊</a></li>
									<li><a href="${pageContext.request.contextPath}/Games/Games.jsp">易趣玩</a></li>
									<li><a href="${pageContext.request.contextPath}/Person">学员中心</a></li>
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
	<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.3.min.js"></script>
	<!-- bootstrap js -->
	<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- jQuery ui js -->
	<script src="${pageContext.request.contextPath}/assets/jquery-ui-1.11.4/jquery-ui.js"></script>


	<!-- wow js -->
	<script src="${pageContext.request.contextPath}/assets/wow.js"></script>

	<!-- owl carousel js -->
	<script src="${pageContext.request.contextPath}/assets/owl.carousel-2/owl.carousel.min.js"></script>
	<!-- jquery.bxslider js -->
	<script src="${pageContext.request.contextPath}/assets/jquery.bxslider/jquery.bxslider.min.js"></script>
	<!-- jQuery validation -->
	<script src="${pageContext.request.contextPath}/assets/jquery-validation/dist/jquery.validate.min.js"></script>
	<!-- gmap.js helper -->
	<!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRvBPo3-t31YFk588DpMYS6EqKf-oGBSI"></script>-->
	<!-- gmap.js -->
	<!--<script src="assets/gmaps.js"></script>-->

	<!-- mixit u -->
	<script src="${pageContext.request.contextPath}/assets/jquery.mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/jquery.countdown.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/masterslider/masterslider.js"></script>
	<script src="${pageContext.request.contextPath}/Forum/assets/SmoothScroll.js"></script>

	<!-- revolution slider js -->
	<script src="${pageContext.request.contextPath}/assets/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/revolution/js/jquery.themepunch.revolution.min.js"></script>
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
	<script src="${pageContext.request.contextPath}/assets/fancyapps-fancyBox/source/jquery.fancybox.pack.js"></script>
	<script src="${pageContext.request.contextPath}/assets/scrollbar.js"></script>

	<!--<script src="js/default-map-script.js"></script>-->
	<script src="${pageContext.request.contextPath}/js/script.js"></script>

</body>

</html>




