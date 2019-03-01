//for regist.ihtml
       window.onload=function(){
    	   var register=document.getElementById("register");
    	   register.onclick=function (){
     
    	    var username=document.getElementById("username");
    	    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
    	    var obj = document.getElementById("useremail");
	       if(username.value==""){
			alert("用户名不能为空");
			return false;
		    }
		    else if(document.getElementById("userpwd").value==""){
			alert("密码不能为空");
			return false;
		    }
		    else if(document.getElementById("userpwd2").value==""){
			alert("请再次输入密码");
			return false;
		    }
		    else if(document.getElementById("userpwd").value!=document.getElementById("userpwd2").value){
			alert("两次密码输入不一致，请再次输入密码");
			return false;
		   }
		    else if(obj.value == ""){
		    	alert("请输入邮箱");
		    	return false;
		    }
		    else if(!reg.test(obj.value)){
		    	alert("请输入正确的邮箱");
		    	return false;
		    }
		    else if( !(document.getElementById("checkbox1").is(':checked')) ){
			alert("请阅读并同意协议后继续");
			return false;
		   }
		else return true;
	    }
       }
       
    
    
