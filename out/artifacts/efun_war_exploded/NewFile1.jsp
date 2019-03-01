<%@ page language="java" contentType="text/html;utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;utf-8">
<title>Insert title here</title>
</head>
<body>
	<script language="javascript">
		function closewin() {
			alert("请注意保护眼睛哦！");
			self.opener = null;
			self.close();
		}
		function clock() {
			i = i - 1
			document.title = "本窗口将在" + i + "秒后自动关闭!";
			if (i > 0)
				setTimeout("clock();", 1000);
			else
				closewin();
		}
		var i = 5;
		clock();
	</script>
</body>
</html>