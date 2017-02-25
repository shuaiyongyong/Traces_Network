<%@  page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/Traces_Network/">
<meta charset="UTF-8">
<title>用户登陆</title>
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link type="text/css"  rel="stylesheet"  href="css/userlogin.css">
</head>

<body>
	<!-- 清空session -->
	<%session.removeAttribute("loginUser");%>
	<div  id="loginDiv" >
		<span id="error">${sessionScope.errorMsg}&nbsp;</span><c:remove var="errorMsg"/>
		<form action="user/numLogin" id="loginForm" class="loginForm1" method="post">
			<input name="User_UserName"  id="uname" required="required" placeholder="请输入用户名" /><br><br>
			<input name="User_UserPassword"  id="upwd" type="password" required="required" placeholder="请输入密码"  /><br><br>
			<input type="submit"  value="登录" style="width: 80px;"  />
			<a href="javascript:void(0)" onclick="changeTelLogin()" id="rem">忘记密码?</a><br>
		</form>	
		<form action="user/checkCode" id="loginForm" class="loginForm2" method="post">
			<span id="error">${sessionScope.errorMsg}</span><c:remove var="errorMsg"/>
			<input name="utel"  id="utel" required="required" placeholder="请输入电话号码" style="width: 280px;"/>
			<br><br>
			<input name="text" id="text" type="text" placeholder="请输入验证码" style="width: 160px;" required="required"/>
			<a id="send" style="margin-left: 30px;" onClick="sendCode()" >获取验证码</a><br><br>
			<input type="submit" value="登录" style="width: 80px; margin-top: 20px;" />
			<a style="margin-left: 100px;margin-top: 20px;" href="javascript:void(0)" onclick="changeNumLogin()">账号密码登录</a>
		</form>	
	</div>
		<!-- 引入easyui框架的js -->
	<script type="text/javascript"  src="easyui/jquery.min.js"></script>
	<script type="text/javascript"  src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript"  src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/userlogin.js"></script>
</body>

</html>
