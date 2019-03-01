<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">
	
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js">
</script>
<script type="text/javascript">
  $(function test(){
       $.ajax({
             type:"GET",
             url:"<%=request.getContextPath()%>/wrongbook",
             cache: false,
             data:"name=ALL",
             dataType:"json",
             success:function(json){
            	 var tem = "";
            	 for(var i=0,l=json.length;i<l;i++){
            		 
            		  tem+="<div class='col-md-3 col-sm-6 col-xs-12'>"
                      tem+="<div class='item wow fadeIn' data-wow-duration='2s' data-wow-delay='0.5s' data-wow-offset='0' style='visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;'>";                   
                      tem+="<a href='${pageContext.request.contextPath}/spequestion?homeworkid="+json[i].homeworkid+"'>";
                      tem+="<div class='content'>";
                      tem+="<h2>"+json[i].homeworkid+"</h2>";
                      tem+="<p>"+json[i].wrongans+"</p>";
                      tem+="</a>";
                      tem+="</div></div></div>"; 
            	      
            	 }
            	 $("#wrong_book").append(tem);
             }  
      }); 
  });
</script>

</head>
<body class="single-product-page">
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
        <h2>person home</h2>
        <ul>
            <li><a>我的信息</a></li>
        </ul>
    </div>
</section>


<section class="blog-page-content latest-news section-padding shop-page single-blog-page single-class-content">
    <div class="container">
        <div class="single-product-box">
            <div class="row">
                <div class="col-md-6">
                    <div class="product-info">
                        <div class="single-product-carousel-content-box owl-carousel owl-theme">
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/person/images/personphoto/person1.jpg" style= "width:400px;height:400px;">
                            </div>
                             <div class="item">
                                <img src="${pageContext.request.contextPath}/person/images/personphoto/person2.jpg"  style= "width:400px;height:400px;">
                            </div>
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/person/images/personphoto/person3.jpg" style= "width:400px;height:400px;">
                            </div> 
                            
                        </div>
                        <div class="single-product-carousel-thumbnail-box owl-carousel owl-theme" style="margin-left:16%">                                  
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/person/images/personphoto/person1.jpg" style= "width:100px;height:100px;">
                            </div>
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/person/images/personphoto/person2.jpg" style= "width:100px;height:100px;">
                            </div>
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/person/images/personphoto/person3.jpg" style= "width:100px;height:100px;">
                            </div>
                        </div>
                        <div class="link"><a href="cart-page.html"><span class="icon-add"></span></a></div>
                    </div>
                        

                </div>
                <div class="col-md-6">
                    <div class="top-box clearfix">
                        <div class="text-box">
                            <h3>用户信息</h3>
                        </div>
                        <div class="text">
                            <p>用户姓名</p><span>${user.username}</span><!-- <span>${SessionUer.username}</span> -->
                            <p>用户ID</p><span>${user.id}</span><!-- <span>${SessionUer.id}</span> -->
                             <p>用户邮箱</p><span>${user.email}</span><!-- <span>${SessionUer.email}</span> -->
                             <p>亲情账号</p><span>${user.parentid}</span>
                        </div>
						<div class="text">
						 <p>上次登陆时间</p><span>${time.logintime}</span>
						 <p>学习总时长</p><span>${time.hour}</span><span> 时</span><span>${time.minute}</span><span> 分</span><span>${time.second}</span><span> 秒</span>
						 <p>游戏总时长</p><span>${time.ghour}</span><span> 时</span><span>${time.gminute}</span><span> 分</span><span>${time.gsecond}</span><span> 秒</span>
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
            <h2>错题  <span> 本</span></h2>
        </div>


        <div class="team-list row" id="wrong_book">
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

