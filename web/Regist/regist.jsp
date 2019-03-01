<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPEhtml>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/Regist/css/regist.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/Login/css/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/Regist/js/regist.js"></script>

<script type="text/javascript">
	var tag1 = '${IsIdexist}';
	if( tag1 ==1 ) alert("请注册后再登陆");
</script>
<title>Insert title here</title>
</head>
<body class="login_bj" >
<div class="zhuce_body" style="position:absolute; z-index:-1; width:100%; height:100%; top:0px; left:0px "><img src="${pageContext.request.contextPath}/Login/images/logo1.png" style="width: 255px; height:72px;" border="0">
	
    <div class="zhuce_kong">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>欢迎注册</h3>
       	  	  <form action="${pageContext.request.contextPath}/Register" method="get">
                <input id="username" name="username" type="text" class="kuang_txt name" placeholder="用户名">
                <input id="userpwd"  name="pwd" type="password" class="kuang_txt possword" placeholder="密码">
                <input id="userpwd2"  name="userpwd2" type="password" class="kuang_txt possword2" placeholder="确认密码">
                <input id="useremail" name="email" type="text" class="kuang_txt email" placeholder="邮箱"><br>
              
                <input id="identity" value="0"  name="userlable"  type="radio"  class="kuang_txt_identity " />学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="identity"  value="1" name="userlable" type="radio" class="kuang_txt_identity "  />家长   <br>
            
                <div>
               		<input   id="checkbox1"  name="agree" type="checkbox" value=""><span>已阅读并同意<a href="#" target="_blank"><span class="lan">《EF-Study使用协议》</span></a></span>
                </div>
                <input  id="register" value="注册"  name="register" type="submit" class="btn_zhuce" onclick="check()">
                
                
                </form>
              
            </div>
        	
        </div>
        
    </div>
</div>>
<div style="text-align:center;">

</div>

</body>
</html>