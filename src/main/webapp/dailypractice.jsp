<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>每日一练</title>
<style>

html {
	box-sizing: border-box;
	font: 18px PT Mono;
	background: antiquewhite;
}

*, *::before, *::after {
	box-sizing: inherit;
}

body {
	display: flex;
	align-items: left;
	justify-content: center;
	flex-direction: column;
	height: 100vh;
}

.d{
	width: 700px;
	margin: 0 auto;
}

.d1{
	text-align: center;
	margin-bottom: 40px; 
}

.title{
	margin: 0px;
    padding:0px;
    background-color:#E7EAEB;
    font-family:"微软雅黑","黑体","宋体";
    font-size:30px;
    height:36px;
}

.box {
	width: 300px;
	min-width: 150px;
	display: block;
	height: 50px;
	position: relative;
	border-radius: 5px;
	background: linear-gradient(to right, #abbd73 35%, #d6e2ad 100%);
	margin-left: 200px;
	margin-bottom: 40px;
	padding: 15px 25px 0 40px;
	color: darkslategray;
	box-shadow: 1px 2px 1px -1px #777;
	transition: background 200ms ease-in-out;
	text-align: right;
}

.box a {
	color: #fff;
	text-decoration: none;
}

.shadow {
	position: relative;
}

.shadow:before {
	z-index: -1;
	position: absolute;
	content: "";
	bottom: 13px;
	right: 7px;
	width: 75%;
	top: 0;
	box-shadow: 0 15px 10px #777;
	-webkit-transform: rotate(4deg);
	transform: rotate(4deg);
	transition: all 150ms ease-in-out;
}

.box:hover {
	background: linear-gradient(to right, #abbd73 0%, #abbd73 100%);
}

.shadow:hover::before {
	-webkit-transform: rotate(0deg);
	transform: rotate(0deg);
	bottom: 20px;
	z-index: -10;
}

.circle {
	position: absolute;
	top: 14px;
	left: 15px;
	border-radius: 50%;
	box-shadow: inset 1px 1px 1px 0px rgba(0, 0, 0, 0.5), inset 0 0 0 25px
		antiquewhite;
	width: 20px;
	height: 20px;
	display: inline-block;
	text-align: right;
	padding: 0 20px 0 0;
}
</style>
</head>
<body>
	<div class="d">
		<div class="d1">
			<label class="title">请选择题型</label>
		</div>
		<div class="box shadow">
			<a href="#">1. 选择题(2019-10-20更新)</a>
			<div class="circle"></div>
		</div>
		<div class="box shadow">
			<a href="http://www.sina.com">2. 判断题(2019-10-20更新)</a>
			<div class="circle"></div>
		</div>
		<div class="box shadow">
			<a href="http://www.baidu.com">3. 填空题(2019-10-20更新)</a>
			<div class="circle"></div>
		</div>
	</div>
</body>
</html>