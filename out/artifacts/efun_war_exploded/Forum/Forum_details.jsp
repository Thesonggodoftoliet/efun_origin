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





<title>易趣聊</title>
</head>
<!--<form action="${pageContext.request.contextPath}/Forum?name=getAll" method="post" name="form1"></form>  -->
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
				<li><a href="#">details</a></li>
			</ul>
		</div>
	</section>



	<!--Cart Section-->
	<section class="cart-section">
		<div class="container">

			<!--Cart Outer-->
			<div class="cart-outer">
				<div class="table-outer"> 
					<table class="cart-table">
						<thead class="cart-header">
							<tr>
								<th class="prod-column">&nbsp&nbsp Num</th>
								<th class="price">author</th>
								<th>Details</th>
								<th>Lastreply</th>
								<th class="remove"><a href="#" class="remove-btn"><span
										class="fa fa-trash-o"></span></a></th>
							</tr>
						</thead>

						
						<tbody>
							<c:forEach items="${replies}" var="reply" varStatus="i">
								<!-- for(Student post : posts) -->
								<tr>
									<!--  
								<td colspan="2" class="prod-column">
									<div class="column-box">
										<h3 class="prod-title padd-top-20">${post.poststitle}</h3>
									</div>
								</td>
								-->
									<td class="prod-column"><a href="#"
										style="color: orange; font-family: Microsoft YaHei;">${i.count}</a></td>
									<td class="price">${users[i.count-1].username}</td>
									<td class="price">${reply.repliesdetails}</td>
									<td class="sub-total">${reply.repliestime}</td>
									<td class="remove"><a href="#" class="remove-btn"><span
											class="fa fa-times"></span></a></td>
								</tr>
								<!-- 修改提交的路径 依然是studnet的servlet  但是需要通过一个参数来区分动作  action -->
							</c:forEach>

						</tbody>
					</table>
				</div>

				<div class="update-cart-box clearfix">
					<div class="pull-left">
						<div class="apply-coupon clearfix">
							<div class="form-group clearfix"></div>
							<div class="form-group clearfix">
							<form action="${pageContext.request.contextPath}/Forum?name=reply&id=${postsid}" method="post" id="form">
								<button type="submit" class="thm-btn thm-blue-bg btn-style-one" form="form">回复</button></form>
							</div>
						</div>
					</div>

					<div class="pull-right">
						<button type="button" class="thm-btn update-cart btn-style-one" onclick="alert('当前已是第一页')">上一页</button>
						<a>1</a>
						<button type="button" class="thm-btn update-cart btn-style-one" onclick="alert('当前已是最后一页')">下一页</button>
						&nbsp;
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