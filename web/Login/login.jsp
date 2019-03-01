<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/Login/css/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/Login/js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>登陆</title>
<script type="text/javascript">
$(function(){
	$("#check").click(function(){
		//alert("success");
		if(document.getElementById("username").value==""){
			alert("用户名不能为空");
			return false;
		}
		else if(document.getElementById("pwd").value==""){
			alert("密码不能为空");
			return false;
		}
		else return alter();
	});
});	
</script>

<script type="text/javascript">

	var tag1 = '${IsPwdright}';
	var tag2 = '${Isfirst}';
	if(tag1==1) {
		alert("密码错误，请重新输入");
	}
	else if(tag2==1){
		alert("请登录后使用本产品");
	}
	else {
	}
</script>
</head>
<body class="login_bj" >
    
<div class="logo"><a href="#"><img src="${pageContext.request.contextPath}/Login/images/logo1.png" style="width: 255px; height:72px;" border="0"></a></div>
<div class="zhuce_body">
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>用户登陆：</h3>   
       	  	  <form action="${pageContext.request.contextPath}/Login" method="post">
                <input name="UserID" type="text" class="kuang_txt" placeholder="账号或邮箱" id="username">  <!-- account为登录账号 -->
                <input name="UserPSW" type="password" class="kuang_txt" placeholder="密码" id="pwd" >       <!-- pwd为登录密码 -->
                <div>
               		<a href="#">忘记密码？</a><input name="" type="checkbox" value="" checked><span>记住我</span> 
                </div>
                <table>
                <tr><td><br></td></tr>
                <tr><td><input name="登录" type="submit" class="btn_zhuce" value="登录" id="check"></td> </tr>
                <tr><td><br></td></tr>
               	<tr><td><a href="${pageContext.request.contextPath}/Regist/regist.jsp"><input name="返回首页" type="button" class="btn_zhuce" value="未有账号请先注册" id="backhome"></a></td></tr>
                </table>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>