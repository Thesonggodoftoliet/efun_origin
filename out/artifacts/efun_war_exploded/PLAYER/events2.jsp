<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPEhtml>
<!-- @author shangyigeng -->
<html lang="en">
<head>
<meta charset="UTF-8">

<title>易趣学</title>
<link href="<%=request.getContextPath()%>/css/video-js.css"
	rel="stylesheet">
<!-- 如果要支持ie8，引入下面的代码 -->
<script src="<%=request.getContextPath()%>/js/videojs-ie8.min.js"></script>
<style>
#sct1 {
	height: 150px;
}
</style>
<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/common-style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/responsive.css">

<!-- 护眼模式 -->
<script type="text/javascript">
	function closewin() {
		alert("请注意保护眼睛哦！");
		Quitfun();
		i = 120;
		clock();
	}
	function clock() {
		i = i - 1
		if (i > 0)
			setTimeout("clock();", 1000);
		else
			closewin();
	}
	var i = 120;
	clock();
</script>

<!-- 上传时间 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	var date1 = new Date(); //创建对象  
	var sss1 = date1.getTime();
	//这里代码多了几行，但是不会延迟显示，速度比较好，格式可以自定义，是理想的时间显示

	function Quitfun() {
		var date = new Date(); //创建对象  
		var sss = date.getTime();
		$.post("${pageContext.request.contextPath}/Gettime", {
			action : "study",
			sss : sss,
			sss1 : sss1},
			function(){
		});
	}
</script>

<script>
var cur = "";
var num = 1;
var coursename=${Course.courseid}; // 课程页面跳转过来的时候应该获取到的东西
var numMax = 0;
function getmax(){
	var numString = (num).toString();
	$.ajax({
          type:"GET",
          url:"<%=request.getContextPath()%>/getHomeworkMax",
          cache: false,
          data: {coursename:coursename},
          dataType:"json",
          success:function(json){
        	  numMax=json[0];
         }  
   });  	
};

function test(){
	var numString = (num).toString();
    $.ajax({
          type:"GET",
          url:"<%=request.getContextPath()%>/homework",
          cache: false,
          data: {coursename:coursename,numString:numString},
          dataType:"json",
          success:function(json){
        	   var tem="";
        	  if(num>numMax)
        	  {
        		  tem+="<p></p>";
        		  tem+="<p>恭喜你完成所有题目！！错题可以前往个人家园查看哦～</p>";
        		 $("#test_paper").html(tem);
              	 
              	 $("#next_homework").remove();
              	 
        	  }
        	  else
        	 {
        		   
             	   for(var i=0,l=json.length;i<l;i++){
             		cur=json[i].homeworkanswer;
             		tem+=json[i].homeworkdetails;
                    tem+="<p></p>";
                    
             		tem+="<input type='radio' id='aanswer' name='answer' onchange='getAnswer();' value='"+json[i].aanswer+"'>"+json[i].aanswer;
             		tem+="<input type='radio' id='banswer' name='answer' onchange='getAnswer();' value='"+json[i].banswer+"'>"+json[i].banswer;
             		tem+="<input type='radio' id='canswer' name='answer' onchange='getAnswer();' value='"+json[i].canswer+"'>"+json[i].canswer;
             		tem+="<input type='radio' id='danswer' name='answer' onchange='getAnswer();' value='"+json[i].danswer+"'>"+json[i].danswer;
             	      
        	      }
             	  $("#test_paper").html(tem);
              	  $("#next_homework").text("下一题");
         	
         	 }
         	
         	 num++;
          }  
   }); 
}

 function getAnswer(){
	 var ans=document.getElementsByName("answer");
	 var strAns;
	 var numString = (num-1).toString();
	   for(var i=0;i<ans.length;i++)
	   {
		
	     if(ans.item(i).checked) 
	     {
	    	 document.getElementById("aanswer").disabled=true;
	    	 document.getElementById("banswer").disabled=true;
	    	 document.getElementById("canswer").disabled=true;
	    	 document.getElementById("danswer").disabled=true;
	    	strAns = ans.item(i).getAttribute("value"); 
	    	if(strAns==cur)  alert( "你真棒～ 你怎么这么厉害呢！~" );  
	    	else
	    	{
	    		alert("答案是"+cur+"哦~ 下次再接再厉！！");
	    		
	    		$.ajax({
	    	          type:"GET",
	    	          url:"<%=request.getContextPath()%>/question",
	    	          cache: false,
	    	          data: {coursename:coursename,numString:numString,index:i},
	    	          success:function(){
	    	         }  
	    	   });     
	    	}
	    	break;
	     }
	     else
	     {
	       continue;
	     }
	  }  	
	
};
</script>
</head>

