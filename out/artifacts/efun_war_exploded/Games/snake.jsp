<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="servlet.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">
	
	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Games/snake/css/index.css">

<!-- 护眼专心学习 -->
	<script type="text/javascript">
		function closewin() {
			alert("请注意保护眼睛哦！");
			Quitfun();
			self.opener = null;
			self.close();
		}
		function clock() {
			i = i - 1
			if (i > 0)
				setTimeout("clock();", 1000);
			else
				closewin();
		}
		var i = 60;
		clock();
	</script>

<!-- 时间上传 -->
<script type="text/javascript" src= "${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
var date1 = new Date(); //创建对象  
var sss1 = date1.getTime();
	//这里代码多了几行，但是不会延迟显示，速度比较好，格式可以自定义，是理想的时间显示

	function Quitfun() {
		var date = new Date(); //创建对象  
		var sss = date.getTime();
		$.post("${pageContext.request.contextPath}/Gettime",{
			action:"game",
			sss:sss,
			sss1:sss1},
			function(){
		});
		}
</script>



<title>Snake</title>
</head>
<!--<form action="${pageContext.request.contextPath}/Forum?name=getAll" method="post" name="form1"></form>  -->
<body class="home-one" onbeforeunload="Quitfun()">
	<div class="preloader"></div>
	<header class="header clearfix">
		<div class="main-header stricky bubble">
			<div class="container">
				<div class="logo pull-left">
					<a href="index.html"> <img
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
				<li><a href="#">Snake</a></li>
			</ul>
		</div>
	</section>


		<div class="game-wrap clearfix">
		<div id="snake_box" class="snake-box"></div>
		<div class="right-operate">
			<div class="mb-10">
				得分：<span class="label label-success font-18" id="grade">0</span>
			</div>
			<div class="form-group">
				<select class="form-control" id="speed_select">
					<option value="slow">慢速</option>
					<option value="medium">中等</option>
					<option value="fast">快速</option>
				</select>
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-primary" id="start_btn">开始游戏</button>
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-warning" id="pause_btn">暂停游戏</button>
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-info" id="continue_btn">继续游戏</button>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/Games/snake/js/tool.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Games/snake/js/food.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Games/snake/js/snake.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Games/snake/js/Game.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Games/snake/js/index.js"></script>






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