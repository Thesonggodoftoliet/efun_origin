<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
	
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPEhtml">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Insert title here</title>
<script type="text/javascript" src= "${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
var date1 = new Date(); //创建对象  
var sss1 = date1.getTime();
	//这里代码多了几行，但是不会延迟显示，速度比较好，格式可以自定义，是理想的时间显示

	function Quitfun() {
		alert("退出");
		var date = new Date(); //创建对象  
		var sss = date.getTime();
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
		var seconds= (sss-sss1)/1000;
		$.post("${pageContext.request.contextPath}/Gettime",{
			

			sss:sss,
			sss1:sss1
		},function(){
			alert("chengong");
		});
		}
</script>


<style>
body {
	padding-top: 40px;
}

#main {
	margin: auto;
	text-align: center;
	width: 300px;
	height: 200px;
	background-color: #0CC;
}

#show_time0, #show_time {
	width: 300px;
	height: 100px;
	color: #FFF;
}
</style>

</head>



<body>

	<div id="main">
		<div id="show_time1"></div>
		<div id="show_time2"></div>
	</div>
	
	
	<a id="out" onclick="Loginfun(show_time1)" href="#">显示时间</a>
	<a id="out" onclick="Quitfun()" href="#">显示时间</a>

</body>



</html>
