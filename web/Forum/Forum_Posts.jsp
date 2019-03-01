<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPEhtml>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
<title>易趣聊</title>
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
								<li><a
									href="${pageContext.request.contextPath}/coursepage/coursepage2.jsp">易趣学</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Forum?name=getAll">易趣聊</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Games/Games.jsp">易趣玩</a></li>
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
			<h2>Forum</h2>
			<ul>
				<li><a href="${pageContext.request.contextPath}/Forum?name=getAll">Forum</a></li>
				<li><a href="#">Posts</a></li>
			</ul>
		</div>
	</section>
	

<section class="contact-us">
    <div class="container">
        <div class="section-title center">
                <h2>Drop A <span>message</span></h2>
            </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3 col-sm-12">
                <div class="contact-box">

                    <form method="post" action="${pageContext.request.contextPath}/Forum?name=posts" id="form">
                            
                        <div class="row clearfix">


                            <div class="form-group col-lg-6 col-md-6 col-xs-12">
                                <input type="text" name="title" placeholder="Title" form="form">
                            </div>
                            
                            <div class="form-group col-lg-12 col-sm-12 col-xs-12">
                                <textarea name="message" placeholder="Message(200字以内)" form="form"></textarea>
                            </div>

                            <div class="form-group col-lg-12 center">
                                <button type="submit" name="submit" class="btn-style-one center" value="Submit">Submit</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <button type="button" name="clear" class="btn-style-one center" value = "Clear">Clear</button>
                            </div>
                        </div>
                    </form>
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
								<li><a
									href="${pageContext.request.contextPath}/coursepage/coursepage2.jsp">易趣学</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Forum?name=getAll">易趣聊</a></li>
								<li><a
									href="${pageContext.request.contextPath}/Games/Games.jsp">易趣玩</a></li>
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
<div class="scroll-to-top"><i class="fa fa-long-arrow-up"></i></div>


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