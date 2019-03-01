<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import= "servlet.CourseServlet"  %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>易趣学</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common-style.css">
    <link href="${pageContext.request.contextPath}/coursepage/css/coursepage.css" rel="stylesheet" type="text/css"/>
   <!-- <link type="text/css" rel="stylesheet" href="../course/css/login.css"> --> 

<script type="text/javascript" src= "${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	//这里代码多了几行，但是不会延迟显示，速度比较好，格式可以自定义，是理想的时间显示

	function Quitfun() {
		var date = new Date(); //创建对象  
		var y = date.getFullYear(); //获取年份  
		var m = date.getMonth() + 1; //获取月份  返回0-11  
		var d = date.getDate(); // 获取日  
		var w = date.getDay(); //获取星期几  返回0-6   (0=星期天) 
		var ww = ' 星期' + '日一二三四五六'.charAt(new Date().getDay());//星期几
		var h = date.getHours(); //时
		var minute = date.getMinutes() //分
		var s = date.getSeconds(); //秒
		if (m < 10) {
			m = "0" + m;
		}
		if (d < 10) {
			d = "0" + d;
		}
		if (h < 10) {
			h = "0" + h;
		}
		if (minute < 10) {
			minute = "0" + minute;
		}
		if (s < 10) {
			s = "0" + s;
		}
		var day =y+"-"+m+"-"+d+" "+h+":"+minute+":"+s;
		$.post("${pageContext.request.contextPath}/Gettime",{
			action:"login",
			day:day
		});
		}
</script>

<!-- 彭依琳    2018-07-10-11：27   尝试本页面进行局部加载（标签为all/all）   -->   
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js">
</script>
<script type="text/javascript">
  $(function test(){
       $.ajax({
             type:"GET",
             url:"<%=request.getContextPath()%>/CourseServlet ",
             cache: false,
             data:"name=ALL",
             dataType:"json",
             success:function(json){
            	   // alert("hhhhhhhhhhhh");
            	    var tem = "<section class='event style-2'><div class='container'><div class='row'>";
            	 for(var i=0,l=json.length;i<l;i++){
            		  tem+="<div class='col-md-4 col-sm-6 col-xsw-12 item wow fadeIn' data-wow-duration='2s' data-wow-delay='0."+(i+5)+"s' data-wow-offset='0' style='visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;'>";
                      tem+="<div class='img-holder'><figure>";
                      tem+="<a href='${pageContext.request.contextPath}/startClass?courseid="+json[i].courseid+"'>";
                      tem+=" <img src='${pageContext.request.contextPath}"+json[i].photopath+"'>";
                      tem+="</a>"+"</figure>";
                      tem+="<div class='content bg-color-1'><div class='inner-box'><div class='btn-box'><div class='count'>25</div><div class='month'>July</div></div>";
                      tem+="<h4><a href='#'>"+json[i].coursename+"</a></h4>";
                      tem+="<p><span class='fa fa-clock-o'></span> 8.00 am to 12.00 pm</p>";
                      tem+="<p><span class='fa fa-map-marker'></span>"+json[i].courseinfo+"</p>";
                      tem+="</div></div> </div></div>";  
            	      
            	}
            	 tem+="</div><div class='link-btn center'><a href='#' class='theme-btn btn-style-one'>load more</a></div></div></section>";
            	 $("#coursediv").html(tem);
             }  
      }); 
  });
</script>


<!--   本次尝试结束     -->
<!-- 2019-7-12 尝试标签传参数 -->
<script type="text/javascript">
  function test(){
       $.ajax({
             type:"GET",
             url:"<%=request.getContextPath()%>/CourseServlet",
             cache: false,
             data:"name=ALL",
             dataType:"json",
             success:function(json){
            	   // alert("hhhhhhhhhhhh");
            	    var tem = "<section class='event style-2'><div class='container'><div class='row'>";
            	 for(var i=0,l=json.length;i<l;i++){
            		  tem+="<div class='col-md-4 col-sm-6 col-xsw-12 item wow fadeIn' data-wow-duration='2s' data-wow-delay='0."+(i+5)+"s' data-wow-offset='0' style='visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;'>";
                      tem+="<div class='img-holder'><figure>";
                      tem+="<a href='${pageContext.request.contextPath}/startClass?courseid="+json[i].courseid+"'>";
                      tem+=" <img src='${pageContext.request.contextPath}"+json[i].photopath+"'>";
                      tem+="</a>"+"</figure>";
                      tem+="<div class='content bg-color-1'><div class='inner-box'><div class='btn-box'><div class='count'>25</div><div class='month'>July</div></div>";
                      tem+="<h4><a href='#'>"+json[i].coursename+"</a></h4>";
                      tem+="<p><span class='fa fa-clock-o'></span> 8.00 am to 12.00 pm</p>";
                      tem+="<p><span class='fa fa-map-marker'></span>"+json[i].courseinfo+"</p>";
                      tem+="</div></div> </div></div>";  
            	      
            	}
            	 tem+="</div><div class='link-btn center'><a href='#' class='theme-btn btn-style-one'>load more</a></div></div></section>";
            	 $("#coursediv").html(tem);
             }  
      }); 
  };
</script>

</head>
<body class="home-one" onload="Quitfun()">
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
        <h2>Course</h2>
        <ul>
            <li><a href="${pageContext.request.contextPath}/coursepage/coursepage2.jsp">Course</a></li>
        </ul>
    </div>
</section>

<div  style="padding-top:60px;">
    <div class="skill_nav">
        <div class="technology">
            <ul>
                <li><a class="active" href="#">全部</a></li>
                <li><a href="#">四年级</a></li>
                <li><a href="#">五年级</a></li>
                <li><a href="#">六年级</a></li>
                <li><a href="#">七年级</a></li>
                <li><a href="#">八年级</a></li>
                <li><a href="#">九年级</a></li>
            </ul>
        </div>
    </div>

    <div class="skill_all">
        <ul>
            <li><a class="active" href="#">不限</a></li>
            <li><a href="#">语文</a></li>
            <li><a href="#">数学</a></li>
            <li><a href="#">科学</a></li>
            <li><a href="#">生物</a></li>
            <li><a href="#">历史</a></li>
            <li><a href="#">地理</a></li>

        </ul>
    </div>
    <hr/>
    <div class="skill_all">
        <ul>
            <li><a class="active" href="#">默认排序</a></li>
            <li><a href="#">最新</a></li>
            <li><a href="#">最好</a></li>
            <li><a href="#">评价</a></li>
        </ul>
    </div>
    
    
    <div class="skill_video" id="coursediv">
    </div>
    
    <!--分页-->
    <div class="page">
        <ul class="pagination">
            <li><a href="#" onclick="alert('当前已是首页')">首页</a></li>
            <li><a href="#" onclick="alert('当前已是首页')">上一页</a></li>
            <li><a class="active" href="#">1</a></li>
            <li><a href="#" onclick="alert('当前已是最后一页')">下一页</a></li>
            <li><a href="#" onclick="alert('当前已是最后一页')">尾页</a></li>
        </ul>
    </div>
</div>
	<section class="footer">

		<div class="footer-bottom">
			<div class="footer-bottom-bg">
				<div class="container">
					<div class="pull-left">
						<figure>
							<a href="#"><img
								src="${pageContext.request.contextPath}/Forum/images/logo/QQ图片20180709201919.png"
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