<body class="home-one" onbeforeunload="Quitfun()" onload="getmax()">
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
			<h2>Course</h2>
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/coursepage/coursepage2.jsp">Course</a></li>
				<li><a
					href="${pageContext.request.contextPath}/PLAYER/events.jsp">Course
						Details</a></li>
			</ul>
		</div>
	</section>

	<div class="sidebar-page product-details">
		<div class="container">

			<div class="row clearfix">

				<!--Content Side-->
				<div class="col-md-8 col-sm-7 col-xs-12 post-column">
					<section class="post-container">

						<!--Blog Post-->
						<div class="blog-post wow fadeInLeft animated animated"
							data-wow-delay="0ms" data-wow-duration="1500ms"
							style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInLeft;">
							<article class="single-column">
								<div class="img-box-s2">
									<div class="img-holder">
										<video id="my-video" width="770px" height="347.55px" controls
											preload="auto" src="${Course.videopath}"
											onmouseover="this.play()" onMouseOut="this.pause()">
										</video>
										<script src="<%=request.getContextPath()%>/PLAYER/js/video.js"></script>
									</div>
									<div class="outer-box">
										<div class="content">
											<textarea name="screen" id="sct1" cols="80" style="height:20px;">${Course.courseinfo}</textarea>
											<section class="shop">
    <div class="container" >
        <div class="section-title center pb-60" style="margin-right:45%;">
            <h2>测验  <span>中心</span></h2>
        </div>
									      
<div class="homeworkdiv">  
 
                  <div id="test_paper" class="homeworkdiv" style="margin-left:15%;"></div>
            </div>
<div style="margin-left:20%;">
                    <button type="button" class="thm-btn update-cart btn-style-one"  id="next_homework" onclick="test()">开始了</button> &nbsp;
</div>

        <div class="team-list row" id="wrong_book">
        </div>

    </div>
</section>
										</div>

										
										    <div class="page" style="margin-left:40%" >
       
 
        
    </div>

									</div>
								</div>
							</article>
						</div>


					</section>


				</div>
				<!--Content Side-->

				<div class="col-md-4 col-sm-5 col-xs-12">
					<aside class="sidebar">

						<!-- Popular Categories -->
						<div class="sidebar-title">
							<h2>
								Course<span>Details</span>
							</h2>
						</div>

						<ul class="list catagories product-info">
							<li><i class="icon-reading"></i><span>课程名称</span>
								${Course.coursename}</li>
							<li><i class="icon-clock"></i><span>上传时间</span>${Course.updatetime}</li>
							<li><i class="icon-coin-icon"></i><span>年级</span>${Course.labelage}</li>
							<li><i class="icon-reading"></i><span>所属科目</span>
								${Course.labelsubject}</li>
						</ul>





					</aside>
				</div>
			</div>


		</div>
	</div>







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
	<script src="${pageContext.request.contextPath}/assets/SmoothScroll.js"></script>

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
	<script src="${pageContext.request.contextPath}/assets/scrollbar.js"></script>

	<!--<script src="js/default-map-script.js"></script>-->
	<script src="${pageContext.request.contextPath}/js/script.js"></script>








</body>
</html>

