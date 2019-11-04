<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="网站关键词">
<meta name="Description" content="网站介绍">
<link rel="stylesheet" href="./css/stu1.css">
<link rel="stylesheet" href="./css/stu3.css">
<link rel="stylesheet" href="./css/stu2.css">
</head>
<body>
	<div id="ajax-hook"></div>
	<div class="wrap">
		<div class="wpn">
			<div class="form-data pos">

				<a href=""><img src="./images/logo.png" class="head-logo"></a>
				<div class="change-login">
					<p class="account_number on">学生登录</p>
					<p class="message">老师登陆</p>
				</div>



				<div class="form1">
					<form action="students/login" method="post">
						<p class="p-input pos">
							<label for="num">用户名</label> <input type="text" id="num"
								name="stuName"> <span class="tel-warn num-err hide"><em>账号或密码错误，请重新输入</em><i
								class="icon-warn"></i></span>
						</p>
						<p class="p-input pos">
							<label for="pass">请输入密码</label> <input type="password"
								style="display: none" /> <input type="password" id="pass"
								autocomplete="new-password" name="stuPasword"> <span
								class="tel-warn pass-err hide"><em>账号或密码错误，请重新输入</em><i
								class="icon-warn"></i></span>
						</p>
						<p class="p-input pos code hide">
							<label for="veri">请输入验证码</label> <input type="text" id="veri">
							<img src=""> <span class="tel-warn img-err hide"><em>账号或密码错误，请重新输入</em><i
								class="icon-warn"></i></span> <a href="javascript:;">换一换</a>
						</p>
						<div class="r-forget cl">
							<a href="./getpass.html" class="y">忘记密码</a>
						</div>
						<button class="lang-btn off log-btn">登录</button>
						<!-- <div class="third-party">
							<a href="#" class="log-qq icon-qq-round"></a> <a href="#"
								class="log-qq icon-weixin"></a> <a href="#"
								class="log-qq icon-sina1"></a>
						</div> -->
						<p class="right">Powered by © 2019</p>
					</form>
				</div>



				<div class="form2 hide">
					<form action="teachers/login2" method="post">
						<p class="p-input pos">
							<label for="num">用户名</label><input type="text" id="num"
								name="teacherName">
							<span class="tel-warn num-err hide"><em>账号或密码错误，请重新输入</em><i
								class="icon-warn"></i></span>
						</p>
						<p class="p-input pos">
							<label for="pass">请输入密码</label> <input type="password"
								style="display: none" /> <input type="password" id="pass"
								autocomplete="new-password" name="teacherPassword"> <span
								class="tel-warn pass-err hide"><em>账号或密码错误，请重新输入</em><i
								class="icon-warn"></i></span>
						</p>
						<p class="p-input pos code hide">
							<label for="veri">请输入验证码</label> <input type="text" id="veri">
							<img src=""> <span class="tel-warn img-err hide"><em>账号或密码错误，请重新输入</em><i
								class="icon-warn"></i></span>
							<!-- <a href="javascript:;">换一换</a> -->
						</p>
						<div class="r-forget cl">
							<a href="./getpass.html" class="y">忘记密码</a>
						</div>
						<button class="lang-btn off log-btn">登录</button>
						<!-- <div class="third-party">
							<a href="#" class="log-qq icon-qq-round"></a> <a href="#"
								class="log-qq icon-weixin"></a> <a href="#"
								class="log-qq icon-sina1"></a>
						</div> -->
						<p class="right">Powered by © 2019</p>
					</form>
				</div>

			</div>
		</div>
	</div>
	<script src="./js/jquery.js"></script>
	<script src="./js/agree.js"></script>
	<script src="./js/login.js"></script>
	<div style="text-align: center;"></div>
</body>
</html>